import 'package:awesome_chat/data/models/Chat.dart';
import 'package:flutter/material.dart';

import '../../../colors.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key, required this.chat, required this.press})
      : super(key: key);

  final Chat chat;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 19),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: chat.isActive
                        ? BoxDecoration(
                            shape: BoxShape.circle,
                            color: color_4356B4,
                          )
                        : null,
                    padding: EdgeInsets.all(1),
                    child: Container(
                      decoration: chat.isActive
                          ? BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Theme.of(context).scaffoldBackgroundColor,
                                width: 2,
                              ),
                            )
                          : null,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(chat.image),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19.0),
                                child: Text(
                                  chat.name,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.64,
                              child: Text(chat.time),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 19.0,
                            top: 5,
                          ),
                          child: Opacity(
                            opacity: 0.64,
                            child: Text(
                              chat.lastMessage,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 72.0),
                child: Divider(
                  color: color_D2D2D2,
                  height: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
