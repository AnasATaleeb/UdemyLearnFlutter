import 'package:flutter/material.dart';

Widget defultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  required Function()  function,
  required String text,
  bool isUpperCase = true,
}) =>  Container(
  width: width,

  child: MaterialButton(
    onPressed: function,
    child: Text(
      isUpperCase ? text.toUpperCase() : text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: background,
  ),
);


Widget defultFormField({
  required TextEditingController controller,
  required TextInputType type,
  onSubmitted,
  onChange,
  bool isPassword = false,
  required validate,
  required String label,
  required IconData prefix,
  suffix,
  suffixPressed,

}) => TextFormField(
  controller: controller,
  keyboardType: type,
  onFieldSubmitted: onSubmitted,
  onChanged: onChange,
  validator: validate,
  obscureText: isPassword,
  decoration: InputDecoration(
    labelText: label,
    border: OutlineInputBorder(),
    prefixIcon: Icon(
      prefix,
    ),
    suffixIcon: suffix != null ?  IconButton(
      onPressed: suffixPressed,
      icon: Icon(
        suffix,
      ),
    ) : null ,
  ),
);