import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../../data/image_path.dart';

class HomeController extends GetxController {
  // Categories
// Categories
  List<Map<String, dynamic>> categoriesBook = [
    {'image': ImagePath.bookA, 'category': "Islamic"},
    {'image': ImagePath.bookB, 'category': "Hadis"},
    {'image': ImagePath.bookC, 'category': "Quran"},
    {'image': ImagePath.bookD, 'category': "Hindu"},
    {'image': ImagePath.bookE, 'category': "Christian"},
    {'image': ImagePath.bookF, 'category': "Buddhist"},

    {'image': ImagePath.bookG, 'category': "Novel"},
    {'image': ImagePath.bookA, 'category': "Story"},
    {'image': ImagePath.bookB, 'category': "AutoBio"},
    {'image': ImagePath.bookC, 'category': "Fantasy"},
    {'image': ImagePath.bookD, 'category': "Thriller"},
    {'image': ImagePath.bookE, 'category': "Romance"},
    {'image': ImagePath.bookF, 'category': "Classic"},

    {'image': ImagePath.bookG, 'category': "Art"},
    {'image': ImagePath.bookA, 'category': "Photo"},
    {'image': ImagePath.bookB, 'category': "SelfHelp"},
    {'image': ImagePath.bookC, 'category': "Motivation"},
    {'image': ImagePath.bookD, 'category': "Career"},
    {'image': ImagePath.bookE, 'category': "Travel"},
    {'image': ImagePath.bookF, 'category': "Cooking"},

    {'image': ImagePath.bookG, 'category': "Vorti"},
    {'image': ImagePath.bookA, 'category': "Academy"},
    {'image': ImagePath.bookB, 'category': "JobPrep"},
    {'image': ImagePath.bookC, 'category': "BCS"},
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
