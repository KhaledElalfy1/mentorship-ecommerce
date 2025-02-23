
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

    final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
}
