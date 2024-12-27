import 'dart:developer';
import 'package:bloc_tutorials/models/person.dart';
import 'package:bloc_tutorials/models/person_with_equatable.dart';
import 'package:flutter/material.dart';

/// -------------------------------------
/// normal equality testing
/// -------------------------------------
class EqExm1 extends StatefulWidget {
  const EqExm1({super.key});

  @override
  State<EqExm1> createState() => _EqExm1State();
}

class _EqExm1State extends State<EqExm1> {
  /* <<--------->> methods <<---------->> */
  void testingMethod() {
    /* <<--------->> general persons <<---------->> */
    Person person1 = Person(name: "Monirul", age: 25);
    Person person2 = Person(name: "Monirul", age: 25);

    /* <<--------->> print <<---------->> */
    log("Hashcode for Person 1 :: ${person1.hashCode}");
    log("Hashcode for Person 2 :: ${person2.hashCode}");
    log("Matching Objects :: ${person1 == person2}");

    /* <<--------->> general persons <<---------->> */
    PersonWithEquatable personWithEquatable1 =
        PersonWithEquatable(name: "Monirul", age: 25);
    PersonWithEquatable personWithEquatable2 =
        PersonWithEquatable(name: "Monirul", age: 25);

    /* <<--------->> print <<---------->> */
    log("Hashcode for PersonWithEquatable 1 :: ${personWithEquatable1.hashCode}");
    log("Hashcode for PersonWithEquatable 2 :: ${personWithEquatable2.hashCode}");
    log("Matching Objects :: ${personWithEquatable1 == personWithEquatable2}");

    /* <<--------->> check equatable props <<---------->> */
    log("Equatable Props :: ${personWithEquatable1.props}");
  }

  /* <<--------->> build method <<---------->> */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* <<--------->> floating action button <<---------->> */
      floatingActionButton: FloatingActionButton(
        onPressed: testingMethod,
        child: const Icon(Icons.add),
      ),
    );
  }
}

/// Equatable
/// __Description__
/// In this example what we learn from equable:
/// 1. Equatable used to check the object equality
///
/// In this example what we learn from scratch:
/// 1. If we declare any variable with const it will check equality automatic
