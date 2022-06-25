import 'package:http_status_helper/src/http_response_manager.dart';

abstract class HttpStatusCode {
  static const int k100Continue = 100;
  static const int k412PreconditionFailed = 412;
  static const int k413RequestEntityTooLarge = 413;
  static const int k413PayloadTooLarge = 413;
  static const int k414RequestUriTooLong = 414;
  static const int k414UriTooLong = 414;
  static const int k415UnsupportedMediaType = 415;
  static const int k416RequestedRangeNotSatisfiable = 416;
  static const int k416RangeNotSatisfiable = 416;
  static const int k417ExpectationFailed = 417;
  static const int k418ImATeapot = 418;
  static const int k419AuthenticationTimeout = 419;
  static const int k421MisdirectedRequest = 421;
  static const int k422UnProcessableEntity = 422;
  static const int k423Locked = 423;
  static const int k424FailedDependency = 424;
  static const int k426UpgradeRequired = 426;
  static const int k428PreconditionRequired = 428;
  static const int k429TooManyRequests = 429;
  static const int k431RequestHeaderFieldsTooLarge = 431;
  static const int k451UnavailableForLegalReasons = 451;
  static const int k500InternalServerError = 500;
  static const int k501NotImplemented = 501;
  static const int k502BadGateway = 502;
  static const int k503ServiceUnavailable = 503;
  static const int k504GatewayTimeout = 504;
  static const int k505HttpVersionNotSupported = 505;
  static const int k506VariantAlsoNegotiates = 506;
  static const int k507InsufficientStorage = 507;
  static const int k508LoopDetected = 508;
  static const int k411LengthRequired = 411;
  static const int k510NotExtended = 510;
  static const int k410Gone = 410;
  static const int k408RequestTimeout = 408;
  static const int k101SwitchingProtocols = 101;
  static const int k102Processing = 102;
  static const int k200OK = 200;
  static const int k201Created = 201;
  static const int k202Accepted = 202;
  static const int k203NonAuthoritative = 203;
  static const int k204NoContent = 204;
  static const int k205ResetContent = 205;
  static const int k206PartialContent = 206;
  static const int k207MultiStatus = 207;
  static const int k208AlreadyReported = 208;
  static const int k226IMUsed = 226;
  static const int k300MultipleChoices = 300;
  static const int k301MovedPermanently = 301;
  static const int k302Found = 302;
  static const int k303SeeOther = 303;
  static const int k304NotModified = 304;
  static const int k305UseProxy = 305;
  static const int k306SwitchProxy = 306;
  static const int k307TemporaryRedirect = 307;
  static const int k308PermanentRedirect = 308;
  static const int k400BadRequest = 400;
  static const int k401Unauthorized = 401;
  static const int k402PaymentRequired = 402;
  static const int k403Forbidden = 403;
  static const int k404NotFound = 404;
  static const int k405MethodNotAllowed = 405;
  static const int k406NotAcceptable = 406;
  static const int k407ProxyAuthenticationRequired = 407;
  static const int k409Conflict = 409;
  static const int k511NetworkAuthenticationRequired = 511;

  int get statusCode;

  String get message;

  HttpStatusCode copyWith({String? message});
}

/*class Continue implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k100Continue]
  @override
  int get statusCode => HttpStatusCode.k100Continue;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  @override
  HttpStatusCode copyWith({String? message}) => Continue(msg: message);

  /// Default or configured message will replaced if the [message] was present
  Continue({String? message}) {
    _message = message;
  }
}*/

