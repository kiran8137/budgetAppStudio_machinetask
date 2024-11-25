import 'package:budgetapp_machine_task/controller/home_contoller.dart';
import 'package:budgetapp_machine_task/data_services/services.dart';
import 'package:budgetapp_machine_task/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(postServices: ApiServices()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        
        home: HomeScreen(),
      ),
    );
  }
}

 