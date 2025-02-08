import 'package:flutter/material.dart';

AppBar customSearchAppBar(BuildContext context) {
  return AppBar(
    actions: [Container()],
    backgroundColor: Colors.white,
    leading: GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: const Icon(Icons.arrow_back_ios, color: Colors.black),
      ),
    ),
  );
}
