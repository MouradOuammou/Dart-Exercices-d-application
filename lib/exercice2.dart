class Employe {
  String _nom;
  double _salaire;

  Employe({required String nom, required double salaire})
      : _nom = nom,
        _salaire = salaire;

  void afficherInfos() {
    print('Employé: $_nom, Salaire: $_salaire');
  }
}

class Manager extends Employe {
  double _prime;

  Manager({required String nom, required double salaire, required double prime})
      : _prime = prime,
        super(nom: nom, salaire: salaire);

  @override
  void afficherInfos() {
    print('Manager: $_nom, Salaire: $_salaire, Prime: $_prime');
  }
}

void main() {
  final employe = Employe(nom: 'Pierre', salaire: 2500);
  final manager = Manager(nom: 'Marie', salaire: 4000, prime: 1000);

  final employes = <Employe>[employe, manager];

  for (final e in employes) {
    e.afficherInfos(); // Polymorphisme
  }
}