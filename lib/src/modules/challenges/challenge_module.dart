import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubbi_challenge/src/core/helpers/routes.dart';
import 'package:nubbi_challenge/src/modules/challenges/aplication/challenge_controller.dart';
import 'package:nubbi_challenge/src/modules/challenges/ui/harshad_test_page.dart';
import 'package:nubbi_challenge/src/modules/challenges/ui/rail_test_page.dart';
import 'package:nubbi_challenge/src/modules/challenges/ui/seconds_test_page.dart';

class ChallengeModule extends Module {
  @override
  List<Bind> get binds => [Bind.lazySingleton((i) => ChallengeController())];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Routes.harshad.childRoute, child: (context, args) => const HarshadTestPage()),
        ChildRoute(Routes.seconds.childRoute, child: (context, args) => const SecondsTestPage()),
        ChildRoute(Routes.railFenceCipher.childRoute, child: (context, args) => const RailTestPage()),
      ];
}
