import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

PreferredSize appBarDefault(){
  return PreferredSize(
    preferredSize: Size.zero,
    child: AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
  );
}