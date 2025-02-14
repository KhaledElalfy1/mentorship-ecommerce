part of 'drawer_cubit.dart';

@immutable
sealed class DrawerState {}

final class DrawerInitial extends DrawerState {}
final class DrawerOpened extends DrawerState {}
final class DrawerClosed extends DrawerState {}
