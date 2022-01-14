import 'package:flutter/material.dart';

class MyVisibility extends StatefulWidget {
  const MyVisibility({Key? key}) : super(key: key);

  @override
  _MyVisibilityState createState() => _MyVisibilityState();
}

class _MyVisibilityState extends State<MyVisibility> {
  bool notification = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: notification,
          child: ListTile(
            tileColor: Colors.cyan[100],
            leading: const Icon(Icons.info_outline),
            title: const Text('You received a new message'),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  notification = false;
                });
              },
              icon: const Icon(Icons.close),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              notification = true;
            });
          },
          child: const Text('Custom Notification'),
        ),
      ],
    );
  }
}
