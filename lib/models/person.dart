class Person {
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  // ----------------------------
  // check all the equality of 2 or more object
  // ----------------------------
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;

  // --------------------------------
  // return the hashcode for the name and age
  // --------------------------------
  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
