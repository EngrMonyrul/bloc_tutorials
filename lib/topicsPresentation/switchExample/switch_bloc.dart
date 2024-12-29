import 'package:bloc/bloc.dart';
import 'package:bloc_tutorials/topicsPresentation/switchExample/switch_event.dart';
import 'package:bloc_tutorials/topicsPresentation/switchExample/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(const SwitchState()) {
    on<SwitchSliderEvent>(_sliderEvent);
    on<SwitchSwitchEvent>(_switchEvent);
  }

  void _sliderEvent(SwitchSliderEvent event, Emitter<SwitchState> emit) {
    emit(state.copyWith(sliderValue: event.value));
  }

  void _switchEvent(SwitchSwitchEvent event, Emitter<SwitchState> emit) {
    emit(state.copyWith(switchValue: !state.switchValue));
  }
}
