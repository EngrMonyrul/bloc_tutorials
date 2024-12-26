import 'package:equatable/equatable.dart';

class PersonWithEquatable extends Equatable {
  final String name;
  final int age;

  const PersonWithEquatable({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
}
