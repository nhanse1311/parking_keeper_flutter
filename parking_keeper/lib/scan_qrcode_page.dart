import 'package:flutter/material.dart';

class ScanQRCode extends StatelessWidget {
  static const String routeName =
      '/ScanQRCodePages'; // routeName to know where home navigation
  final TextEditingController _typeAccountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text('SCAN'),
        ),
      ),
      body: Center(child: Text('Nè quét đi :)'),),
    );
  }
}
