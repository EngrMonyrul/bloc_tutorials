import 'dart:developer';
import 'package:bloc_tutorials/models/person.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* <<--------->> floating action button <<---------->> */
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /* <<--------->> persons <<---------->> */
          Person person1 = Person(name: "Monirul", age: 25);
          Person person2 = Person(name: "Monirul", age: 25);

          /* <<--------->> print <<---------->> */
          log("Matching Objects :: ${person1 == person2}");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
