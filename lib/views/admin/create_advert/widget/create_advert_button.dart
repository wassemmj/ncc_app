import 'package:flutter/material.dart';

class CreateAdvertButton extends StatefulWidget {
  const CreateAdvertButton({Key? key}) : super(key: key);

  @override
  State<CreateAdvertButton> createState() => _CreateAdvertButtonState();
}

class _CreateAdvertButtonState extends State<CreateAdvertButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(18)),
              elevation: MaterialStateProperty.all(10),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)))),
          child: const Text(
            'Create',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w400),
          )),
    );
  }
}
