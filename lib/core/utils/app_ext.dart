import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:shimmer/shimmer.dart';

import '../../flavors.dart';
import '../network_config/typedefs.dart';
import 'app_log.dart';

///#region EmptyString Extension
/// Extension on nullable String to handle empty strings and URL formatting.
extension EmptyString on String? {
  String get ets {
    return this ?? "";
  }

  String? toImageUrl() {
    return this == null || (this?.isEmpty ?? true)
        ? null
        : "${FConfig.baseUrl}/${(this?.replaceAll("\\", "/"))}";
  }
}

///#endregion EmptyString Extension

///#region ShimmerWidget Extension
/// Extension on Widget to apply a shimmer effect.
extension ShimmerWidget on Widget {
  Widget get toShimmer {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0.d),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: this,
      ),
    );
  }
}

///#endregion ShimmerWidget Extension

///#region ImagePngToUint8List Extension
/// Extension on String to convert PNG image asset paths to Uint8List.
extension ImagePngToUint8List on String {
  Future<Uint8List> get toUint8List async {
    ByteData data = await rootBundle.load(this);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: 100);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }
}

///#endregion

///#region ModelToJson Extension
/// Extension on dynamic types to convert objects to JSON.
extension ModelToJson on dynamic {
  JSON get toJSON {
    return const JsonDecoder().convert(jsonEncode(this));
  }
}

///#endregion

///#region IntToSeparateCommaExt Extension
/// Extension on int to add comma separators and convert to boolean.
extension IntToSeparateCommaExt on int {
  String get separateComma {
    return NumberFormat('#,##,000').format(this);
  }

  bool get boolFromInt {
    return this == 1;
  }
}

///#endregion

///#region ScreenUtil Extension
/// Extension on double for screen size calculations.
extension ScreenUtil on double {
  double get d {
    var deviceHeight = Get.height;
    var deviceWidth = Get.width;
    var deviceDiagonal = sqrt(pow(deviceHeight, 2) + pow(deviceWidth, 2));
    return deviceDiagonal * (this / 1000);
  }
}

///#endregion

///#region GetWidth Extension
/// Extension on Widget to get the rendered width.
extension GetWidth on Widget {
  double getWidth(BuildContext context) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    return renderBox.size.width;
  }
}

///#endregion

///#region DateTimeExtension Extension
/// Extension on nullable DateTime for various date operations.
extension DateTimeExtension on DateTime? {
  DateTime? setTimeOfDay(TimeOfDay time) {
    if (this == null) return null;
    return DateTime(this!.year, this!.month, this!.day, time.hour, time.minute);
  }

  DateTime? setTime({
    int hours = 0,
    int minutes = 0,
    int seconds = 0,
    int milliSeconds = 0,
    int microSeconds = 0,
  }) {
    if (this == null) return null;
    return DateTime(this!.year, this!.month, this!.day, hours, minutes, seconds,
        milliSeconds, microSeconds);
  }

  DateTime? clearTime() {
    if (this == null) return null;
    return DateTime(this!.year, this!.month, this!.day, 0, 0, 0, 0, 0);
  }

  String get formatToString {
    return DateFormat("dd, MMMM, yyyy").format(this!.toLocal());
  }

  bool get isBirthday {
    if (this?.day == DateTime.now().day &&
        this?.month == DateTime.now().month) {
      return true;
    }
    return false;
  }

  String get formatDateMallToString {
    return DateFormat("dd/MM/yyyy").format(this!);
  }

  String get formatTimeToString {
    var thisStr = this.toString().endsWith('Z') ? this.toString() : "${this}Z";
    var thisDate = DateTime.parse(thisStr);
    return DateFormat("d, MMMM, yyyy ' | ' h:mm a").format(thisDate.toLocal());
  }

  String get formatTimeMallToString {
    var thisStr = this.toString().endsWith('Z') ? this.toString() : "${this}Z";
    var thisDate = DateTime.parse(thisStr);
    return DateFormat("MMM dd, yyyy ' - ' h:mm a").format(thisDate.toLocal());
  }

  String get formatMallToString {
    var thisStr = this.toString().endsWith('Z') ? this.toString() : "${this}Z";
    var thisDate = DateTime.parse(thisStr);
    return DateFormat("MMM dd, yyyy").format(thisDate.toLocal());
  }
}

///#endregion

