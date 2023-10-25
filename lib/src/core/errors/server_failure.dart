import 'dart:convert';

import 'package:dio/dio.dart';

import '../api/status_code.dart';
import '/src/core/utils/app_strings.dart';
import 'failure.dart';

class ServerFailure extends Failure {
  ServerFailure({String? errorMessage}) : super(errorMessage: errorMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: 'Connection Timeout With ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send Timeout With ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive Timeout With ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure(
            errorMessage: 'Your request not found, please try again later!');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Request to ApiServer was canceled');

      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'No Internet Connection');

      case DioExceptionType.unknown:
        return ServerFailure(
          errorMessage: "Unexpected Error, please try again!",
        );

      default:
        return ServerFailure(
          errorMessage: "Opps something went wrong, please try again later!",
        );
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    final parsedResponse = jsonDecode(response);

    if (statusCode == StatusCode.badRequest ||
        statusCode == StatusCode.unAuthorized ||
        statusCode == StatusCode.forbidden) {
      return ServerFailure(errorMessage: parsedResponse['message']);
    } else if (statusCode == StatusCode.internalServerError) {
      return ServerFailure(errorMessage: parsedResponse['error']);
    }
    return ServerFailure(errorMessage: AppStrings.opps);
  }
}
