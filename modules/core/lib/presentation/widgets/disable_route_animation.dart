import 'package:core/core.dart';

class DisableRouteAnimation extends CustomTransitionPage<void> {
  DisableRouteAnimation(Widget child)
      : super(
          child: child,
          transitionsBuilder: (_, __, ___, child) => child,
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        );
}

//  CustomTransitionPage<void>(
//     key: state.pageKey,
//     child: const TransitionsPage(kind: 'fade', color: Colors.red),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) =>
//         FadeTransition(opacity: animation, child: child),
//   ),