import 'package:awesome_chat/ui/chats/chats_screen.dart';
import 'package:awesome_chat/ui/friends/friends_screen.dart';
import 'package:awesome_chat/ui/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../colors.dart';

class ABC {
  int count = 0;
}

class HomeScreen extends StatelessWidget {
  var index = 0.obs;
  var cc = Get.put(ABC());
  Widget navigateScreen(index) {
    switch (index) {
      case 0:
        return ChatsScreen();
      case 1:
        return FriendsScreen();
      case 2:
        return ProfileScreen();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => navigateScreen(index.value)),
      bottomNavigationBar: Container(
        color: color_F6F6F6,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Obx(
            () => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: (value) {
                index.value = value;
              },
              iconSize: 28,
              selectedItemColor: color_4356B4,
              selectedLabelStyle: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              unselectedItemColor: color_999999,
              unselectedLabelStyle: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              elevation: 5,
              backgroundColor: Colors.white,
              currentIndex: index.value,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/ic_chat.svg",
                    color: index.value == 0 ? color_4356B4 : color_999999,
                  ),
                  label: 'Tin nhắn',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/ic_add.svg",
                    color: index.value == 1 ? color_4356B4 : color_999999,
                  ),
                  label: 'Bạn bè',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/ic_user.svg",
                    color: index.value == 2 ? color_4356B4 : color_999999,
                  ),
                  label: 'Trang cá nhân',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
