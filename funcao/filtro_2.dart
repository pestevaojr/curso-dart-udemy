main() {
  var notas = [8.2, 7.1, 6.24, 4.4, 3.9, 8.8, 9.1, 5.1];

  var notasBoasFn = (double nota) => nota >= 7;
  var notasMuitoBoasFn = (double nota) => nota >= 8.8;

  var notasBoas = notas.where(notasBoasFn).toList();
  var notasMuitoBoas = notas.where(notasMuitoBoasFn).toList();

  print(notas);
  print(notasBoas);
  print(notasMuitoBoas);
  
}