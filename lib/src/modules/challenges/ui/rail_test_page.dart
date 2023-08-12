import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubbi_challenge/src/modules/challenges/ui/components/container_copy.dart';

import '../../../core/helpers/messages.dart';
import '../../../core/ui/widgets/custom_text_fild.dart';
import '../aplication/challenge_controller.dart';
import '../domain/helpers/challenge_constants.dart';

class RailTestPage extends StatelessWidget {
  const RailTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final railEC = TextEditingController();
    final message = Messages.of(context);
    final controller = context.read<ChallengeController>();
    const String initialCode = "WEAREDISCOVEREDFLEEATONCE";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rail Fence Cipher'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 200, left: 10, right: 10),
          child: Column(
            children: [
              Text(ChallengeConstants.questionTreText),
              ContainerCopy(
                content: initialCode,
                onPressed: () {
                  Clipboard.setData(const ClipboardData(text: initialCode));
                  message.showSuccess("Código copiado para área de transferência");
                },
              ),
              const SizedBox(height: 20),
              CustomTextFild(
                controller: railEC,
                label: "Code",
                hintText: "Encode ou Decode",
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FilledButton.tonal(
                    onPressed: () {
                      controller.decode(message: message, value: railEC.text);
                    },
                    child: const Text("Decode"),
                  ),
                  FilledButton(
                    style: FilledButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      controller.encode(message: message, value: railEC.text);
                    },
                    child: const Text("Encode"),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ValueListenableBuilder(
                  valueListenable: controller.code,
                  builder: (context, code, _) {
                    return Visibility(
                      visible: code != null,
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Resultado:"),
                          ),
                          ContainerCopy(
                            content: code ?? "",
                            onPressed: () {
                              Clipboard.setData(ClipboardData(text: code ?? ""));
                              message.showSuccess("Código copiado para área de transferência");
                            },
                          ),
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
