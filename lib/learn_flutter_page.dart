import 'package:flutter/material.dart';

class LearnPage extends StatefulWidget {
  LearnPage({Key? key}) : super(key: key);

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RRRRR'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(children: [
        Image.asset('images/test.jpeg'),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          color: Colors.black,
        ),
        Container(
          color: Colors.blueGrey,
          width: double.infinity,
          child: const Text(
            'XDDDD',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}
