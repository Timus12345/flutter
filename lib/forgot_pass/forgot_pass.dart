import 'package:flutter/material.dart';

class forgot_pass extends StatefulWidget {
  const forgot_pass({super.key});

  @override
  State<forgot_pass> createState() => _forgot_passState();
}

class _forgot_passState extends State<forgot_pass> {
  @override
  bool obscureText = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 320, top: 40),
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
          const Padding(
            padding: EdgeInsets.only(left: 0, right: 10, top: 20),
            child: Text(
              'Забыл Пароль!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 80, right: 80, top: 10),
            child: Text(
              'Введите Свою Учетную Запись Для Сброса',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Color(0xFFF7F7F9),
                filled: true,
                hintText: ('xyz@gmail.com'),
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.black45),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: ElevatedButton(
              onPressed: () {
                showForgotPasswordDialog(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  minimumSize: const Size(400, 50)),
              child: const Text(
                'Отправить',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void showForgotPasswordDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('email.png'),
          const Text(
            "Проверьте Ваш Email",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20),
          const Text(
            "Мы Отправили Код Восстановления Пароля На Вашу Электронную Почту.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    );

      },
  );

  Future.delayed(Duration(seconds: 3), () {
    Navigator.of(context).pushReplacementNamed('/verify');
  });
}
