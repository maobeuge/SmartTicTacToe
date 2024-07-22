import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarttictactoe/domain/state_management/navigation/navigation_bloc.dart';

void mainDelegate() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (BuildContext context) =>
            NavigationBloc()..add(const LoadNavigation()),
        child: BlocBuilder<NavigationBloc, NavigationState>(
            builder: (context, state) {
          if (state is NavigationLoaded) {
            return state.screen.screenContent;
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        }),
      ),
    );
  }
}
