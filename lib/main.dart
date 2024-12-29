import 'package:bloc_tutorials/topicsPresentation/counter/bloc_counter.dart';
import 'package:bloc_tutorials/topicsPresentation/counterBloc/counter_bloc.dart';
import 'package:bloc_tutorials/topicsPresentation/switchExample/switch_bloc.dart';
import 'package:bloc_tutorials/topicsPresentation/switchExample/switch_exmple_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => SwitchBloc(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SwitchExmpleView(),
      ),
    );
  }
}
