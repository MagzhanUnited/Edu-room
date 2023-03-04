import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_helpful_app/components/my_button.dart';
import 'package:flutter_helpful_app/components/my_text_field.dart';
import 'package:flutter_helpful_app/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1),
              child: Icon(
                Icons.lock,
                size: 140,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 40),
              child: Text(
                'Қайта оралуыңызбен құттықтаймыз!',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
            MyTextField(
              controller: usernamecontroller,
              obscureText: false,
              hintText: 'Логин',
            ),
            SizedBox(height: 15),
            MyTextField(
              controller: passwordcontroller,
              obscureText: true,
              hintText: 'Пароль',
            ),
            Row(
              children: [
                Expanded(child: SizedBox()),
                TextButton(onPressed: null, child: Text('Пароль ұмыттыңыз?')),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            SizedBox(height: 5),
            MyButton(onTap: signUserIn),
            SizedBox(height: 30),
            UIcomponent(),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(imagePath: 'images/google.png', height: 72),
                SizedBox(width: 25),
                SquareTile(imagePath: 'images/phon.png', height: 72)
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ұмытып қалдың ба?',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(width: 2),
                TextButton(
                    onPressed: null,
                    child: Text(
                      'Регестрация',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  UIcomponent() {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.grey[400],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text('Немесе аккаунтыңа кір'),
        ),
        Expanded(
          child: Divider(
            thickness: 0.5,
            color: Colors.grey[400],
          ),
        )
      ],
    );
  }
}
