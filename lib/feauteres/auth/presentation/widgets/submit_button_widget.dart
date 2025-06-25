import 'package:flutter/material.dart';

class SubmitButtonWidget extends StatelessWidget {
  const SubmitButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Kirish', style: TextStyle(color: Colors.white)),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(380, 55),
        elevation: 0,
        backgroundColor: Color(0xff6A5AE0),
      ),
    );
  }
}
