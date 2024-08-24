import 'package:console/console.dart';
import 'package:exception/exception.dart';

final console = Console();

extension AppExceptionPrint on AppException {
  void print() {
    console.error(toString());
  }
}
