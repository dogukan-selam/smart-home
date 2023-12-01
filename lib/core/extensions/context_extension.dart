import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Future<void> push<T>(Widget view) async {
    await Navigator.of(this).push(MaterialPageRoute<T>(builder: (ctx) => view));
  }
}
