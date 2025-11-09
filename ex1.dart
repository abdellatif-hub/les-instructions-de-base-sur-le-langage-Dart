void afficherInfos(String nom, {int? age, String? ville}) {
  print("Nom: $nom, age: ${age ?? 'non specifie'}, Ville: ${ville ?? 'non specifie'}");
}

void main() {
  afficherInfos("abdellatif");
  afficherInfos("bader", age: 22);
  afficherInfos("hamid", ville: "taza");
  afficherInfos("Abdelmajid", age: 31, ville: "casablanca");
}
