import 'package:http_status_helper/src/http_status_code.dart';

/// Always Singleton
class HttpResponseManager {
  HttpResponseManager._internal();

  static final instance = HttpResponseManager._internal();

  /// Always Singleton
  factory HttpResponseManager() => instance;

  final Map<int, String> _messages = {
    HttpStatusCode.k100Continue: "Continue",
    HttpStatusCode.k412PreconditionFailed: "Precondition Failed",
    HttpStatusCode.k413RequestEntityTooLarge:
        "Request Entity Too Large or Payload Too Large",
    HttpStatusCode.k414RequestUriTooLong:
        "Request Uri Too Long or Uri Too Long",
    HttpStatusCode.k415UnsupportedMediaType: "Unsupported Media Type",
    HttpStatusCode.k416RequestedRangeNotSatisfiable:
        "Requested Range Not Satisfiable or Range Not Satisfiable",
    HttpStatusCode.k417ExpectationFailed: "Expectation Failed",
    HttpStatusCode.k418ImATeapot: "Im A teapot",
    HttpStatusCode.k419AuthenticationTimeout: "Authentication Timeout",
    HttpStatusCode.k421MisdirectedRequest: "Misdirected Request",
    HttpStatusCode.k422UnProcessableEntity: "Un Processable Entity",
    HttpStatusCode.k423Locked: "Locked",
    HttpStatusCode.k424FailedDependency: "Failed Dependency",
    HttpStatusCode.k426UpgradeRequired: "Upgrade Required",
    HttpStatusCode.k428PreconditionRequired: "Precondition Required",
    HttpStatusCode.k429TooManyRequests: "Too Many Requests",
    HttpStatusCode.k431RequestHeaderFieldsTooLarge:
        "Request Header Fields Too Large",
    HttpStatusCode.k451UnavailableForLegalReasons:
        "Unavailable For Legal Reasons",
    HttpStatusCode.k500InternalServerError: "Internal Server Error",
    HttpStatusCode.k501NotImplemented: "Not Implemented",
    HttpStatusCode.k502BadGateway: "Bad Gateway",
    HttpStatusCode.k503ServiceUnavailable: "Service Unavailable",
    HttpStatusCode.k504GatewayTimeout: "Gateway Timeout",
    HttpStatusCode.k505HttpVersionNotSupported: "Http Version Not Supported",
    HttpStatusCode.k506VariantAlsoNegotiates: "Variant Also Negotiates",
    HttpStatusCode.k507InsufficientStorage: "Insufficient Storage",
    HttpStatusCode.k508LoopDetected: "Loop Detected",
    HttpStatusCode.k411LengthRequired: "Length Required",
    HttpStatusCode.k510NotExtended: "Not Extended",
    HttpStatusCode.k410Gone: "Gone",
    HttpStatusCode.k408RequestTimeout: "Request Timeout",
    HttpStatusCode.k101SwitchingProtocols: "Switching Protocols",
    HttpStatusCode.k102Processing: "Processing",
    HttpStatusCode.k200OK: "Ok",
    HttpStatusCode.k201Created: "Created",
    HttpStatusCode.k202Accepted: "Accepted",
    HttpStatusCode.k203NonAuthoritative: "Non Authoritative",
    HttpStatusCode.k204NoContent: "No Content",
    HttpStatusCode.k205ResetContent: "Reset Content",
    HttpStatusCode.k206PartialContent: "Partial Content",
    HttpStatusCode.k207MultiStatus: "Multi Status",
    HttpStatusCode.k208AlreadyReported: "Already Reported",
    HttpStatusCode.k226IMUsed: "Im used",
    HttpStatusCode.k300MultipleChoices: "Multiple Choices",
    HttpStatusCode.k301MovedPermanently: "Moved Permanently",
    HttpStatusCode.k302Found: "Found",
    HttpStatusCode.k303SeeOther: "See Other",
    HttpStatusCode.k304NotModified: "Not Modified",
    HttpStatusCode.k305UseProxy: "Use Proxy",
    HttpStatusCode.k306SwitchProxy: "Switch Proxy",
    HttpStatusCode.k307TemporaryRedirect: "Temporary Redirect",
    HttpStatusCode.k308PermanentRedirect: "Permanent Redirect",
    HttpStatusCode.k400BadRequest: "Bad Request",
    HttpStatusCode.k401Unauthorized: "Unauthorized",
    HttpStatusCode.k402PaymentRequired: "Payment Required",
    HttpStatusCode.k403Forbidden: "Forbidden",
    HttpStatusCode.k404NotFound: "Not Found",
    HttpStatusCode.k405MethodNotAllowed: "Method Not Allowed",
    HttpStatusCode.k406NotAcceptable: "Not Acceptable",
    HttpStatusCode.k407ProxyAuthenticationRequired:
        "Proxy Authentication Required",
    HttpStatusCode.k409Conflict: "Conflict",
    HttpStatusCode.k511NetworkAuthenticationRequired:
        "Network Authentication Required",
  };

