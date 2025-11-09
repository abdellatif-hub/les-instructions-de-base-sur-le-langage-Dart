void main() {
  List<double> notes = [10, 12, 5,4.75, 19];

  print("Notes des étudiants :");
  for (double note in notes) {
    print(note);
  }

  double somme = notes.reduce((a, b) => a + b);
  double moyenne = somme / notes.length;
  double meilleureNote = notes.reduce((a, b) => a > b ? a : b);

  print("\nSomme = $somme");
  print("Moyenne = ${moyenne.toStringAsFixed(1)}");
  print("Meilleure note = $meilleureNote");
}
