import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mentorship_ecommerce/core/errors/failure.dart';

abstract class UserAuthRepo{
  Future<Either<Failure,UserCredential>> signInWithGoogle();
}