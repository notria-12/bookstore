import 'package:bookstore_app/src/home/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomePage(),
  )
]);
