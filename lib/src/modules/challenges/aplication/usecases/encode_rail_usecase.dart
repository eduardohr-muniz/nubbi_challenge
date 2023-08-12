class EncodeRailUsecase {
  String call(String text, int n) {
    List<String> matriz = List.filled(n, ""); // iniciando a matriz vazia com n espaços vazios
    int rail = 0;
    int step = 1;
    for (int i = 0; i < text.length; i++) {
      String c = text[i];
      matriz[rail] = matriz[rail] + c;
      if (rail == n - 1) {
        step = -1;
      } else if (rail == 0) {
        step = 1;
      }
      rail += step;
    }
    return matriz.join();
  }
}
