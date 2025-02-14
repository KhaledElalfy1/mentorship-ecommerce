import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'drawer_state.dart';

class DrawerCubit extends Cubit<DrawerState> {
  DrawerCubit() : super(DrawerInitial());

  void openDrawer() {
    emit(DrawerOpened());
  }

  void closeDrawer() {
    emit(DrawerClosed());
  }
}
