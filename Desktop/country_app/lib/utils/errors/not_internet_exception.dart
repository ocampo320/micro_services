

import 'app_exception.dart';

class NotInternetException extends AppException {
  NotInternetException()
      : super(
          code: 'notInternet.error',
          title: 'notInternetTitle',
          description: 'notInternetDescription',
        );

  @override
  String toString() {
    var message = super.toString();
    return '[Not internet] $message';
  }
}
