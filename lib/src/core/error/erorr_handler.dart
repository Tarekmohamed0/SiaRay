import 'package:dio/dio.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:logger/logger.dart';

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      failure = _handleError(error);
    } else {
      failure = DataSources.UNKNOWN.getFailure();
    }
  }

  Failure _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return DataSources.CONNECTION_TIMEOUT.getFailure();
      case DioExceptionType.sendTimeout:
        return DataSources.SEND_TIMEOUT.getFailure();
      case DioExceptionType.receiveTimeout:
        return DataSources.RECEIVE_TIMEOUT.getFailure();
      case DioExceptionType.badResponse:
        return badRequestFailure(error.response!.data);

      case DioExceptionType.cancel:
        return DataSources.CANCEL.getFailure();
      case DioExceptionType.connectionError:
        return DataSources.CONNECTOIN_ERROR.getFailure();
      case DioExceptionType.unknown:
      default:
        return DataSources.UNKNOWN.getFailure();
    }
  }
}

enum DataSources {
  SUCCESS,
  CONNECTION_TIMEOUT,
  SEND_TIMEOUT,
  RECEIVE_TIMEOUT,
  BAD_REQUEST,
  BAD_RESPONSE,
  NOT_FOUND,
  UNAUTHORIZED,
  FORBIDDEN,
  INTERNAL_SERVER_ERROR,
  CANCEL,
  UNKNOWN,
  CONNECTOIN_ERROR
}

extension DataSourceExtension on DataSources {
  Failure getFailure() {
    const failureMapping = {
      DataSources.SUCCESS: ResponseMessage.SUCCESS,
      DataSources.CONNECTION_TIMEOUT: ResponseMessage.CONNECTION_TIMEOUT,
      DataSources.SEND_TIMEOUT: ResponseMessage.SEND_TIMEOUT,
      DataSources.RECEIVE_TIMEOUT: ResponseMessage.RECEIVE_TIMEOUT,
      DataSources.BAD_REQUEST: ResponseMessage.BAD_REQUEST,
      DataSources.BAD_RESPONSE: ResponseMessage.BAD_RESPONSE,
      DataSources.NOT_FOUND: ResponseMessage.NOT_FOUND,
      DataSources.UNAUTHORIZED: ResponseMessage.UNAUTHORIZED,
      DataSources.FORBIDDEN: ResponseMessage.FORBIDDEN,
      DataSources.INTERNAL_SERVER_ERROR: ResponseMessage.INTERNAL_SERVER_ERROR,
      DataSources.CANCEL: ResponseMessage.CANCEL,
      DataSources.UNKNOWN: ResponseMessage.UNKNOWN,
      DataSources.CONNECTOIN_ERROR: ResponseMessage.CONNECTOIN_ERROR
    };

    return ServerFailure(failureMapping[this] ?? ResponseMessage.UNKNOWN);
  }
}

class ResponseMessage {
  static const String SUCCESS = 'Success';
  static const String CONNECTION_TIMEOUT = 'Connection Timeout';
  static const String SEND_TIMEOUT = 'Send Timeout, Please try again later';
  static const String RECEIVE_TIMEOUT =
      'Receive Timeout, Please try again later';
  static const String BAD_REQUEST = 'Bad Request, Please check your request';
  static const String BAD_RESPONSE = 'Bad Response from the server';
  static const String NOT_FOUND = 'Not Found, Please check your request';
  static const String UNAUTHORIZED = 'Unauthorized, Please login again';
  static const String FORBIDDEN = 'Forbidden to access this resource';
  static const String INTERNAL_SERVER_ERROR =
      'Internal Server Error, Please try again later';
  static const String CANCEL = 'Request was cancelled';
  static const String UNKNOWN = 'Unknown Error occurred';
  static const String CONNECTOIN_ERROR = 'there is no connectoin';
}
