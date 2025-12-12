import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../../data/image_path.dart';

class HomeController extends GetxController {
  // Categories
  List<Map<String, dynamic>> categoriesBook = [
    {'image': ImagePath.bookA, 'category': "Science"},
    {'image': ImagePath.bookB, 'category': "Mathematics"},
    {'image': ImagePath.bookC, 'category': "History"},
    {'image': ImagePath.bookD, 'category': "Literature"},
    {'image': ImagePath.bookE, 'category': "Art"},
    {'image': ImagePath.bookF, 'category': "Biography"},
    {'image': ImagePath.bookG, 'category': "Technology"},
  ];

  // Books with details
  List<Map<String, dynamic>> booksList = [
    {
      'image': ImagePath.bookA,
      'title': "Physics Fundamentals",
      'author': "John Doe",
      'year': "2023"
    },
    {
      'image': ImagePath.bookB,
      'title': "Algebra Essentials",
      'author': "Jane Smith",
      'year': "2022"
    },
    {
      'image': ImagePath.bookC,
      'title': "World History",
      'author': "Alice Johnson",
      'year': "2021"
    },
    {
      'image': ImagePath.bookD,
      'title': "Modern Literature",
      'author': "Robert Brown",
      'year': "2020"
    },
    {
      'image': ImagePath.bookE,
      'title': "Art & Design",
      'author': "Emma Wilson",
      'year': "2023"
    },
    {
      'image': ImagePath.bookF,
      'title': "Famous Biographies",
      'author': "Michael Clark",
      'year': "2022"
    },
    {
      'image': ImagePath.bookG,
      'title': "Tech Innovations",
      'author': "Sophia Davis",
      'year': "2023"
    },
  ];
}