  /// Replace the default message for the specified status code.
  ///
  /// Ignored when [statusCode] was not present.
  void replaceMessage({
    required int statusCode,
    required String message,
  }) {
    if (!_messages.containsKey(statusCode)) {
      return;
    }

    _messages[statusCode] = message;
  }

  /// Return default message for the [statusCode]
  ///
  /// Empty string will be return if there is no message available for the [statusCode]
  String getMessage({required int statusCode}) {
    if (!_messages.containsKey(statusCode)) {
      return '';
    }
    return _messages[statusCode] ?? '';
  }

  /// All available Http statuses
  List<HttpStatusCode> get list => [
        Continue(),
        PreconditionFailed(),
        RequestEntityTooLarge(),
        PayloadTooLarge(),
        RequestUriTooLong(),
        UriTooLong(),
        UnsupportedMediaType(),
        RequestedRangeNotSatisfiable(),
        RangeNotSatisfiable(),
        ExpectationFailed(),
        ImATeapot(),
        AuthenticationTimeout(),
        MisdirectedRequest(),
        UnProcessableEntity(),
        Locked(),
        FailedDependency(),
        UpgradeRequired(),
        PreconditionRequired(),
        TooManyRequests(),
        RequestHeaderFieldsTooLarge(),
        UnavailableForLegalReasons(),
        InternalServerError(),
        NotImplemented(),
        BadGateway(),
        ServiceUnavailable(),
        GatewayTimeout(),
        HttpVersionNotSupported(),
        VariantAlsoNegotiates(),
        InsufficientStorage(),
        LoopDetected(),
        LengthRequired(),
        NotExtended(),
        Gone(),
        RequestTimeout(),
        SwitchingProtocols(),
        Processing(),
        OK(),
        Created(),
        Accepted(),
        NonAuthoritative(),
        NoContent(),
        ResetContent(),
        PartialContent(),
        MultiStatus(),
        AlreadyReported(),
        IMUsed(),
        MultipleChoices(),
        MovedPermanently(),
        Found(),
        SeeOther(),
        NotModified(),
        UseProxy(),
        SwitchProxy(),
        TemporaryRedirect(),
        PermanentRedirect(),
        BadRequest(),
        Unauthorized(),
        PaymentRequired(),
        Forbidden(),
        NotFound(),
        MethodNotAllowed(),
        NotAcceptable(),
        ProxyAuthenticationRequired(),
        Conflict(),
        NetworkAuthenticationRequired(),
      ];

  /// Provide [HttpStatusCode] related for [statusCode]
  ///
  /// If there is no [HttpStatusCode] found for the [statusCode], then
  /// [Other()] will be served
  ///
  /// Use [message] to replace default or configured message value
  HttpStatusCode getHttpStatus({required int statusCode, String? message}) {
    final result = list.firstWhere(
      (element) => element.statusCode == statusCode,
      orElse: () => Other(),
    );

    return result.copyWith(message: message);
  }
}
