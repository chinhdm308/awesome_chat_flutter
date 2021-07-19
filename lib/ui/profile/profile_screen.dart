import 'package:awesome_chat/ui/edit_profile/edit_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../colors.dart';
import 'components/cart_profile.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/welcome_image.png"),
          alignment: Alignment.topCenter,
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Column(
        children: [
          Spacer(),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 63,
                              width: 63,
                              margin: EdgeInsets.fromLTRB(12, 32, 16, 32),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [color_4356B4, color_3DCFCF],
                                ),
                              ),
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/user_2.png"),
                              ),
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: "Awesome chat\n",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "awesomechat@gmail.com",
                                    style: TextStyle(
                                      color: color_999999,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                            InkResponse(
                              onTap: () {
                                Get.to(() => EditProfileScreen());
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: SvgPicture.asset(
                                  "assets/icons/ic_pen.svg",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 5,
                        color: color_EFEEEE,
                      ),
                      CardProfile(
                        iconUri: 'assets/icons/ic_global.svg',
                        title: "Ngôn ngữ",
                        option: 'Tiếng Việt',
                        press: () {},
                      ),
                      CardProfile(
                        iconUri: 'assets/icons/ic_megaphone.svg',
                        title: "Thông báo",
                        press: () {},
                      ),
                      CardProfile(
                        iconUri: 'assets/icons/ic_reuse.svg',
                        title: "Phiên bản ứng dụng",
                        option: '1.0.0',
                        isShowNext: false,
                        isLast: true,
                        press: () {},
                      ),
                      Divider(
                        height: 5,
                        color: color_EFEEEE,
                      ),
                      CardProfile(
                        iconUri: 'assets/icons/ic_logout.svg',
                        title: "Đăng xuất",
                        isShowNext: false,
                        isLast: true,
                        isLogout: true,
                        press: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
