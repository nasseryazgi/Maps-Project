import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:maps/app__router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp( MyApp(appRouter: AppRouter(),));
}

class MyApp extends StatelessWidget {
   MyApp({super.key, required this.appRouter});
 final AppRouter appRouter ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: appRouter.generateRoute  ,
    );
  }
}
