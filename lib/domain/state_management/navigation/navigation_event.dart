part of 'navigation_bloc.dart';

sealed class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  List<Object> get props => [];
}

class LoadNavigation extends NavigationEvent {
  const LoadNavigation();

  @override
  List<Object> get props => [];
}

class ChangeScreen extends NavigationEvent {
  final String screenLabel;

  const ChangeScreen({required this.screenLabel});

  @override
  List<Object> get props => [screenLabel];
}
