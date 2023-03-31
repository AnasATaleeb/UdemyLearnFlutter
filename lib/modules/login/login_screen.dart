import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/shared/comppnents/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPasswordShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
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
                  defultFormField(
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      validate: (value)
                      {
                        if(value.isEmpty){
                          return 'email must not be empty';
                        }
                        return null;
                      },
                      label: 'Email',
                      prefix: Icons.email,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  defultFormField(
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    validate: (value)
                    {
                      if(value.isEmpty){
                        return 'password is too short';
                      }
                      return null;
                    },
                    label: 'Password',
                    prefix: Icons.lock,
                    suffix: isPasswordShow ? Icons.visibility : Icons.visibility_off,
                    isPassword: isPasswordShow,
                    suffixPressed: (){
                      setState(() {
                        isPasswordShow = !isPasswordShow;
                      });
                    }
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  defultButton(
                    text: 'Login',
                    width: double.infinity,
                    background: Colors.blue,
                    function: () {
                      if (formKey.currentState!.validate()) {
                        print(passwordController.text);
                        print(emailController.text);
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  defultButton(function: () {}, text: 'Register'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account ?',
                      ),
                      TextButton(
                        onPressed: () {},
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
      ),
    );
  }
}
