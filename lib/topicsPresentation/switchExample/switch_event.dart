import 'package:equatable/equatable.dart';

class SwitchEvent extends Equatable {
  const SwitchEvent();

  @override
  List<Object?> get props => [];
}

class SwitchSliderEvent extends SwitchEvent {
  const SwitchSliderEvent({required this.value});

  final double value;

  @override
  List<Object?> get props => [value];
}

class SwitchSwitchEvent extends SwitchEvent {}
