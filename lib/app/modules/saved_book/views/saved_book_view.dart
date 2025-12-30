import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/saved_book_controller.dart';

class SavedBookView extends GetView<SavedBookController> {
  const SavedBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('SavedBookView is working', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
