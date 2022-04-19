import 'dart:io' show Platform;

final _config = {
  "development": {"host": "http://172.23.48.1:8080/v0/"},
  "production": {"host": "http://81.70.89.25:8080/v0/"}
};

// ignore: constant_identifier_names

final config = const bool.fromEnvironment("dart.vm.product")
    ? _config["production"]
    : _config["development"];
