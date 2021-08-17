enum Environment { dev, staging, production }

class EnvConfig {
  static const appName = String.fromEnvironment(
    'appName',
    defaultValue: 'Resume Room',
  );

  static const env = String.fromEnvironment(
    'env',
    defaultValue: 'DEV',
  );

  static const baseApiUrl = String.fromEnvironment('apiUrl');

  static Environment environment() {
    switch (env.toUpperCase()) {
      case 'DEV':
        return Environment.dev;
      case 'STAGING':
        return Environment.dev;
      case 'PRODUCTION':
        return Environment.staging;
      default:
        return Environment.dev;
    }
  }
}
