import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'observer/app_bloc_observer.dart';

void main(){
  BlocOverrides.runZoned(() => runApp(App()),
  blocObserver: AppBlocObserver());
}




