part of 'navigation_bloc.dart';

sealed class NavigationState extends Equatable {
  const NavigationState();

  @override
  List<Object> get props => [];
}

final class NavigationInitial extends NavigationState {}

class NavigationLoaded extends NavigationState {
  final ScreenModel screen;

  const NavigationLoaded({required this.screen});

  @override
  List<Object> get props => [screen];
}
