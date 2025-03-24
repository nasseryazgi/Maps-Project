import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maps/presentation/screens/login_screen.dart';

import 'constants/strings.dart';

class AppRouter{

  Route ?generateRoute(RouteSettings settings){
    switch(settings.name){
      case loginScreen:
        return MaterialPageRoute(builder: (_)=>LoginScreen(),);

    }

}

}