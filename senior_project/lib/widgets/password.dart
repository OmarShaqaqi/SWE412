import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});


  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {

  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: _obscureText,
        decoration:  InputDecoration(
          suffixIcon: IconButton(
            onPressed: (){
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            icon: const Icon(Icons.remove_red_eye_outlined),
          ),
          hintText: "●●●●●●●●",
          filled: true,
          fillColor:const Color.fromARGB(255, 223, 247, 226),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(18.0),
            ),
          ),
        ),
      ),
    );
  }
}
