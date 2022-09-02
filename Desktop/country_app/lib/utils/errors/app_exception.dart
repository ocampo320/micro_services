class AppException implements Exception {
  final String? code;
  final String? title;
  final String? description;

  AppException({
    this.code = 'error',
    this.title,
    this.description,
  });

  @override
  String toString() {
    var message = '';
    if (code != null) {
      message += 'Code: $code ';
    }
    if (title != null) {
      message += 'Title: $title ';
    }
    if (description != null) {
      message += 'Description: $description ';
    }
    return message;
  }
}
