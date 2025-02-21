
import 'package:flutter/material.dart';

void showMyBottomSheet(BuildContext context, {required Widget child}) {
  showModalBottomSheet(
    context: context,
    elevation: 2,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    sheetAnimationStyle: AnimationStyle(
      duration: const Duration(milliseconds: 700),
    ),
    builder: (BuildContext context) {
      return child;
    },
    
  );
}
