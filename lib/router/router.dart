import 'package:auto_route/auto_route.dart';
import 'package:cinex/features/favorites/view/favorites_screen.dart';
import 'package:cinex/features/home/home.dart';
import 'package:cinex/features/search/search.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
          children: [
            AutoRoute(
              page: SearchRoute.page,
              path: 'search',
            ),
            AutoRoute(page: FavoritesRoute.page, path: 'favorites'),
          ],
        ),
      ];
}
