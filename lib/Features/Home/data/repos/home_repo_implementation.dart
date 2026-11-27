import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_keys.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation implements HomeRepo{

  final ApiService apiService;
  final ApiKeys _apiKeys;

  new(this.apiService, this._apiKeys);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async{
    try{
      var data = await apiService.get(endpoint: 'volumes?key=$_apiKeys&filter=free-ebooks&q=subjec: Programming&Sorting=newest');
      List<BookModel> books=[];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }catch(e){
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async{
    try{
      var data = await apiService.get(endpoint: 'volumes?key=$_apiKeys&filter=free-ebooks&q=subjec: Programming');
      List<BookModel> books=[];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }catch(e){
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}