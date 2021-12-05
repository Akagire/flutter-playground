import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add your color'),
        iconTheme: const IconThemeData(
          color: Colors.black54,
        ),
      ),
      body: const Center(
        child: Text('WIP'),
      ),
    );
  }
}
