class RequestResult<ResultType> {
  final bool success;
  final String? message;
  final ResultType? result;

  RequestResult({required this.success, required this.result, this.message});
}