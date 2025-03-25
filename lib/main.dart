import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:maps/app__router.dart';
import 'package:maps/presentation/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp( MyApp(appRouter: AppRouter(),));
}

class MyApp extends StatelessWidget {
   const MyApp({super.key, required this.appRouter});
 final AppRouter appRouter ;
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: appRouter.generateRoute  ,
    );
  }
}
