import 'package:dio/dio.dart';


abstract class Failures {

  final String errorMessage;

  Failures(this.errorMessage);
}

class ServerFailure extends Failures{

  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException dioException){
    switch(dioException.type){
      
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieve timeout with Api Server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate with Api Server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to Api Server was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        if(dioException.message!.contains('Socket Exception')){
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected error, please try again!');
      case DioExceptionType.transformTimeout:
        return ServerFailure('Transform timeout with Api Server');
        }
  }

  // ignore: dead_code
  factory ServerFailure.fromResponse(int statusCode, dynamic response){
    if(statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServerFailure(response['error']['message']);
    }
    else if(statusCode==404){
      return ServerFailure('Your request not found, please try again later!');
    }
    else if(statusCode == 500){
      return ServerFailure('Internal Server error, please try again later!');
    }
    else{
      return ServerFailure('Opps.. There was an error, please try again');
    }
  }
}

