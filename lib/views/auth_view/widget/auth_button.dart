import 'package:flutter/material.dart';

class AuthButton extends StatefulWidget {
  const AuthButton({Key? key, required this.login, required this.onPressed}) : super(key: key);

  final bool login;
  final Function() onPressed;

  @override
  State<AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.topRight,
      child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.all(15)),
              elevation: MaterialStateProperty.all(10),
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(25)))),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.login
                    ? 'Login'.toUpperCase()
                    : 'Sing up'.toUpperCase(),
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              const Icon(Icons.arrow_forward_outlined,
                  size: 18)
            ],
          )),
    );
  }
}
