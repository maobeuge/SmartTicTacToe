import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class ScreenModel extends Equatable {
  final int id;
  final String label;
  final Widget screenContent;

  const ScreenModel(
      {required this.id, required this.label, required this.screenContent});

  @override
  List<Object?> get props => [id, label, screenContent];
}
