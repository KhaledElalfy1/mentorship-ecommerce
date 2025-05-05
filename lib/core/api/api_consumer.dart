abstract class ApiConsumer {
  Future<dynamic> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameter,
    bool isFormData = false,
  });
  post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameter,
    bool isFormData = false,
  });
  get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameter,
  });
  patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameter,
    bool isFormData = false,
  });
}
