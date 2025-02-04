enum Flavor {
  prd,
  dev,
}

class FConfig {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.prd:
        return 'https://dms-prod-api.khmerbeverages.com';
      case Flavor.dev:
        return 'https://dms-dev-api.khmerbeverages.com';
      default:
        return 'NOT SET';
    }
  }

  static String get storeApiUrl {
    switch (appFlavor) {
      case Flavor.prd:
        return 'https://appapi.chipmong.com:8181/api';
      case Flavor.dev:
        return 'https://uat.chipmong.com:8787/appstoreapi/api';
      default:
        return 'NOT SET';
    }
  }

  static String get storeUrl {
    switch (appFlavor) {
      case Flavor.prd:
        return 'https://app.chipmong.com:8080/DetailStoreOutlet';
      case Flavor.dev:
        return 'https://uat.chipmong.com:8787/appstoreweb/DetailStoreOutlet';
      default:
        return 'NOT SET';
    }
  }

  static String get clientId {
    switch (appFlavor) {
      case Flavor.prd:
        return '987654321';
      case Flavor.dev:
        return '987654321';
      default:
        return 'NOT SET';
    }
  }

  static String get tokenToGetToken {
    switch (appFlavor) {
      case Flavor.prd:
        return '74dd9a45b254b2a81c706f395b2e843182e43715';
      case Flavor.dev:
        return '74dd9a45b254b2a81c706f395b2e843182e43715';
      default:
        return 'NOT SET';
    }
  }

  static String get clientSecret {
    switch (appFlavor) {
      case Flavor.prd:
        return '123456789';
      case Flavor.dev:
        return '123456789';
      default:
        return 'NOT SET';
    }
  }

  static String get tokenToGetPublic {
    switch (appFlavor) {
      case Flavor.prd:
        return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRJZCI6IjEyMzQ1Njc4OTAiLCJwbGF0Zm9ybSI6IlNBUCIsImlwIjoiMC4wLjAuMCIsInRpbWVzdGFtcCI6MTcxMTQ0NjQ3ODc0MCwiaWF0IjoxNzExNDQ2NDc4fQ._JFElYoQlh7-B9XkhVl3QqM1TL6Cnc0xj5c2smVwQgA';
      case Flavor.dev:
        return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRJZCI6IjEyMzQ1Njc4OTAiLCJwbGF0Zm9ybSI6IlNBUCIsImlwIjoiMC4wLjAuMCIsInRpbWVzdGFtcCI6MTcwODkzNjE3MjY0NiwiaWF0IjoxNzA4OTM2MTcyfQ.HKzIkvpqyVMPgA8yD0t-Z6pZaTeomZsd2CcenONdZp0';
      default:
        return 'NOT SET';
    }
  }
}
