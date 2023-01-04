// ignore_for_file: camel_case_types, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:liuid_swipe/utils/utils.dart';
import 'package:liuid_swipe/components/components.dart';


class liquid_style extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
      Scaffold(
      body: LiquidSwipe(pages:image_path.map((e) {
        return container(path: e,string:text.elementAt(image_path.indexOf(e))
      );}).toList() ,
          waveType: WaveType.liquidReveal,
       fullTransitionValue: 880,
      slideIconWidget: const Icon(Icons.arrow_back_ios),
        enableSideReveal: true,
        ignoreUserGestureWhileAnimating: true)
    ));
  }
}