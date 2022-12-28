import 'package:flutter/widgets.dart';

class Logos extends StatelessWidget {
  const Logos({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/facebook.png"),
          const SizedBox(width: 24),
          Image.asset("assets/images/google.png")
        ],
      ),
    );
  }
}
