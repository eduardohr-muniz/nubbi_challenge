// ignore_for_file: unused_local_variable

class DecodeRailUsecase {
  String call(String cipherText, int n) {
    List<String> matriz = List.filled(n, "");
    List<int> pattern = List.generate(n, (index) => index);
    int rail = 0;
    int step = 1;

    for (int i = 0; i < cipherText.length; i++) {
      matriz[rail] += '*'; // Preencher temporariamente com qualquer um caractere
      if (rail == n - 1) {
        step = -1;
      } else if (rail == 0) {
        step = 1;
      }
      rail += step;
    }

    int index = 0;
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < matriz[i].length; j++) {
        if (matriz[i][j] == '*') {
          matriz[i] = matriz[i].substring(0, j) + cipherText[index] + matriz[i].substring(j + 1);
          index++;
        }
      }
    }

    rail = 0;
    step = 1;
    String decryptedText = "";

    for (int i = 0; i < cipherText.length; i++) {
      decryptedText += matriz[rail][0];
      matriz[rail] = matriz[rail].substring(1);

      if (rail == n - 1) {
        step = -1;
      } else if (rail == 0) {
        step = 1;
      }
      rail += step;
    }

    return decryptedText;
  }
}
