import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/panding_request_controller.dart';

class PandingRequestView extends GetView<PandingRequestController> {
  const PandingRequestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'PandingRequestView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
