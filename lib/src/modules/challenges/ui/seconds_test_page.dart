import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/helpers/messages.dart';
import '../../../core/ui/widgets/custom_text_fild.dart';
import '../aplication/challenge_controller.dart';
import '../domain/helpers/challenge_constants.dart';
import 'components/play_floating_button.dart';

class SecondsTestPage extends StatelessWidget {
  const SecondsTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final secondsEC = TextEditingController();
    final message = Messages.of(context);
    final controller = context.read<ChallengeController>();
    return Scaffold(
      floatingActionButton: PlayFloatingButton(
        onPressed: () {
          if (secondsEC.text.isNotEmpty) {
            controller.formatSecondsToTime(message: message, seconds: int.tryParse(secondsEC.text) ?? -1);
          } else {
            message.showError("O campo está vazio, insira ao menos um segundo e tente novamente");
          }
        },
      ),
      appBar: AppBar(
        title: const Text('Seconds'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(ChallengeConstants.questionTwoText),
              CustomTextFild(
                controller: secondsEC,
                keyboardType: TextInputType.number,
                label: "Segundos",
                hintText: "Digite em segundos",
              )
            ],
          ),
        ),
      ),
    );
  }
}
