void main(List<String> args) {
  print([1, 2, 3].containsDuplicateValues);
  print([1, 2, 3, 1].containsDuplicateValues);
  print(['Foo', 'Bar'].containsDuplicateValues);
  print(['Foo', 'Bar', 'Foo'].containsDuplicateValues);
  print(['Foo', 'Bar', 'foo'].containsDuplicateValues);
}

extension on Iterable {
  bool get containsDuplicateValues => toSet().length != length;
}
