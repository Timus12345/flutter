import 'package:flutter/material.dart';

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  @override
  bool obscureText = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(right:320, top: 40 ),
              child: IconButton(onPressed: (){}, icon: Image.asset('assets/strelka.png', width: 50, height: 50,))
          ),
          const Padding(padding: EdgeInsets.only(left: 0, right: 10, top: 20),
            child: Text('Привет!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 50, right: 50, top: 10),
            child: Text('Заполните Свои Данные Или Продолжите Через Социальные Медиа',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(right: 320, top: 40),
            child: Text('Email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Color(0xFFF7F7F9),
                  filled: true,
                  hintText: ('xyz@gmail.com'),
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black45
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide.none
                  )
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(right: 310, top: 40),
            child: Text('Пароль',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      obscureText: obscureText,
                      obscuringCharacter: ('·'),
                      decoration: InputDecoration(
                        suffixIcon:
                        IconButton(
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          icon: Icon(
                            obscureText ? Icons.visibility_off : Icons.visibility,
                            color: Colors.black,

                          ),
                        ),
                        fillColor: const Color(0xFFF7F7F9),
                        filled: true,
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide.none
                        ),
                        hintText: ('··········'),
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 270, right: 0, top: 1),
              child: TextButton(onPressed: (){
                Navigator.pushReplacementNamed(context, '/forgot');
              },
                  child: Text('Восстановить'))
          ),
          Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 30),
            child: ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)

                  ),
                  minimumSize: const Size(400, 50)
              ),
              child: const Text('Войти',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                ),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 240),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Вы впервые? ",
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 16
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
                      Navigator.pushReplacementNamed(context, '/reg');
                    },
                    child: const Text("Создать пользователя",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                      ),
                    ),
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}