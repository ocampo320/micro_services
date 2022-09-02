class ApiException implements Exception {
  final int? statusCode;
  final dynamic response;

  ApiException(
    this.statusCode,
    this.response,
  );

  @override
  String toString() {
    return '[Api exception] Code: api.error StatusCode: $statusCode';
  }
}
