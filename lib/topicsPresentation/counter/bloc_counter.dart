import 'package:bloc/bloc.dart';
import 'package:bloc_tutorials/topicsPresentation/counterBloc/counter_bloc.dart';
import 'package:bloc_tutorials/topicsPresentation/counterBloc/counter_event.dart';
import 'package:bloc_tutorials/topicsPresentation/counterBloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocCounter extends StatelessWidget {
  const BlocCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text(
                    "${state.count}",
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  );
                },
              ),
              Row(
                spacing: 20,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(IncrementEvent());
                      },
                      child: const Text(
                        "Increment",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(DecrementEvent());
                      },
                      child: const Text(
                        "Decrement",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
