import 'package:flutter/material.dart';

class LoadIndicator extends StatelessWidget {
  const LoadIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
        //لو الداتا موجودة ومفيهاش error بس لسة محملت
        hasScrollBody: false,
        child: Center(
          child: CircularProgressIndicator(),
        ));
  }
}