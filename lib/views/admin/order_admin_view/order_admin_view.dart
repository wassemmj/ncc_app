import 'package:flutter/material.dart';

class OrderAdminView extends StatefulWidget {
  const OrderAdminView({Key? key}) : super(key: key);

  @override
  State<OrderAdminView> createState() => _OrderAdminViewState();
}

class _OrderAdminViewState extends State<OrderAdminView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: height * 0.05,
                width: width,
                margin: EdgeInsets.all(height * 0.022),
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black54, width: 0.4),
                    )),
                child: SizedBox(
                  width: width / 2.2,
                  child: const Text(
                    'New Order',
                    style: TextStyle(
                        letterSpacing: 0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                    maxLines: 2,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: height * 0.05,
                width: width,
                margin: EdgeInsets.all(height * 0.022),
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black54, width: 0.4),
                    )),
                child: SizedBox(
                  width: width / 2.2,
                  child: const Text(
                    'Last Order',
                    style: TextStyle(
                        letterSpacing: 0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                    maxLines: 2,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: height * 0.05,
                width: width,
                margin: EdgeInsets.all(height * 0.022),
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black54, width: 0.4),
                    )),
                child: SizedBox(
                  width: width / 2.2,
                  child: const Text(
                    'Today Delivered Order',
                    style: TextStyle(
                        letterSpacing: 0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                    maxLines: 2,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: height * 0.05,
                width: width,
                margin: EdgeInsets.all(height * 0.022),
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black54, width: 0.4),
                    )),
                child: SizedBox(
                  width: width / 2.2,
                  child: const Text(
                    'Balance',
                    style: TextStyle(
                        letterSpacing: 0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                    maxLines: 2,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: height * 0.05,
                width: width,
                margin: EdgeInsets.all(height * 0.022),
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black54, width: 0.4),
                    )),
                child: SizedBox(
                  width: width / 2.2,
                  child: const Text(
                    'Stock',
                    style: TextStyle(
                        letterSpacing: 0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                    maxLines: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
