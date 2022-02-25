import 'package:bloc_example/src/config/observer/app_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/app.dart';

void main(){
  BlocOverrides.runZoned(() => runApp(App()),
  blocObserver: AppBlocObserver());
}




