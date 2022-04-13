import 'package:bloc_example/src/config/observer/app_bloc_observer.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/app.dart';
late List<CameraDescription> cameras;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  BlocOverrides.runZoned(() => runApp(App()),
  blocObserver: AppBlocObserver());
}




