import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smarttictactoe/domain/models/screen_model.dart';
import 'package:smarttictactoe/views/authentication/authentication_screen.dart';
import 'package:smarttictactoe/views/game/game_screen.dart';
import 'package:smarttictactoe/views/landing/landing_screen.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

enum NavigationEnum { authenticate, landing, game }

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  List<ScreenModel> screens = [
    const ScreenModel(
      id: 0,
      label: "authenticate",
      screenContent: AuthenticationScreen(),
    ),
    const ScreenModel(
      id: 1,
      label: "landing",
      screenContent: LandingScreen(),
    ),
    const ScreenModel(
      id: 2,
      label: "game",
      screenContent: GameScreen(),
    )
  ];
  int index = 0;

  NavigationBloc() : super(NavigationInitial()) {
    on<LoadNavigation>((event, emit) {
      emit(NavigationLoaded(screen: screens[index]));
    });

    on<ChangeScreen>((event, emit) {
      for (var label in NavigationEnum.values) {
        if (label.toString().split('.').last == event.screenLabel) {
          index = label.index;
        }
      }
      emit(NavigationLoaded(screen: screens[index]));
    });
  }
}
