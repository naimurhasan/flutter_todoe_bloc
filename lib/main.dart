import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todoebloc/src/app.dart';
import 'package:flutter_todoebloc/src/blocs/note/note_bloc.dart';
import 'package:flutter_todoebloc/src/blocs/note/note_states.dart';
import 'package:flutter_todoebloc/src/repositories/note_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(BlocProvider<NoteBloc>(
      create: (context) => NoteBloc(InitState(), NoteRepository()),
      child: MyApp()));
}
