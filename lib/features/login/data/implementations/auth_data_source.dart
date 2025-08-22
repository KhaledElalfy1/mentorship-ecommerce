import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mentorship_ecommerce/core/api/api_consumer.dart';
import 'package:mentorship_ecommerce/core/api/end_points.dart';
import 'package:mentorship_ecommerce/core/errors/failure.dart';
import 'package:mentorship_ecommerce/features/login/data/models/user_data_model.dart';

class AuthDataSource {
  final ApiConsumer apiConsumer;

  AuthDataSource({required this.apiConsumer});

  Future<Either<Failure, UserDataModel>> authDataSource(
      {required String email, required String password}) async {
    try {
      final response = await apiConsumer.post(
        EndPoints.loginEndPoint,
        data: {
          ApiKeys.email: email,
          ApiKeys.password: password,
        },
      );
    
      final userData = UserDataModel.fromJson(response);
      return Right(userData);
    } on DioException catch (e) {
      final errorMessage =
          e.response?.data['message'] ?? 'Something went wrong';          
      return Left(Failure(error: errorMessage));
    } catch (e) {
      return Left(Failure(error: e.toString()));
    }
  }
}
