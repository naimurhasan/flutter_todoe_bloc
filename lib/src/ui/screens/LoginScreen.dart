import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todoebloc/src/blocs/auth/auth_bloc.dart';
import 'package:flutter_todoebloc/src/blocs/auth/auth_event.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xff28b0ee), Color(0xff0064c6)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Welcome to TodoeBloc',
              style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()..shader = linearGradient,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            OutlinedButton(
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context)
                      .add(LogInWithGoogleEvent());
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/google.jpg',
                      width: 40.0,
                    ),
                    Text("Sign in with google"),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
