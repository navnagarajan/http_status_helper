import 'package:flutter_test/flutter_test.dart';
import 'package:http_status_helper/src/http_response_manager.dart';
import 'package:http_status_helper/src/http_status_code.dart';

void main() {
  test('adds one to input values', () {
    final t1 = Continue(message: "This is a parameter message");
    expect(t1.statusCode, HttpStatusCode.k100Continue);
    expect(t1.message, "This is a parameter message");

    final t2 = Continue();
    expect(t2.statusCode, HttpStatusCode.k100Continue);
    expect(t2.message, "Continue");

    HttpResponseManager().replaceMessage(
      statusCode: HttpStatusCode.k100Continue,
      message: "This was updated message for continue",
    );

    final t3 = Continue();
    expect(t3.statusCode, HttpStatusCode.k100Continue);
    expect(t3.message, "This was updated message for continue");

    final t4 =
        HttpResponseManager().getHttpStatus(statusCode: 200, message: 'Okay');
    expect(t4.statusCode, HttpStatusCode.k200OK);
    expect(t4.message, "Okay");
  });
}
