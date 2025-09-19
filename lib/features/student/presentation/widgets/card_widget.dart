import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
      Assets.imagesPhotoList1,
      Assets.imagesPhotoList2,
      Assets.imagesPhotoList3,
      Assets.imagesPhotoList4,
    ];
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      child: Container(
        height: 320,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8,
              ),
              child: ListTile(
                title: Text("mohamed ahmed", style: AppStyles.styleMedium18),
                leading: Image.asset(Assets.imagesPhoto1),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                ),
              ),
            ),

            Divider(thickness: 1),

            Container(
              height: 120,
              child: Text(
                "Thank you for all student in my account",
                style: AppStyles.styleBold18,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  const Icon(Icons.chat_outlined),
                  Text("22", style: AppStyles.styleMedium18),
                  Spacer(),
                  Text("Liked By ", style: AppStyles.styleGreyBold15),
                  Text("340", style: AppStyles.styleGreyBold15),
                  const SizedBox(width: 4),
                  SizedBox(
                    width: 100, // عرض مناسب لتراكب الصور
                    height: 32, // نفس ارتفاع الـ CircleAvatar
                    child: Stack(
                      children: List.generate(
                        4, // عدد الصور
                        (index) {
                          final rev = 3 - index;
                          return Positioned(
                            left: index * 20, // التراكب
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage: AssetImage(images[rev]),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 1),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  // صورة البروفايل
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(
                      Assets.imagesComment1,
                    ), // أو NetworkImage
                  ),
                  const SizedBox(width: 10),

                  // مربع كتابة الكومنت
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Add a comment",
                        hintStyle: AppStyles.styleGreyBold15,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Color(0xFFFDF6ED),
                            width: 1,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,

                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
