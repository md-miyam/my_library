import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_library/app/data/app_colors.dart';
import 'package:my_library/app/data/app_text_styles.dart';
import 'package:my_library/app/data/image_path.dart';
import '../../../data/image_path.dart';
import '../controllers/book_details_controller.dart';

class BookDetailsView extends GetView<BookDetailsController> {
  const BookDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => BookDetailsController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              // Main container with image + gradient
              Stack(
                children: [
                  // Background Image
                  Container(
                    height: Get.height * .4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImagePath.bookH),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: Get.height * .20,
                    left: 0.w,
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      height: 165.h,
                      width: Get.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, AppColors.whiteColor],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 10.w,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: 180,
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Center(
                                child: Text(
                                  "Computer Science",
                                  style: AppTextStyles.bold12,
                                ),
                              ),
                            ),
                            Text(
                              "Introduction to Algorithms",
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.bold24,
                            ),
                            Text(
                              'Thomas H.Cormen',
                              style: AppTextStyles.regular14.copyWith(
                                color: AppColors.blackColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Language              :",
                          style: AppTextStyles.regular14.copyWith(
                            color: AppColors.blackColor,
                          ),
                        ),
                        Text(
                          "   English",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: AppTextStyles.regular14.copyWith(
                            color: AppColors.blackColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Publishing Year     :",
                          style: AppTextStyles.regular14.copyWith(
                            color: AppColors.blackColor,
                          ),
                        ),
                        Text(
                          "   2000",
                          style: AppTextStyles.regular14.copyWith(
                            color: AppColors.blackColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Copies Left           :",
                          style: AppTextStyles.regular14.copyWith(
                            color: AppColors.blackColor,
                          ),
                        ),
                        Text(
                          "   05",
                          style: AppTextStyles.regular14.copyWith(
                            color: AppColors.blackColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Book Shelf no        :",
                          style: AppTextStyles.regular14.copyWith(
                            color: AppColors.blackColor,
                          ),
                        ),
                        Text(
                          "   A-12",
                          style: AppTextStyles.regular14.copyWith(
                            color: AppColors.blackColor,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Divider(color: AppColors.cardGreyColor, height: 2),
                    ),
                    Text(
                      "Description",
                      style: AppTextStyles.bold24.copyWith(
                        color: AppColors.blackColor,
                      ),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utshotb.",
                      style: AppTextStyles.regular12.copyWith(
                        color: AppColors.blackColor,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                    ),
                    Text(
                      "Borrowing Details ",
                      style: AppTextStyles.bold24.copyWith(
                        color: AppColors.blackColor,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: AppColors.cardGreyColor,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.whiteColor.withAlpha(50),
                            ),
                          ),
                          child: Image.asset(ImagePath.profile),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Username Here",
                              style: AppTextStyles.medium24,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Roll:    668924 ",
                                  style: AppTextStyles.medium12,
                                ),
                                SizedBox(width: 30),
                                Text(
                                  "Reg:   1502215325679",
                                  style: AppTextStyles.medium12,
                                ),
                              ],
                            ),
                            Text(
                              "Dept:   Computer",
                              style: AppTextStyles.medium12,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text("Language/Version   : "),
                        SizedBox(width: 13.w),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryColor
                                    .withAlpha(150),
                              ),
                              onPressed: () {},
                              child: Text(
                                'ENGLISH',
                                style: AppTextStyles.medium12,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.secondaryColor
                                    .withAlpha(150),
                              ),
                              onPressed: () {},
                              child: Text(
                                'BANGLA',
                                style: AppTextStyles.medium12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Quantity/Pieces       :"),
                        SizedBox(width: 13.w),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.yellowColor.withAlpha(
                              150,
                            ),
                          ),
                          onPressed: () {},
                          child: Text("01"),
                        ),
                      ],
                    ),

                    Text(
                      "I would like to borrow this book from today until the specified return date, and will return it as per the agreed time.",
                      style: AppTextStyles.medium12,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        Text(
                          'From',
                          style: AppTextStyles.medium12.copyWith(
                            color: AppColors.blackColor.withAlpha(150),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              hintText: "hello",
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'to',
                          style: AppTextStyles.medium12.copyWith(
                            color: AppColors.blackColor.withAlpha(150),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              hintText: "hello",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Obx(
                              () => Checkbox(
                            value: controller.checked.value,
                            onChanged: (v) {
                              controller.isChecked(v!);
                            },
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            "I agree to return the book by the due date and in its original condition.",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 25.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed:() {

                              } , child: Text("Save for Later") ,),
                          ),
                          SizedBox(width: 7,),
                          Expanded(
                            child: ElevatedButton(onPressed: () {

                            }, child: Text("Borrow Now")),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
