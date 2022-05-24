import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);
 
  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}
 
class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Login To Your Account',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.w700,
                  ),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password ?',style: TextStyle(
                color: Color.fromARGB(255, 118, 153, 217),
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: 
                ElevatedButton(
                  child: const Text('LOGIN', style: TextStyle(fontSize:20, fontWeight: FontWeight.bold)),
    
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                   style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 3, 102, 147),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)),
                ),
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?',
                style:TextStyle( color: Colors.black87,
                fontWeight: FontWeight.bold)
                ),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20,
                    color: Colors.blueAccent,fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}