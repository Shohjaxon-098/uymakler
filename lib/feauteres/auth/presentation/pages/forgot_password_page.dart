import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text('Parolni tiklash'),
        titleTextStyle: TextStyle(
          color: Color(0xff49465F),
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        leading: BackButton(
          color: Color(0xff212121),
          style: ButtonStyle(iconSize: WidgetStatePropertyAll(26)),
        ),
      ),
      body: Column(),
    );
  }
}
