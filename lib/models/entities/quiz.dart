class Quiz {
  int id;
  String statement;
  DateTime created;
  int points;

  Quiz({
    required this.id,
    required this.statement,
    required this.points,
    required this.created,
  });

  // Método para crear una instancia desde un mapa (JSON)
  factory Quiz.fromJson(Map<String, dynamic> json) {
    return Quiz(
      id: json['id'],
      statement: json['statement'],
      points: json['points'],
      created: json['created'],
    );
  }

  // Método para convertir la instancia a un mapa (JSON)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'statement': statement,
      'points': points,
      'created': created,
    };
  }

  @override
  String toString() {
    return 'User(id: $id, statement: $statement, points: $points, created: $created)';
  }
}