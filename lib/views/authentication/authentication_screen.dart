import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smarttictactoe/domain/state_management/navigation/navigation_bloc.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Authentication screen",
          ),
          ElevatedButton(
            onPressed: () => context
                .read<NavigationBloc>()
                .add(ChangeScreen(screenLabel: "game")),
            child: const Text("CLICK"),
          )
        ],
      ),
    );
  }
}
