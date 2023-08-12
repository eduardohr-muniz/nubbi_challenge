class Routes {
  Routes._();

  static RouteEntity harshad = RouteEntity(route: "/challenge/", childRoute: "/");
  static RouteEntity seconds = RouteEntity(route: "/challenge/seconds", childRoute: "/seconds");
  static RouteEntity railFenceCipher = RouteEntity(route: "/challenge/rail", childRoute: "/rail");
}

class RouteEntity {
  String route;
  String childRoute;
  RouteEntity({
    required this.route,
    required this.childRoute,
  });
}
