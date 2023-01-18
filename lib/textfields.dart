import 'package:apk11/checks.dart';
import 'package:apk11/showModalBottmSheetCustom.dart';
import 'package:flutter/material.dart';

class Textfields extends StatefulWidget {
  // const Textfields({super.key});

  @override
  State<Textfields> createState() => _TextfieldsState();
}

class _TextfieldsState extends State<Textfields> {
  bool value = false;
  TextEditingController firstName = TextEditingController();
  TextEditingController mobileNum = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController geners = TextEditingController();
  TextEditingController performanceType = TextEditingController();

  //
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: Color.fromARGB(255, 69, 63, 63),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Sign Up',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.left),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  'Let create your ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                Text(
                  'Account ',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            Divider(
              height: 25,
            ),
            Text("First Name\*",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.left),
            Divider(),
            TextField(
              controller: firstName,
              cursorColor: Colors.yellow,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 1,
                    color: Color.fromARGB(108, 228, 220, 220),
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white))),
            ),
            Divider(),
            Text("Mobile No*",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.left),
            Divider(),
            TextField(
              controller: mobileNum,
              cursorColor: Color.fromARGB(255, 248, 240, 17),
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  prefixIcon: TextButton(
                      child: Text(
                        '+91',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => {}),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 1,
                    color: Color.fromARGB(108, 228, 220, 220),
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white))),
            ),
            Divider(),
            Text("EMail",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.left),
            Divider(),
            TextField(
              controller: email,
              cursorColor: Color.fromARGB(255, 248, 240, 17),
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 1,
                    color: Color.fromARGB(108, 228, 220, 220),
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white))),
            ),
            Divider(),
            Text("Geners",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.left),
            Divider(),
            TextField(
              controller: geners,
              style: TextStyle(color: Colors.white),
              cursorColor: Color.fromARGB(255, 248, 240, 17),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 1,
                    color: Color.fromARGB(108, 228, 220, 220),
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white))),
            ),
            Divider(),
            Text("performance Type*",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.left),
            Divider(),
            TextField(
              controller: performanceType,
              style: TextStyle(color: Colors.white),
              cursorColor: Color.fromARGB(255, 248, 240, 17),
              decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    child: Icon(
                      Icons.arrow_downward,
                      color: Color.fromARGB(255, 202, 201, 197),
                    ),
                    onTap: (() => {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return ButtomCustomWidget();
                              }),
                        }),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 1,
                    color: Color.fromARGB(108, 228, 220, 220),
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white))),
            ),
            Divider(
              height: 55,
            ),
            Row(
              children: [
                DataChecks(),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'In Person',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 25,
                ),
                DataChecks(),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'virtual',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Divider(
              height: 50,
            ),
            SizedBox(
                width: 411,
                height: 55,
                child: ElevatedButton(
                  onPressed: (() => {}),
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 19),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
