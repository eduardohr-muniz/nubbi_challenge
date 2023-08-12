import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubbi_challenge/src/core/helpers/messages.dart';
import 'package:nubbi_challenge/src/core/ui/widgets/custom_text_fild.dart';
import 'package:nubbi_challenge/src/modules/challenges/aplication/challenge_controller.dart';
import 'package:nubbi_challenge/src/modules/challenges/domain/helpers/challenge_constants.dart';
import 'package:nubbi_challenge/src/modules/challenges/ui/components/play_floating_button.dart';

class HarshadTestPage extends StatelessWidget {
  const HarshadTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final message = Messages.of(context);
    final harshadEC = TextEditingController();
    final controller = context.read<ChallengeController>();
    return Scaffold(
      floatingActionButton: PlayFloatingButton(
        onPressed: () {
          if (harshadEC.text.isNotEmpty) {
            controller.isHarshad(message: message, number: int.tryParse(harshadEC.text) ?? -1);
          } else {
            message.showError("O campo está vazio, coloque um numero e tente novamente");
          }
        },
      ),
      appBar: AppBar(
        title: const Text('Harshad'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(ChallengeConstants.questionOneText),
              CustomTextFild(
                controller: harshadEC,
                label: "Número",
                keyboardType: TextInputType.number,
                hintText: "Digite um número positivo",
              )
            ],
          ),
        ),
      ),
    );
  }
}
