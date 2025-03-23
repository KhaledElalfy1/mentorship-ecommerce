import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_ecommerce/core/functions/remote_config_services.dart';

part 'remote_config_state.dart';

class RemoteConfigCubit extends Cubit<RemoteConfigState> {
  final RemoteConfigServices remoteConfigServices;

  RemoteConfigCubit(this.remoteConfigServices) : super(RemoteConfigInitial());

  Future<void> checkUpdate() async {
    emit(RemoteConfigLoadeing());
    try {
      final bool neddingToUpdate = await remoteConfigServices.updateRemoteConfig();
      if (neddingToUpdate) {
        emit(RemoteConfigHasUpdate(neddingToUpdate: neddingToUpdate));
      } else {
        emit(RemoteConfigNoUpdate());
      }
    } catch (e) {
      emit(RemoteConfigError(errMessage: e.toString()));
    }
  }
}
