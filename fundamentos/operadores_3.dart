main() {

  int a = 3;
  int b = 4;

  // Operadores Unários
  a++; // Posfix
  --a; // Prefix

  print(a);

  print(a++ == --b);
  print( a == b);

  // Operador lógico unário (NOT)
  print(!true);
  print(!false);

  bool x = false;
  print(!x);
}