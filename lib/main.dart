import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(home: sign_in()));
}

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(right:320, top: 40 ),
          child: IconButton(onPressed: (){}, icon: Image.asset('assets/strelka.png', width: 50, height: 50,))
          ),
          const Padding(padding: EdgeInsets.only(left: 20, top: 20),
            child: Text('Привет!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 50, right: 50, top: 10),
            child: Text('Заполните Свои данные или продолжите через социальные медиа',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
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
                  hintText: ('xyz@gmail.com'),
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black45
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                )
              ),
              //style: (),
            ),
          ),
          const Padding(padding: EdgeInsets.only(right: 320, top: 40),
            child: Text('Пароль',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: TextField(
              obscureText: true,
              obscuringCharacter: ('·'),
              decoration: InputDecoration(
                  hintText: ('··········'),
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black45
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  )
              ),
              //style: (),
              // const Padding(padding: EdgeInsets.only(left: 10, right: 10, top: 0 ),
              //     child: IconButton(onPressed: (){}, icon: Image.asset('assets/glas.png', width: 50, height: 50,))
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 270, right: 0, top: 1),
            child: TextButton(onPressed: (){}, child: Text('Восстановить'))
          ),
        ],
      ),
    );
  }
}
