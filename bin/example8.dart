void main(List<String> args) {
  const jack = Person(
    name: 'Jack',
    age: 20,
  );

  print(ShortDescription(jack).description);
  print(LongDescriptionon(jack).description);
}

class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });
}

// short description of a person
extension ShortDescription on Person {
  String get description => '$name ($age)';
}

// long description of a person
extension LongDescriptionon on Person {
  String get description => '$name is $age years old';
}
