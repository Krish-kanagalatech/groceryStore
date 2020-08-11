import 'package:delivoostores/Auth/MobileNumber/UI/phone_number.dart';
import 'package:delivoostores/Auth/Registration/UI/register_page.dart';
import 'package:delivoostores/Auth/Verification/UI/verification_page.dart';
import 'package:delivoostores/OrderItemAccount/order_item_account.dart';
import 'package:flutter/material.dart';
import 'package:delivoostores/Routes/routes.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class LoginRoutes {
  static const String loginRoot = 'login/';
  static const String registration = 'login/registration';
  static const String verification = 'login/verification';
  static const String orderItemAccount = 'OrderItemAccount';
}

class LoginData {
  final String phoneNumber;
  final String name;
  final String email;

  LoginData(this.phoneNumber, this.name, this.email);
}

class LoginNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VoidCallback hi = () =>
        Navigator.popAndPushNamed(context, PageRoutes.orderItemAccountPage);
    return WillPopScope(
      onWillPop: () async {
        var canPop = navigatorKey.currentState.canPop();
        if (canPop) {
          navigatorKey.currentState.pop();
        }
        return !canPop;
      },
      child: Navigator(
        key: navigatorKey,
        initialRoute: LoginRoutes.loginRoot,
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case LoginRoutes.loginRoot:
              builder = (BuildContext _) => PhoneNumber();
              break;
            case LoginRoutes.registration:
              builder = (BuildContext _) => RegisterPage(
                    () {
                      Navigator.popAndPushNamed(
                          context, PageRoutes.orderItemAccountPage);
                    },
                  );
              break;
            case LoginRoutes.verification:
              builder = (BuildContext _) => VerificationPage(
                    () {
                      Navigator.popAndPushNamed(
                          context, PageRoutes.orderItemAccountPage);
                    },
                  );
              break;
          }
          return MaterialPageRoute(builder: builder, settings: settings);
        },
        onPopPage: (Route<dynamic> route, dynamic result) {
          return route.didPop(result);
        },
      ),
    );
  }
}
