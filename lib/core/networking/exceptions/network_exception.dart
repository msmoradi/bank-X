class NetworkException implements Exception {
  final String? _message;
  final String? _prefix;

  NetworkException([this._message, this._prefix]);

  @override
  String toString() {
    return "$_prefix$_message";
  }
}

class ParseDataException extends NetworkException {
  ParseDataException(String url)
      : super("Error during parsing from $url");
}

class BadRequestException extends NetworkException {
  BadRequestException([message]) : super(message, "Invalid Request: ");
}

class RequestErrorException extends NetworkException {
  RequestErrorException([String? message]) : super(message, "");
}