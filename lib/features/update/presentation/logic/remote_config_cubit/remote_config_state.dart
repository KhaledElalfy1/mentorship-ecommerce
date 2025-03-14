part of 'remote_config_cubit.dart';

@immutable
sealed class RemoteConfigState extends Equatable {
  @override
  List<Object> get props => [];
  const RemoteConfigState();
}

final class RemoteConfigInitial extends RemoteConfigState {}

final class RemoteConfigLoadeing extends RemoteConfigState {}

final class RemoteConfigNoUpdate extends RemoteConfigState {}

final class RemoteConfigHasUpdate extends RemoteConfigState {
  final bool neddingToUpdate;

  const RemoteConfigHasUpdate({required this.neddingToUpdate});
  @override
  List<Object> get props => [
        neddingToUpdate
      ];
}

final class RemoteConfigError extends RemoteConfigState {
  final String errMessage;

  const RemoteConfigError({required this.errMessage});
}