///#region ColorExtension Extension
/// Extension on Color for color manipulation.
extension ColorExtension on Color {
  Color darken([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = 1 - percent / 100;
    return Color.fromARGB(
      alpha,
      (red * value).round(),
      (green * value).round(),
      (blue * value).round(),
    );
  }

  Color lighten([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = percent / 100;
    return Color.fromARGB(
      alpha,
      (red + ((255 - red) * value)).round(),
      (green + ((255 - green) * value)).round(),
      (blue + ((255 - blue) * value)).round(),
    );
  }

  Color avg(Color other) {
    final red = (this.red + other.red) ~/ 2;
    final green = (this.green + other.green) ~/ 2;
    final blue = (this.blue + other.blue) ~/ 2;
    final alpha = (this.alpha + other.alpha) ~/ 2;
    return Color.fromARGB(alpha, red, green, blue);
  }
}

///#endregion

///#region SumExtension Extension
/// Extension on List to calculate the sum of a property.
extension SumExtension<T> on List<T> {
  double sum<N extends num>(N? Function(T element) selector) {
    return fold<N>(
      (0.0 as N),
      (previousValue, element) =>
          previousValue + (selector(element) ?? (0.0 as N)) as N,
    ).toDouble();
  }
}

///#endregion

///#region IsolateFunction Extension
/// Extension on Function to run in an isolate.
extension IsolateFunction on Function {
  Future<dynamic> runAsIsolate(List<dynamic> args) async {
    final receivePort = ReceivePort();
    final isolate =
        await Isolate.spawn(_isolateEntryPoint, receivePort.sendPort);

    final sendPort = await receivePort.first as SendPort;
    final resultPort = ReceivePort();
    sendPort.send([this, args, resultPort.sendPort]);

    final result = await resultPort.first;
    isolate.kill();
    return result;
  }

  static void _isolateEntryPoint(SendPort sendPort) {
    final port = ReceivePort();
    sendPort.send(port.sendPort);

    port.listen((message) {
      final function = message[0] as Function;
      final args = message[1] as List;
      final resultPort = message[2] as SendPort;

      final result = Function.apply(function, args);
      resultPort.send(result);
    });
  }
}

///#endregion

///#region ImageBase64Extensions Extension
/// Extension on File to convert an image file to a Base64 string.
extension ImageBase64Extensions on File {
  Future<String> imageToBase64() async {
    final bytes = await this.readAsBytes();
    return base64Encode(bytes);
  }
}

///#endregion

///#region Base64ImageExtensions Extension
/// Extension on String to convert Base64 string to Image widget.
extension Base64ImageExtensions on String {
  Image base64ToImage() {
    return Image.memory(
      base64Decode(this),
      fit: BoxFit.cover,
    );
  }
}

///#endregion

///#region Base64FileExtensions Extension
/// Extension on String to convert Base64 string to a File.
extension Base64FileExtensions on String {
  Future<File> base64ToFile() async {
    // Extract MIME type and extension if available
    final regex = RegExp(r'data:image/(\w+);base64,');
    String extension = 'jpg'; // Default extension if not found

    String base64String = this;
    if (regex.hasMatch(this)) {
      final match = regex.firstMatch(this);
      extension = match?.group(1) ?? 'jpg';
      base64String = this.split(',').last; // Strip MIME info if present
    }

    // Decode the Base64 string to bytes
    final bytes = base64Decode(base64String);

    // Generate a unique file name
    final directory = await getTemporaryDirectory();
    final fileName =
        'image_${DateTime.now().millisecondsSinceEpoch}_${Random().nextInt(10000)}.$extension';
    final file = File(path.join(directory.path, fileName));

    // Write the bytes to the file
    await file.writeAsBytes(bytes);

    xPrettyLog(message: file.path);
    return file;
  }
}

///#endregion Base64FileExtensions Extension

///#region Base64ToFileSVG Extension
/// Extension on String to convert a Base64 string to an SVG [File].
extension Base64ToFileSVG on String {
  /// Converts a Base64-encoded SVG string to a [File].
  ///
  /// The input string must be in the format `data:image/svg+xml;base64,...`.
  Future<File> base64ToFileSVG() async {
    // Ensure the string starts with the SVG MIME type
    final svgRegex =
        RegExp(r'data:image/svg\+xml;base64,', caseSensitive: false);

    // Check if the string matches the SVG format
    if (!svgRegex.hasMatch(this)) {
      throw FormatException(
          "Provided string is not a valid SVG Base64 encoded string.");
    }

    // Remove the MIME info to get the actual Base64 string
    String base64String = this.split(',').last;

    // Decode the Base64 string to bytes
    final bytes = base64Decode(base64String);

    // Get the temporary directory and create a unique file name
    final directory = await getTemporaryDirectory();
    final fileName = 'image_${DateTime.now().millisecondsSinceEpoch}.svg';
    final file = File(path.join(directory.path, fileName));

    // Write the bytes to the file
    await file.writeAsBytes(bytes);

    xPrettyLog(message: file.path);
    return file;
  }
}

///#endregion

///#region Asset to File Extension
/// Extension to convert asset paths to files.
extension AssetToFileExtensions on String {
  /// Converts the asset at the specified path to a File.
  ///
  /// This method loads the asset as bytes and saves it to a file
  /// in the specified directory. If no directory is provided,
  /// it defaults to the temporary directory.
  ///
  /// [fileName] is the name of the file to be created.
  /// [directory] is the optional Directory where the file will be saved.
  /// If not provided, the file will be saved in the temporary directory.
  Future<File> assetToFile(String fileName, {Directory? directory}) async {
    // Load asset as bytes
    final byteData = await rootBundle.load(this);
    final bytes = byteData.buffer.asUint8List();

    // If no directory is specified, use the temporary directory
    directory ??= await getTemporaryDirectory();

    // Create a file in the specified directory
    final file = File('${directory.path}/$fileName');

    // Write the bytes to the file
    await file.writeAsBytes(bytes);

    return file;
  }
}

///#endregion Asset to File Extension

///#region Asset to Base64 Extension
/// Extension to convert an asset path to a Base64-encoded string.
extension AssetToBase64Extension on String {
  /// Loads the asset at the specified path and encodes it as a Base64 string.
  ///
  /// This is useful for converting images or other binary files to Base64 format
  /// for embedding, storage, or sending over a network.
  ///
  /// Returns a Base64-encoded [String] of the asset data.
  Future<String> assetToBase64() async {
    // Load asset as bytes
    final byteData = await rootBundle.load(this);
    final bytes = byteData.buffer.asUint8List();

    // Encode bytes as Base64
    final base64String = base64Encode(bytes);

    return base64String;
  }
}

///#endregion Asset to Base64 Extension
///

/// ########################################################
/// #region Hex Color Extension
/// ########################################################

/// An extension on [String] to convert hex color codes to [Color] objects.
extension HexColorExtension on String {
  /// Converts a hex color string to a [Color] object.
  ///
  /// The string can be in various formats:
  /// - Short form: `"#fff"` (which expands to `"#ffffff"`)
  /// - Full form: `"#ffffff"`
  /// - Without the hash prefix: `"fff"` or `"ffffff"`
  ///
  /// Additionally, if the alpha channel is not provided, it defaults to `FF` (fully opaque).
  ///
  /// ### Example:
  /// ```dart
  /// "#fff".toColor();        // Returns Color(0xFFFFFFFF)
  /// "#abcdef".toColor();     // Returns Color(0xFFABCDEF)
  /// "123456".toColor();      // Returns Color(0xFF123456)
  /// ```
  ///
  /// Throws a [FormatException] if the string is not a valid hex color.
  Color toColor() {
    // #region Removing the hash sign if present
    String hexColor = replaceAll('#', '');
    // #endregion

    // #region Handle short form (#fff) by expanding it to #ffffff
    if (hexColor.length == 3) {
      hexColor = hexColor.split('').map((char) => char * 2).join();
    }
    // #endregion

    // #region Add alpha if not present (default to fully opaque)
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    // #endregion

    // Convert the hex string to a Color object
    return Color(int.parse(hexColor, radix: 16));
  }
}

/// ########################################################
/// #endregion
/// ########################################################

/// ########################################################
/// #region Color to Hex Extension
/// ########################################################

/// An extension on the [Color] class to convert a [Color] object to a hex color string.
extension ColorToHex on Color {
  /// Converts the [Color] object to a hex string.
  ///
  /// This method can return the hex string with or without the alpha channel:
  /// - If [includeAlpha] is set to `true` (default), the output will include the alpha channel.
  /// - If [includeAlpha] is set to `false`, the output will exclude the alpha channel.
  ///
  /// ### Example Usage:
  /// ```dart
  /// Color myColor = Color(0xffE54686);
  ///
  /// print(myColor.toHex()); // Output: "#ffe54686"
  /// print(myColor.toHex(includeAlpha: false)); // Output: "#e54686"
  /// ```
  ///
  /// ### Parameters:
  /// - [includeAlpha]: A boolean flag to include the alpha channel in the output. Default is `true`.
  ///
  /// ### Returns:
  /// - A [String] representing the hex color code.
  String toHex({bool includeAlpha = true}) {
    // #region Convert color to hex string
    return includeAlpha
        ? '#${value.toRadixString(16).padLeft(8, '0')}'
        : '#${value.toRadixString(16).substring(2).padLeft(6, '0')}';
    // #endregion
  }
}

/// ########################################################
/// #endregion
/// ########################################################
