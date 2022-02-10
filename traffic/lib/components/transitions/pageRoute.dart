import 'package:flutter/cupertino.dart';

class BouncyPage extends PageRouteBuilder {
  final Widget widget;
  BouncyPage({required this.widget})
      : super(
          transitionDuration: const Duration(seconds: 2),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            return ScaleTransition(
              alignment: Alignment.center,
              scale:
                  CurvedAnimation(parent: animation, curve: Curves.elasticOut),
              child: child,
            );
          },
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secAnimation) {
            return widget;
          },
        );
}
