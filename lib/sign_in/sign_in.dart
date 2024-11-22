import 'package:flutter/material.dart';
import 'package:projects/theme/theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _sign_inState();
}

final SupabaseClient supabase = Supabase.instance.client;

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passController = TextEditingController();

Future<void> sign_user() async{
  final email = _emailController.text;
  final password = _passController.text;

  await supabase.auth.signInWithPassword(
    email: email,
    password: password,
  );
}

class _sign_inState extends State<sign_in> {
  @override
  bool obscureText = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.only(right:290, top: 40 ),
              child: IconButton(onPressed: (){}, icon: Image.asset('assets/strelka.png', width: 50, height: 50,))
          ),
          Padding(padding: const EdgeInsets.only(left: 0, right: 10, top: 20),
            child: Text('Привет!',
              style: AppShrifts.ralewayBold32.copyWith(color: AppColors.black)
            ),
          ),
          Padding(padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Text('Заполните Свои Данные Или Продолжите Через Социальные Медиа',
              textAlign: TextAlign.center,
              style: AppShrifts.poppinsRegular16.copyWith(color: AppColors.grey)
            ),
          ),
          Padding(padding: const EdgeInsets.only(right: 300, top: 40),
            child: Text('Email',
              style: AppShrifts.ralewayMedium16.copyWith(color: AppColors.black)
            ),
          ),
          Padding(padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            child: TextField(
              cursorColor: AppColors.black,
              decoration: InputDecoration(
                  fillColor: AppColors.lightGrey,
                  filled: true,
                  hintText: ('xyz@gmail.com'),
                  hintStyle: AppShrifts.poppinsMedium14.copyWith(color: AppColors.darkGrey.withOpacity(0.6)),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide.none
                  )
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.only(right: 280, top: 40),
            child: Text('Пароль',
              style: AppShrifts.ralewayMedium16.copyWith(color: AppColors.black)
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
                      cursorColor: AppColors.black,
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
                        fillColor: AppColors.lightGrey,
                        filled: true,
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide.none
                        ),
                        hintText: ('··········'),
                        hintStyle: AppShrifts.poppinsMedium14.copyWith(color: AppColors.darkGrey.withOpacity(0.6))
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.only(left: 250, right: 0, top: 1),
              child: TextButton(onPressed: (){
                Navigator.pushReplacementNamed(context, '/forgot');
              },
                  child: Text('Восстановить', style: AppShrifts.poppinsRegular12.copyWith(color: AppColors.grey),))
          ),
          Padding(padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
            child: ElevatedButton(onPressed: () {
              sign_user();
              Navigator.pushReplacementNamed(context, '/home');
            },
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)

                  ),
                  minimumSize: const Size(400, 50)
              ),
              child: Text('Войти',
                style: AppShrifts.ralewaySemiBold14.copyWith(color: AppColors.white)
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 160),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Вы впервые? ",
                    style: AppShrifts.ralewayMedium16.copyWith(color: AppColors.darkGrey)
                  ),
                  InkWell(
                    onTap: ()
                    {
                      Navigator.pushReplacementNamed(context, '/reg');
                    },
                    child: Text("Создать пользователя",
                      style: AppShrifts.ralewayMedium16.copyWith(color: AppColors.black)
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