import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/current_book_controller.dart';

class CurrentBookView extends GetView<CurrentBookController> {
  const CurrentBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'CurrentBookView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
