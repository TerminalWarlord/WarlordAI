import 'package:ai_chat/widgets/chat/chat_bubble.dart';
import 'package:ai_chat/widgets/chat/main_drawer.dart';
import 'package:ai_chat/widgets/chat/send_message.dart';
import 'package:ai_chat/widgets/ui/custom_input.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Center(
            child: Image.asset(
              'assets/images/TerminalAI_3.png',
              width: 160,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage('assets/icons/chat_plus.png'),
            ),
          )
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const ImageIcon(
                AssetImage('assets/icons/sort.png'),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    ...List.generate(
                      10,
                      (index) {
                        return ChatBubble();
                      },
                    ),
                    ChatBubble(
                      isMe: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SendMessage(),
        ],
      ),
    );
  }
}