class Continue implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k100Continue]
  @override
  int get statusCode => HttpStatusCode.k100Continue;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  Continue({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => Continue(message: message);
}

class PreconditionFailed implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k412PreconditionFailed]
  @override
  int get statusCode => HttpStatusCode.k412PreconditionFailed;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  PreconditionFailed({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      PreconditionFailed(message: message);
}

class RequestEntityTooLarge implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k413RequestEntityTooLarge]
  @override
  int get statusCode => HttpStatusCode.k413RequestEntityTooLarge;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  RequestEntityTooLarge({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      RequestEntityTooLarge(message: message);
}

class PayloadTooLarge implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k413PayloadTooLarge]
  @override
  int get statusCode => HttpStatusCode.k413PayloadTooLarge;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  PayloadTooLarge({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      PayloadTooLarge(message: message);
}

class RequestUriTooLong implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k414RequestUriTooLong]
  @override
  int get statusCode => HttpStatusCode.k414RequestUriTooLong;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  RequestUriTooLong({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      RequestUriTooLong(message: message);
}

class UriTooLong implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k414UriTooLong]
  @override
  int get statusCode => HttpStatusCode.k414UriTooLong;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  UriTooLong({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => UriTooLong(message: message);
}

class UnsupportedMediaType implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k415UnsupportedMediaType]
  @override
  int get statusCode => HttpStatusCode.k415UnsupportedMediaType;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  UnsupportedMediaType({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      UnsupportedMediaType(message: message);
}

class RequestedRangeNotSatisfiable implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k416RequestedRangeNotSatisfiable]
  @override
  int get statusCode => HttpStatusCode.k416RequestedRangeNotSatisfiable;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  RequestedRangeNotSatisfiable({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      RequestedRangeNotSatisfiable(message: message);
}

class RangeNotSatisfiable implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k416RangeNotSatisfiable]
  @override
  int get statusCode => HttpStatusCode.k416RangeNotSatisfiable;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  RangeNotSatisfiable({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      RangeNotSatisfiable(message: message);
}

class ExpectationFailed implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k417ExpectationFailed]
  @override
  int get statusCode => HttpStatusCode.k417ExpectationFailed;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  ExpectationFailed({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      ExpectationFailed(message: message);
}

class ImATeapot implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k418ImATeapot]
  @override
  int get statusCode => HttpStatusCode.k418ImATeapot;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  ImATeapot({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => ImATeapot(message: message);
}

class AuthenticationTimeout implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k419AuthenticationTimeout]
  @override
  int get statusCode => HttpStatusCode.k419AuthenticationTimeout;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  AuthenticationTimeout({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      AuthenticationTimeout(message: message);
}

class MisdirectedRequest implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k421MisdirectedRequest]
  @override
  int get statusCode => HttpStatusCode.k421MisdirectedRequest;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  MisdirectedRequest({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      MisdirectedRequest(message: message);
}

class UnProcessableEntity implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k422UnProcessableEntity]
  @override
  int get statusCode => HttpStatusCode.k422UnProcessableEntity;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  UnProcessableEntity({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      UnProcessableEntity(message: message);
}

class Locked implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k423Locked]
  @override
  int get statusCode => HttpStatusCode.k423Locked;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  Locked({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => Locked(message: message);
}

class FailedDependency implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k424FailedDependency]
  @override
  int get statusCode => HttpStatusCode.k424FailedDependency;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  FailedDependency({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      FailedDependency(message: message);
}

class UpgradeRequired implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k426UpgradeRequired]
  @override
  int get statusCode => HttpStatusCode.k426UpgradeRequired;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  UpgradeRequired({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      UpgradeRequired(message: message);
}

class PreconditionRequired implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k428PreconditionRequired]
  @override
  int get statusCode => HttpStatusCode.k428PreconditionRequired;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  PreconditionRequired({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      PreconditionRequired(message: message);
}

class TooManyRequests implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k429TooManyRequests]
  @override
  int get statusCode => HttpStatusCode.k429TooManyRequests;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  TooManyRequests({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      TooManyRequests(message: message);
}

class RequestHeaderFieldsTooLarge implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k431RequestHeaderFieldsTooLarge]
  @override
  int get statusCode => HttpStatusCode.k431RequestHeaderFieldsTooLarge;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  RequestHeaderFieldsTooLarge({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      RequestHeaderFieldsTooLarge(message: message);
}

class UnavailableForLegalReasons implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k451UnavailableForLegalReasons]
  @override
  int get statusCode => HttpStatusCode.k451UnavailableForLegalReasons;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  UnavailableForLegalReasons({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      UnavailableForLegalReasons(message: message);
}

class InternalServerError implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k500InternalServerError]
  @override
  int get statusCode => HttpStatusCode.k500InternalServerError;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  InternalServerError({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      InternalServerError(message: message);
}

class NotImplemented implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k501NotImplemented]
  @override
  int get statusCode => HttpStatusCode.k501NotImplemented;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  NotImplemented({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      NotImplemented(message: message);
}

class BadGateway implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k502BadGateway]
  @override
  int get statusCode => HttpStatusCode.k502BadGateway;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  BadGateway({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => BadGateway(message: message);
}

class ServiceUnavailable implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k503ServiceUnavailable]
  @override
  int get statusCode => HttpStatusCode.k503ServiceUnavailable;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  ServiceUnavailable({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      ServiceUnavailable(message: message);
}

class GatewayTimeout implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k504GatewayTimeout]
  @override
  int get statusCode => HttpStatusCode.k504GatewayTimeout;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  GatewayTimeout({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      GatewayTimeout(message: message);
}

class HttpVersionNotSupported implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k505HttpVersionNotSupported]
  @override
  int get statusCode => HttpStatusCode.k505HttpVersionNotSupported;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  HttpVersionNotSupported({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      HttpVersionNotSupported(message: message);
}

class VariantAlsoNegotiates implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k506VariantAlsoNegotiates]
  @override
  int get statusCode => HttpStatusCode.k506VariantAlsoNegotiates;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  VariantAlsoNegotiates({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      VariantAlsoNegotiates(message: message);
}

class InsufficientStorage implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k507InsufficientStorage]
  @override
  int get statusCode => HttpStatusCode.k507InsufficientStorage;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  InsufficientStorage({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      InsufficientStorage(message: message);
}

class LoopDetected implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k508LoopDetected]
  @override
  int get statusCode => HttpStatusCode.k508LoopDetected;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  LoopDetected({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => LoopDetected(message: message);
}

class LengthRequired implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k411LengthRequired]
  @override
  int get statusCode => HttpStatusCode.k411LengthRequired;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  LengthRequired({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      LengthRequired(message: message);
}

class NotExtended implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k510NotExtended]
  @override
  int get statusCode => HttpStatusCode.k510NotExtended;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  NotExtended({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => NotExtended(message: message);
}

class Gone implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k410Gone]
  @override
  int get statusCode => HttpStatusCode.k410Gone;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  Gone({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => Gone(message: message);
}

class RequestTimeout implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k408RequestTimeout]
  @override
  int get statusCode => HttpStatusCode.k408RequestTimeout;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  RequestTimeout({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      RequestTimeout(message: message);
}

class SwitchingProtocols implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k101SwitchingProtocols]
  @override
  int get statusCode => HttpStatusCode.k101SwitchingProtocols;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  SwitchingProtocols({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      SwitchingProtocols(message: message);
}

class Processing implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k102Processing]
  @override
  int get statusCode => HttpStatusCode.k102Processing;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  Processing({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => Processing(message: message);
}

class OK implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k200OK]
  @override
  int get statusCode => HttpStatusCode.k200OK;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  OK({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => OK(message: message);
}

class Created implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k201Created]
  @override
  int get statusCode => HttpStatusCode.k201Created;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  Created({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => Created(message: message);
}

class Accepted implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k202Accepted]
  @override
  int get statusCode => HttpStatusCode.k202Accepted;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  Accepted({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => Accepted(message: message);
}

class NonAuthoritative implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k203NonAuthoritative]
  @override
  int get statusCode => HttpStatusCode.k203NonAuthoritative;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  NonAuthoritative({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      NonAuthoritative(message: message);
}

class NoContent implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k204NoContent]
  @override
  int get statusCode => HttpStatusCode.k204NoContent;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  NoContent({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => NoContent(message: message);
}

class ResetContent implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k205ResetContent]
  @override
  int get statusCode => HttpStatusCode.k205ResetContent;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  ResetContent({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => ResetContent(message: message);
}

class PartialContent implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k206PartialContent]
  @override
  int get statusCode => HttpStatusCode.k206PartialContent;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  PartialContent({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      PartialContent(message: message);
}

class MultiStatus implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k207MultiStatus]
  @override
  int get statusCode => HttpStatusCode.k207MultiStatus;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  MultiStatus({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => MultiStatus(message: message);
}

class AlreadyReported implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k208AlreadyReported]
  @override
  int get statusCode => HttpStatusCode.k208AlreadyReported;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  AlreadyReported({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      AlreadyReported(message: message);
}

class IMUsed implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k226IMUsed]
  @override
  int get statusCode => HttpStatusCode.k226IMUsed;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  IMUsed({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => IMUsed(message: message);
}

class MultipleChoices implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k300MultipleChoices]
  @override
  int get statusCode => HttpStatusCode.k300MultipleChoices;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  MultipleChoices({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      MultipleChoices(message: message);
}

class MovedPermanently implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k301MovedPermanently]
  @override
  int get statusCode => HttpStatusCode.k301MovedPermanently;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  MovedPermanently({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      MovedPermanently(message: message);
}

class Found implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k302Found]
  @override
  int get statusCode => HttpStatusCode.k302Found;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  Found({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => Found(message: message);
}

class SeeOther implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k303SeeOther]
  @override
  int get statusCode => HttpStatusCode.k303SeeOther;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  SeeOther({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => SeeOther(message: message);
}

class NotModified implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k304NotModified]
  @override
  int get statusCode => HttpStatusCode.k304NotModified;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  NotModified({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => NotModified(message: message);
}

class UseProxy implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k305UseProxy]
  @override
  int get statusCode => HttpStatusCode.k305UseProxy;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  UseProxy({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => UseProxy(message: message);
}

class SwitchProxy implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k306SwitchProxy]
  @override
  int get statusCode => HttpStatusCode.k306SwitchProxy;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  SwitchProxy({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => SwitchProxy(message: message);
}

class TemporaryRedirect implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k307TemporaryRedirect]
  @override
  int get statusCode => HttpStatusCode.k307TemporaryRedirect;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  TemporaryRedirect({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      TemporaryRedirect(message: message);
}

class PermanentRedirect implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k308PermanentRedirect]
  @override
  int get statusCode => HttpStatusCode.k308PermanentRedirect;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  PermanentRedirect({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      PermanentRedirect(message: message);
}

class BadRequest implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k400BadRequest]
  @override
  int get statusCode => HttpStatusCode.k400BadRequest;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  BadRequest({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => BadRequest(message: message);
}

class Unauthorized implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k401Unauthorized]
  @override
  int get statusCode => HttpStatusCode.k401Unauthorized;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  Unauthorized({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => Unauthorized(message: message);
}

class PaymentRequired implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k402PaymentRequired]
  @override
  int get statusCode => HttpStatusCode.k402PaymentRequired;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  PaymentRequired({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      PaymentRequired(message: message);
}

class Forbidden implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k403Forbidden]
  @override
  int get statusCode => HttpStatusCode.k403Forbidden;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  Forbidden({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => Forbidden(message: message);
}

class NotFound implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k404NotFound]
  @override
  int get statusCode => HttpStatusCode.k404NotFound;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  NotFound({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => NotFound(message: message);
}

class MethodNotAllowed implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k405MethodNotAllowed]
  @override
  int get statusCode => HttpStatusCode.k405MethodNotAllowed;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  MethodNotAllowed({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      MethodNotAllowed(message: message);
}

class NotAcceptable implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k406NotAcceptable]
  @override
  int get statusCode => HttpStatusCode.k406NotAcceptable;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  NotAcceptable({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => NotAcceptable(message: message);
}

class ProxyAuthenticationRequired implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k407ProxyAuthenticationRequired]
  @override
  int get statusCode => HttpStatusCode.k407ProxyAuthenticationRequired;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  ProxyAuthenticationRequired({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      ProxyAuthenticationRequired(message: message);
}

class Conflict implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k409Conflict]
  @override
  int get statusCode => HttpStatusCode.k409Conflict;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  Conflict({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) => Conflict(message: message);
}

class NetworkAuthenticationRequired implements HttpStatusCode {
  String? _message;

  /// Value of [HttpStatusCode.k511NetworkAuthenticationRequired]
  @override
  int get statusCode => HttpStatusCode.k511NetworkAuthenticationRequired;

  @override
  String get message =>
      _message ??
      HttpResponseManager().getMessage(
        statusCode: statusCode,
      );

  /// Default or configured message will replaced if the [message] was present
  NetworkAuthenticationRequired({String? message}) {
    _message = message;
  }

  @override
  HttpStatusCode copyWith({String? message}) =>
      NetworkAuthenticationRequired(message: message);
}

class Other implements HttpStatusCode {
  String msg;
  int code;

  @override
  String get message => msg;

  @override
  int get statusCode => code;

  Other({
    this.code = -1,
    this.msg = "Other",
  });

  @override
  HttpStatusCode copyWith({String? message}) => Other(
        code: code,
        msg: message ?? msg,
      );
}
