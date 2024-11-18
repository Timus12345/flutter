import 'package:flutter/material.dart';
import 'package:projects/theme/theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class reg_screen extends StatefulWidget {
  const reg_screen({super.key});

  @override
  State<reg_screen> createState() => _reg_screenState();
}

final SupabaseClient supabase = Supabase.instance.client;

final TextEditingController _nameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passController = TextEditingController();

Future<void> add_user() async{
  final email = _emailController.text;
  final name = _nameController.text;
  final password = _passController.text;

  await supabase.auth.signUp(
    email: email,
    password: password,
    data: {'username': name},
  );
}

class _reg_screenState extends State<reg_screen> {
  @override
  bool obscureText = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(right:290, top: 40 ),
              child: IconButton(onPressed: (){
                Navigator.pushReplacementNamed(context, '/');
              }, icon: Image.asset('assets/strelka.png', width: 50, height: 50,))
          ),
          Padding(padding: EdgeInsets.only(left: 0, right: 5, top: 10),
            child: Text('Регистрация',
              style: AppShrifts.ralewayBold32.copyWith(color: AppColors.black)
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Text('Заполните Свои Данные Или Продолжите Через Социальные Медиа',
              textAlign: TextAlign.center,
              style: AppShrifts.poppinsRegular16.copyWith(color: AppColors.grey)
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 260, top: 40),
            child: Text('Ваше имя',
              style: AppShrifts.ralewayMedium16.copyWith(color: AppColors.black)
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 5),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  fillColor: AppColors.lightGrey,
                  filled: true,
                  hintText: ('xxxxxxxx'),
                  hintStyle: AppShrifts.poppinsMedium14.copyWith(color: AppColors.darkGrey.withOpacity(0.6)),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide.none
                  )
              ),
              //style: (),
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 290, top: 20),
            child: Text('Email',
              style: AppShrifts.ralewayMedium16.copyWith(color: AppColors.black)
            ),
          ),
           Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 5),
            child: TextField(
              controller: _emailController,
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
              //style: (),
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 270, top: 20),
            child: Text('Пароль',
              style: AppShrifts.ralewayMedium16.copyWith(color: AppColors.black)
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _passController,
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
                        hintText: ('·········'),
                        hintStyle: AppShrifts.ralewayMedium16.copyWith(color: AppColors.darkGrey.withOpacity(0.6)),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 0, right: 30, top: 15),
            child: TextButton.icon(onPressed: ()
            {

            },
            icon: Image.asset('shield.png'),
              label: Text('Даю согласие на обработку персональных данных',
                  style: AppShrifts.ralewayMedium16.copyWith(color: AppColors.darkGrey, decoration: TextDecoration.underline)
                ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 10),
            child: ElevatedButton(onPressed: (){
              add_user();
              Navigator.pushReplacementNamed(context, '/');
            },
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  minimumSize: const Size(400, 50)
              ),
              child: Text('Зарегистрироватеься',
                style: AppShrifts.ralewaySemiBold14.copyWith(color: AppColors.white)
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 105),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Есть аккаунт? ",
                    style: AppShrifts.ralewayMedium16.copyWith(color: AppColors.darkGrey)
                  ),
                  InkWell(
                    onTap: ()
                    {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    child: Text("Войти",
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