import 'package:flutter/material.dart';
import 'package:news_app/core/di/service_locator.dart';
import 'package:news_app/features/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  runApp(const MainApp());
}