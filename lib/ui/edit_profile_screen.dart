import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../colors.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return DefaultTabController(
      length: 3,
      child: Container(
        color: color_3DCFCF,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [color_4356B4, color_3DCFCF]),
              ),
              child: Column(
                children: [
                  SizedBox(height: statusBarHeight + 21),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Bạn bè',
                            style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          "assets/icons/ic_create_new_message.svg",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 14),
                          child: SvgPicture.asset(
                            "assets/icons/ic_search.svg",
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            maxLines: 1,
                            decoration: InputDecoration(
                              hintText: 'Tìm kiếm bạn bè...',
                              contentPadding: EdgeInsets.zero,
                              isDense: true,
                              border: InputBorder.none,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 22),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    child: Container(
                      color: Colors.white,
                      child: TabBar(
                        labelColor: color_4356B4,
                        unselectedLabelColor: color_999999,
                        tabs: [
                          Tab(text: "BẠN BÈ",),
                          Tab(text: "TẤT CẢ",),
                          Tab(text: "YÊU CẦU",),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        'Bạn bè',
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        'Tất cả',
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        'Yêu cầu',
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
