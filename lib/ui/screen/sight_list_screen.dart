import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  int counter = 0;
  double counterWidth = 50;
  Color defaultColor = Colors.white;

  void _increment() {
    setState(() {
      counter += 1;
      if (counter >= 100) counterWidth = 80;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(128),
        child: AppBar(
          backgroundColor: defaultColor,
          elevation: 0,
          toolbarHeight: 128,
          title: RichText(
            textAlign: TextAlign.left,
            text: const TextSpan(
              style: TextStyle(
                color: Color.fromRGBO(37, 40, 73, 1),
                fontFamily: "Roboto",
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                fontSize: 32,
                height: 1.12,
              ),
              children: [
                TextSpan(
                  text: "C",
                  style: TextStyle(
                    color: Color.fromRGBO(76, 175, 80, 1),
                  ),
                ),
                TextSpan(text: "писок \n"),
                TextSpan(
                  text: "и",
                  style: TextStyle(
                    color: Color.fromRGBO(252, 221, 61, 1),
                  ),
                ),
                TextSpan(text: "нтересных мест")
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
              textInputAction: TextInputAction.next,
              autofocus: true,
              decoration: InputDecoration(
                fillColor: Colors.amber,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Text("Hello! It is SightListScreen"),
            const Text("Counter value :"),
            const Divider(height: 10.0),
            Container(
              width: counterWidth,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white)),
              child: Text(
                "$counter",
                style: const TextStyle(
                  fontSize: 42,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        backgroundColor: Colors.greenAccent,
        child: const Icon(
          Icons.add,
          color: Colors.deepPurple,
          size: 45,
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
