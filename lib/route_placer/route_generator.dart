//import 'package:PVD/pages/more_page.dart';
//import 'package:PVD/about_pages/FAQs.dart';
//import 'package:PVD/about_pages/about.dart';
//import 'package:PVD/about_pages/contact_support.dart';
//import 'package:PVD/about_pages/parking_transportation.dart';
//import 'package:PVD/about_pages/privacy_policy.dart';
//import 'package:PVD/about_pages/terms_of_service.dart';
//import 'package:PVD/pages/admin_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dice_rolling_game/pages/home_page.dart';
import 'package:dice_rolling_game/pages/game_mode.dart';
import 'package:dice_rolling_game/pages/game_rules.dart';
import 'package:dice_rolling_game/pages/sign_in_page.dart';
import 'package:dice_rolling_game/pages/score_page.dart';
import 'package:dice_rolling_game/pages/settings.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/sign_in_page':
        return MaterialPageRoute(builder: (_) => SignInPage());
      case '/game_mode':
        return MaterialPageRoute(builder: (_) => DicePage());
      case '/score_page':
        return MaterialPageRoute(builder: (_) => ScorePage());
      case '/settings':
        return MaterialPageRoute(builder: (_) => SettingsPage());
      case '/game_rules':
        return MaterialPageRoute(builder: (_) => RulesPage());
      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
