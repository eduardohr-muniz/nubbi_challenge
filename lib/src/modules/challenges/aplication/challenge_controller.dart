import 'package:flutter/material.dart';
import 'package:nubbi_challenge/src/modules/challenges/aplication/usecases/decode_rail_usecase.dart';
import 'package:nubbi_challenge/src/modules/challenges/aplication/usecases/encode_rail_usecase.dart';
import 'package:nubbi_challenge/src/modules/challenges/aplication/usecases/format_seconds_to_time_usecase.dart';
import 'package:nubbi_challenge/src/modules/challenges/aplication/usecases/is_harshad_usecase.dart';
import '../../../core/helpers/messages.dart';

class ChallengeController {
  ValueNotifier<String?> code = ValueNotifier(null);
  isHarshad({required Messages message, required int number}) {
    if (number > 0) {
      final result = IsHarshadUsecase().call(number);
      result
          ? message.showSuccess("Sim, ${number.toString()} é um número harshad")
          : message.showError("Não, ${number.toString()} não é um numero harshad");
    } else {
      message.showError("Passe um número inteiro positivo valido");
    }
  }

  formatSecondsToTime({required Messages message, required int seconds}) {
    if (seconds > 0 && seconds <= 359999) {
      final result = FormatSecondsToTimeUsecase().call(seconds);

      message.showSuccess("${seconds.toString()} segundos representa\n🕑$result");
    } else if (seconds > 359999) {
      message.showError("Máximo de segundos 359999");
    } else {
      message.showError("Passe ao menos 1 segundo");
    }
  }

  encode({required Messages message, required String value}) {
    final result = EncodeRailUsecase().call(value, 3);
    code.value = result;
    message.showSuccess("Encode feito com sucesso agora você pode copiar e recodificalo");
  }

  decode({required Messages message, required String value}) {
    final result = DecodeRailUsecase().call(value, 3);
    code.value = result;
    message.showSuccess("Decode feito com sucesso agora você pode copiar e encodar");
  }
}
