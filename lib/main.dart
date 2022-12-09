import 'package:flutter/cupertino.dart';
import 'package:pokemon_app/services/dio_helper/dio_helper.dart';
import 'package:pokemon_app/src/app_root.dart';

void main() {
  DioHelper.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(AppRoot());
}
