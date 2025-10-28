class Numeros {
  int numero1;
  int numero2;

  Numeros(this.numero1, this.numero2);

  bool sonAmigos() {
    if (numero1 <= 0 || numero2 <= 0) return false;

    int sumaDivisores(int n) {
      int suma = 1;
      for (int i = 2; i <= n ~/ 2; i++) {
        if (n % i == 0) suma += i;
      }
      return suma;
    }

    return sumaDivisores(numero1) == numero2 &&
           sumaDivisores(numero2) == numero1;
  }
}
