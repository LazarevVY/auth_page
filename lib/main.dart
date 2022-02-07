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
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Column (
              children: [
                const SizedBox(height: 60,),
                const SizedBox(
                  width: 110,
                  height: 84,
                  child: Placeholder(),
                ),
                const SizedBox(height: 20,),
                const Text("Введите логин в виде 10 цифр номера телефона",
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(0, 0, 0, 0.6)
                ),
                ),
                const SizedBox(height: 20,),
                const SizedBox(
                  width: 224,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFECEFF1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: "Телефон",
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                const SizedBox(
                  width: 224,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFECEFF1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: "Пароль",
                    ),
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
          )
      ),
    );
  }
}
