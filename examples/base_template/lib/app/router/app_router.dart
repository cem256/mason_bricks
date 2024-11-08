import 'package:auto_route/auto_route.dart';
import 'package:base_template/app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')

/// Holds all the routes that are defined in the app
/// Used to generate the Router object
final class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        // TODO: Add routes here
        AutoRoute(
          initial: true,
          page: HomeRoute.page,
        ),
      ];
}
