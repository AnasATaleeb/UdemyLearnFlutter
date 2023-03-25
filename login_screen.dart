import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                    'Login',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,

                  ),
                ),

                SizedBox(
                  height: 40,
                ),

                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Email Adress',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),

                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  width: double.infinity,
                  color: Colors.blue,

                  child: MaterialButton(
                      onPressed: (){
                        print(emailController.text);
                        print(passwordController.text);
                      },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account ?',
                    ),

                    TextButton(onPressed: (){},
                        child: Text(
                          'Register Now',
                        ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
