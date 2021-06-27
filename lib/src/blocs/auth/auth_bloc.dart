import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todoebloc/src/blocs/auth/auth_event.dart';
import 'package:flutter_todoebloc/src/blocs/auth/auth_states.dart';

class AuthBloc extends Bloc {
  AuthBloc(initialState) : super(initialState);

  @override
  Stream mapEventToState(event) async* {
    if (event is LogInWithGoogleEvent) {
      print('Login with Google Button Clicked');
      yield LoadingState();
    }
  }
}
