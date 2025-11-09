void analyserTemperatures(List<double> temperatures, {double? minSeuil, double? maxSeuil}) {
  double somme = temperatures.reduce((a, b) => a + b);
  double moyenne = somme / temperatures.length;
  print("Moyenne des températures : ${moyenne.toStringAsFixed(1)}");

  if (minSeuil != null) {
    int enDessous = temperatures.where((t) => t < minSeuil).length;
    print("$enDessous jour(s) en dessous de $minSeuil°C");
  }

  if (maxSeuil != null) {
    int auDessus = temperatures.where((t) => t > maxSeuil).length;
    print("$auDessus jour(s) au-dessus de $maxSeuil°C");
  }

  print(""); 
}

void main() {
  List<double> temperatures = [18.5, 21.0, 19.8, 25.2, 30.5];

  print("→ Sans seuils");
  analyserTemperatures(temperatures);

  print("→ Avec minSeuil");
  analyserTemperatures(temperatures, minSeuil: 20.0);

  print("→ Avec maxSeuil");
  analyserTemperatures(temperatures, maxSeuil: 25.0);

  print("→ Avec les deux");
  analyserTemperatures(temperatures, minSeuil: 20.0, maxSeuil: 25.0);
}
