import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  String Message;
  ErrorMessage({
    super.key,required this.Message
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Text(Message),
    );
  }
}