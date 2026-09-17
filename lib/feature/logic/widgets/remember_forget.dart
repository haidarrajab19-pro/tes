import 'package:flutter/material.dart';

class RememberForgetWidget extends StatefulWidget {
  const RememberForgetWidget({super.key});

  @override
  State<RememberForgetWidget> createState() => _RememberForgetWidgetState();
}

class _RememberForgetWidgetState extends State<RememberForgetWidget> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: rememberMe,
              activeColor: const Color(0xFF00C853),
              onChanged: (value) {
                setState(() {
                  rememberMe = value ?? false;
                });
              },
            ),
            const Text(
              "Remember me",
              style: TextStyle(color: Colors.white70, fontSize: 13),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Forgot Password?",
            style: TextStyle(color: Color(0xFF00C853), fontSize: 13),
          ),
        ),
      ],
    );
  }
}