class Failure {
  final String error;
  Failure({required this.error});
}

class ServerError extends Failure {
  ServerError({required super.error});
}
