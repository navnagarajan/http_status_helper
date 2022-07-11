import 'package:http_status_helper/http_status_helper.dart';

class ExampleZero {
  int delete(dynamic payload) => 200;

  void removeTask() {
    // Assume when a api request response received with status code...
    final int statusCode = delete(1);

    // Pass received API response statusCode to the function.
    final response = HttpResponseManager().getHttpStatus(
      statusCode: statusCode,
      message: "Customized message for the response",
    );

    // Display message or perform any action based on the result :)
  }
}

class ExampleOne {
  bool post(dynamic payload) => true;

  HttpStatusCode createTask() {
    final result = post('payload data');
    return result
        ? OK(message: 'Task created successfully')
        : NotModified(message: 'Failed to create task');
  }
}
