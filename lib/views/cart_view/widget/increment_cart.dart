import 'package:flutter/material.dart';

class IncrementCart extends StatefulWidget {
  const IncrementCart({Key? key}) : super(key: key);

  @override
  State<IncrementCart> createState() => _IncrementCartState();
}

class _IncrementCartState extends State<IncrementCart> {
  int _currentCount = 1;
  double height = 0,width = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      height: 20,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.black12.withOpacity(0.04),
      ),
      child: Row(
        children: [
          _createIncrementDicrementButton(
              Icons.remove,
                  () => _dicrement(),
              Colors.white,
              Colors.black),
          SizedBox(width: width*0.009,),
          Text(
            _currentCount.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          SizedBox(width: width*0.009,),
          _createIncrementDicrementButton(
              Icons.add,
                  () => _increment(),
              Colors.black,
              Colors.white),
        ],
      ),
    );
  }
  void _increment() {
    setState(() {
      _currentCount++;
    });
  }

  void _dicrement() {
    setState(() {
      if (_currentCount > 1) {
        _currentCount--;
      }
    });
  }

  Widget _createIncrementDicrementButton(IconData icon, Function() onPressed, Color fillColor, Color iconColor) {
    return RawMaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      constraints: BoxConstraints(minWidth: width* 0.07, minHeight: height * 0.07),
      onPressed: onPressed,
      elevation: 0,
      fillColor: fillColor,
      shape: const CircleBorder(side: BorderSide(color: Colors.black)),
      child: Icon(
        icon,
        color: iconColor,
        size: (height * .02),
      ),
    );
  }
}
