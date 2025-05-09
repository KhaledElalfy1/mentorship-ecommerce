import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCaseInterface<T, Param> {
  Future<Either<String, T>> call(Param param);
}

class NoParam extends Equatable {
  const NoParam();
  @override
  List<Object?> get props => [];
}
