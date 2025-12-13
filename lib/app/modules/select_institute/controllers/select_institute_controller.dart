import 'package:get/get.dart';

class SelectInstituteController extends GetxController {
  // List of institutes
  final List<String> govtPolytechnicInstitutes = [
    "Dhaka Polytechnic Institute",
    "Chittagong Polytechnic Institute",
    "Rajshahi Polytechnic Institute",
    "Khulna Polytechnic Institute",
    "Barisal Polytechnic Institute",
    "Sylhet Polytechnic Institute",
    "Mymensingh Polytechnic Institute",
    "Bogura Polytechnic Institute",
    "Pabna Polytechnic Institute",
    "Cumilla Polytechnic Institute",
    "Feni Polytechnic Institute",
    "Jessore Polytechnic Institute",
    "Rangpur Polytechnic Institute",
    "Dinajpur Polytechnic Institute",
    "Tangail Polytechnic Institute",
    "Faridpur Polytechnic Institute",
    "Noakhali Polytechnic Institute",
    "Bhola Polytechnic Institute",
    "Magura Polytechnic Institute",
    "Sirajganj Polytechnic Institute",
    "Narsingdi Polytechnic Institute",
    "Kushtia Polytechnic Institute",
    "Sherpur Polytechnic Institute",
    "Gaibandha Polytechnic Institute",
    "Jamalpur Polytechnic Institute",
    "Naogaon Polytechnic Institute",
    "Natore Polytechnic Institute",
    "Joypurhat Polytechnic Institute",
    "Meherpur Polytechnic Institute",
    "Chuadanga Polytechnic Institute",
    "Satkhira Polytechnic Institute",
    "Barguna Polytechnic Institute",
    "Patuakhali Polytechnic Institute",
    "Madaripur Polytechnic Institute",
    "Shariatpur Polytechnic Institute",
    "Manikganj Polytechnic Institute",
    "Munshiganj Polytechnic Institute",
    "Gazipur Polytechnic Institute",
    "Narayanganj Polytechnic Institute",
    "Habiganj Polytechnic Institute",
    "Moulvibazar Polytechnic Institute",
    "Sunamganj Polytechnic Institute",
    "Netrokona Polytechnic Institute",
    "Kishoreganj Polytechnic Institute",
    "Lakshmipur Polytechnic Institute",
    "Chandpur Polytechnic Institute",
    "Bandarban Polytechnic Institute",
    "Cox’s Bazar Polytechnic Institute"
  ];

  // Reactive selected value
  RxString selectedInstitute = ''.obs;

  void setInstitute(String value) {
    selectedInstitute.value = value;
  }
}
