import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:projects/theme/theme.dart';

class verification_screen extends StatelessWidget {
  const verification_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 290, top: 40),
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              icon: Image.asset(
                'assets/strelka.png',
                width: 50,
                height: 50,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 40),
            child: Text('OTP проверка',
              style: AppShrifts.ralewayBold32.copyWith(color: AppColors.black)
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 40, right: 40),
            child: Text("Пожалуйста, Проверьте Свою Электронную Почту, Чтобы Увидеть Код Подтверждения",
              textAlign: TextAlign.center,
              style: AppShrifts.poppinsRegular16.copyWith(color: AppColors.grey)
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10, right: 230),
            child: Text("OTP Код",
              style: AppShrifts.ralewaySemiBold21.copyWith(color: AppColors.black)
            ),
          ),
          OtpTextField(
              fieldWidth: 50,
              numberOfFields: 6,
              borderWidth: 30,
              keyboardType: TextInputType.number,
              cursorColor: AppColors.white,
              borderColor: AppColors.red, // используем переданный цвет
              showFieldAsBox: true,
              borderRadius: BorderRadius.zero,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {}
          ),
        ],
      ),
    );
  }
}