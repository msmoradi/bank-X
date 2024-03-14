import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'assist_event.dart';

part 'assist_state.dart';

@injectable
class AssistBloc extends Bloc<AssistEvent, AssistState> {
  AssistBloc() : super(const AssistSuccess());
}
