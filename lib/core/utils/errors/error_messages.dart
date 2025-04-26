import 'package:dio/dio.dart';

class ErrorMessages {
  final String errorMessageInErrorMessages;
  ErrorMessages({required this.errorMessageInErrorMessages});
}

class ErrorServer extends ErrorMessages {
  ErrorServer({required super.errorMessageInErrorMessages});
  factory ErrorServer.fromDioException({required DioException dioException}) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ErrorServer(
          errorMessageInErrorMessages: 'Error: The Connection Took Long Time',
        );
      case DioExceptionType.sendTimeout:
        return ErrorServer(
          errorMessageInErrorMessages: 'Error: The Send Took Long Time',
        );
      case DioExceptionType.receiveTimeout:
        return ErrorServer(
          errorMessageInErrorMessages: 'Error: The Receive Took Long Time',
        );
      case DioExceptionType.badCertificate:
        return ErrorServer(
          errorMessageInErrorMessages:
              'Error: Bad Certification That Happened By [ValidateCertificate]',
        );
      case DioExceptionType.badResponse:
        return ErrorServer.fromBadResponseException(
          statusCode: dioException.response!.statusCode!,
          response: dioException.response?.data as Map<String, dynamic>,
          //because you afraid in error status this api always will return error data or no, but sure there is statusCode to this error
        );
      case DioExceptionType.cancel:
        return ErrorServer(
          errorMessageInErrorMessages: 'Error: Your Request Is Cancel',
        );
      case DioExceptionType.connectionError:
        return ErrorServer.fromNetWorkException(dioException: dioException);
      case DioExceptionType.unknown:
        return ErrorServer(
          errorMessageInErrorMessages: 'Error: There Was An Error',
        );
    }
  }
  factory ErrorServer.fromNetWorkException({
    required DioException dioException,
  }) {
    if (dioException.message!.contains('SocketException')) {
      return ErrorServer(
        errorMessageInErrorMessages: 'Error: Your NetWork Has A Problems',
      );
    } else {
      return ErrorServer(
        errorMessageInErrorMessages: 'Error: Happened UnExpected Error',
      );
    }
  }
  factory ErrorServer.fromBadResponseException({
    required int statusCode,
    required Map<String, dynamic> response,
  }) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ErrorServer(
        errorMessageInErrorMessages: 'Error: ${response['error']['message']}',
      );
    } else if (statusCode == 404) {
      return ErrorServer(
        errorMessageInErrorMessages: 'Error: You Searched On City Not Found',
      );
    } else if (statusCode == 500) {
      return ErrorServer(
        errorMessageInErrorMessages:
            'Error: Happened Error From Internal Server, Please Try Later',
      );
    } else {
      return ErrorServer(
        errorMessageInErrorMessages:
            'Error: Happened UnExpected Error, Occurred When Requesting Data',
      );
    }
  }
}
