import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CoreCubit<State> extends BlocBase<State> {
  CoreCubit(super.state);

  @override
  void emit(State state) {
    if (!isClosed) super.emit(state);
  }

  bool buildWhen(Object state) => state is StateBuilder;

  bool listenWhen(Object state) => state is StateListener;
}

abstract class StateBuilder {}

abstract class StateListener {}
