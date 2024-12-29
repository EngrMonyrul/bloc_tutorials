import 'package:bloc_tutorials/topicsPresentation/switchExample/switch_bloc.dart';
import 'package:bloc_tutorials/topicsPresentation/switchExample/switch_event.dart';
import 'package:bloc_tutorials/topicsPresentation/switchExample/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchExmpleView extends StatelessWidget {
  const SwitchExmpleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Notification Listener",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const Spacer(),
                    BlocBuilder<SwitchBloc, SwitchState>(
                        buildWhen: (previous, current) => previous != current,
                        builder: (context, state) {
                          return Switch(
                            value: state.switchValue,
                            onChanged: (value) {
                              context
                                  .read<SwitchBloc>()
                                  .add(SwitchSwitchEvent());
                            },
                          );
                        }),
                  ],
                ),
                BlocBuilder<SwitchBloc, SwitchState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.circular(state.sliderValue * 100),
                          ),
                        ),
                        SliderTheme(
                          data: const SliderThemeData(
                            trackHeight: 20,
                            trackShape: RoundedRectSliderTrackShape(),
                            activeTrackColor: Colors.green,
                            thumbColor: Colors.green,
                          ),
                          child: Slider(
                            value: state.sliderValue,
                            onChanged: (value) {
                              context
                                  .read<SwitchBloc>()
                                  .add(SwitchSliderEvent(value: value));
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
