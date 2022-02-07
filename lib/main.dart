import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(
        color: const Color(0xffeceff1),
        width: 5
      )
    );
    const linkTextStyle = TextStyle(
        fontSize: 16,
        color: Color(0xFF0079D0)
    );
    return MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg1.jpeg"),
                  fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: SingleChildScrollView(
              child: Column (
                children: [
                  const SizedBox(height: 150,),
                  const SizedBox(
                    width: 110,
                    height: 84,
                    child: Image(image: AssetImage("assets/images/dart-logo-bird.jpeg",
                    ),),
                  ),
                  const SizedBox(height: 20,),
                  const Text("Введите логин в виде 10 цифр номера телефона",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(0, 0, 0, 0.6)
                  ),
                  ),
                  const SizedBox(height: 20,),
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFECEFF1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: "Телефон",
                    ),
                  ),
                  const SizedBox(height: 20,),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFECEFF1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: "Пароль",
                    ),
                  ),
                  const SizedBox(height: 28,),
                  SizedBox(
                      width: 154, height: 42,
                      child: ElevatedButton(onPressed: (){}, child: Text("Войти"),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0079D0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36.0)
                        ),
                      ),
                      )
                  ),
                  const SizedBox(height: 62,),
                  InkWell(child: const Text("Регистрация", style: linkTextStyle),
                    onTap: () {}
                  ),
                  const SizedBox(height: 20,),
                  InkWell(child: Text("Забыли пароль?",  style: linkTextStyle),
                    onTap: () {},),
                ],
              ),
            ),
          )
      ),
    );
  }
}
