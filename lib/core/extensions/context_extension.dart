import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Future<void> push(Widget view) async {
    await Navigator.of(this).push(MaterialPageRoute(builder: (ctx) => view));
  }

  Future<void> pop() async {
    Navigator.of(this).pop();
  }
}
