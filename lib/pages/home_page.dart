import 'package:basic_flutter/buttons/custom_notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:basic_flutter/buttons/toast.dart';
import 'package:basic_flutter/buttons/myalert.dart';
import 'package:basic_flutter/buttons/confirmation_dialog.dart';
import 'package:basic_flutter/buttons/snackbar.dart';
import 'package:basic_flutter/buttons/bottom_sheet.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Notifiers'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            MyVisibility(),
            MyToast(),
            MyAlert(),
            MyConfirmationDialog(),
            MySnackBar(),
            MyBottomSheet(),
          ],
        ),
      ),
    );
  }
}
