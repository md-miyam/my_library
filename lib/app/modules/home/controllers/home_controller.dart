import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../../data/image_path.dart';

class HomeController extends GetxController {

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
      'image': ImagePath.book1,
      'title': "Physics Fundamentals",
      'author': "John Doe",
      'year': "2023"
    },
    {
      'image': ImagePath.book2,
      'title': "Algebra Essentials",
      'author': "Jane Smith",
      'year': "2022"
    },
    {
      'image': ImagePath.book3,
      'title': "World History",
      'author': "Alice Johnson",
      'year': "2021"
    },
    {
      'image': ImagePath.book4,
      'title': "Modern Literature",
      'author': "Robert Brown",
      'year': "2020"
    },
    {
      'image': ImagePath.book5,
      'title': "Art & Design",
      'author': "Emma Wilson",
      'year': "2023"
    },
    {
      'image': ImagePath.book6,
      'title': "Famous Biographies",
      'author': "Michael Clark",
      'year': "2022"
    },
    {
      'image': ImagePath.book7,
      'title': "Tech Innovations",
      'author': "Sophia Davis",
      'year': "2023"
    },
    {
      'image': ImagePath.book8,
      'title': "Chemistry Basics",
      'author': "David Lee",
      'year': "2021"
    },
    {
      'image': ImagePath.book9,
      'title': "Geometry Insights",
      'author': "Olivia Harris",
      'year': "2020"
    },
    {
      'image': ImagePath.book10,
      'title': "Ancient Civilizations",
      'author': "William Scott",
      'year': "2019"
    },
    {
      'image': ImagePath.book11,
      'title': "Poetry Collection",
      'author': "Sophia White",
      'year': "2023"
    },
    {
      'image': ImagePath.book12,
      'title': "Music Theory",
      'author': "James King",
      'year': "2022"
    },
    {
      'image': ImagePath.book13,
      'title': "Political Science",
      'author': "Charlotte Green",
      'year': "2021"
    },
    {
      'image': ImagePath.book14,
      'title': "Psychology Today",
      'author': "Henry Adams",
      'year': "2020"
    },
    {
      'image': ImagePath.book15,
      'title': "Environmental Studies",
      'author': "Grace Thompson",
      'year': "2023"
    },
    {
      'image': ImagePath.book16,
      'title': "Business Management",
      'author': "Daniel Martinez",
      'year': "2022"
    },
    {
      'image': ImagePath.book17,
      'title': "Computer Science",
      'author': "Sophia Robinson",
      'year': "2021"
    },
    {
      'image': ImagePath.book18,
      'title': "Data Structures",
      'author': "Matthew Lewis",
      'year': "2020"
    },
    {
      'image': ImagePath.book19,
      'title': "Artificial Intelligence",
      'author': "Isabella Walker",
      'year': "2023"
    },
    {
      'image': ImagePath.book20,
      'title': "Machine Learning",
      'author': "Benjamin Hall",
      'year': "2022"
    },
    {
      'image': ImagePath.book21,
      'title': "Deep Learning",
      'author': "Mia Allen",
      'year': "2021"
    },
    {
      'image': ImagePath.book22,
      'title': "Cloud Computing",
      'author': "Lucas Young",
      'year': "2020"
    },
    {
      'image': ImagePath.book23,
      'title': "Cyber Security",
      'author': "Amelia Hernandez",
      'year': "2023"
    },
    {
      'image': ImagePath.book24,
      'title': "Networking Basics",
      'author': "Ethan King",
      'year': "2022"
    },
    {
      'image': ImagePath.book25,
      'title': "Database Systems",
      'author': "Harper Wright",
      'year': "2021"
    },

  ];



  RxBool isFev = false.obs;

  void tapFev (){
    isFev.value = !isFev.value;
  }


}
