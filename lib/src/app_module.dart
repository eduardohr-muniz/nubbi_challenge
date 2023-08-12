import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubbi_challenge/src/modules/challenges/challenge_module.dart';
import 'modules/home/ui/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ModuleRoute("/challenge/", module: ChallengeModule()),
      ];
}
