import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class LikedScreen extends StatelessWidget {
  const LikedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBarHeader(
      isleading: true,
      centerTitle: true,
      title: Text("F-Liked"),
      actions: [
        CustomIconButton(icon: HugeIcons.strokeRoundedNotification02)
      ],
    ));
  }
}
