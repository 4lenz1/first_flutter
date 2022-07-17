import 'package:flutter/material.dart';

class LearnPage extends StatefulWidget {
  LearnPage({Key? key}) : super(key: key);

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  bool isSwitch = false;
  bool? isCheck = false;
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
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('actions');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset('images/test.jpeg'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
              child: Text(
                'XDDDD',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: isSwitch ? Colors.green : Colors.blue,
            ),
            onPressed: () {
              debugPrint('elevate button');
            },
            child: const Text('Elevated Button'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('outline button');
            },
            child: const Text('outline Button'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('text button');
            },
            child: const Text('text Button'),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('ededededed');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.blue,
                ),
                Text('ROW Widget'),
                Icon(
                  color: Colors.blue,
                  Icons.local_fire_department,
                ),
              ],
            ),
          ),
          Switch(
              value: isSwitch,
              onChanged: (bool newValue) {
                setState(() {
                  isSwitch = newValue;
                });
              }),
          CheckboxListTile(
              title: const Text('WAWAAAA'),
              value: isCheck,
              onChanged: (bool? newValue) {
                setState(() {
                  isCheck = newValue;
                });
              }),
          Image.network(
              'https://dart.dev/assets/shared/dart-logo-for-shares.png')
        ]),
      ),
    );
  }
}
