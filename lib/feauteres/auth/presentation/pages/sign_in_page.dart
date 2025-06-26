import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uymakler/feauteres/auth/presentation/pages/forgot_password_page.dart';
import 'package:uymakler/feauteres/auth/presentation/pages/sign_up_page.dart';
import 'package:uymakler/feauteres/auth/presentation/widgets/auth_field_widget.dart';
import 'package:uymakler/feauteres/auth/presentation/widgets/remember_me_checkbox_widget.dart';
import 'package:uymakler/feauteres/auth/presentation/widgets/submit_button_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController mailController = TextEditingController();

    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text('Accountga kirish'),
        titleTextStyle: TextStyle(
          color: Color(0xff49465F),
          fontSize: 36,
          fontWeight: FontWeight.w700,
        ),
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            AuthFieldWidget(
              controller: mailController,
              prefixIcon: 'assets/icons/mail.svg',
              hintText: 'Email',
            ),

            SizedBox(height: 24),
            AuthFieldWidget(
              controller: passwordController,
              prefixIcon: 'assets/icons/lock.svg',
              hintText: 'Parol',
              isPasswordField: true,
            ),

            SizedBox(height: 24),
            RememberMeCheckbox(),
            SizedBox(height: 24),
            SubmitButtonWidget(),
            SizedBox(height: 24),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              child: Text(
                'Parolni unutdingizmi?',
                style: TextStyle(
                  color: Color(0xff6A5AE0),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Yoki',
                    style: TextStyle(
                      color: Color(0xff616161),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffEEEEEE)),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    SvgPicture.asset('assets/icons/google.svg'),
                    Text('Google orqali davom etish'),
                  ],
                ),
              ),
            ),
            Spacer(),
            Row(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Akkountingiz bormi?',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff9E9E9E),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: Text(
                    'Ro’yxatdan o’tish',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xff6A5AE0),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
