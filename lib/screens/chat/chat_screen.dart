import 'package:ai_chat/providers/message_provider.dart';
import 'package:ai_chat/widgets/chat/chat_bubble.dart';
import 'package:ai_chat/widgets/chat/main_drawer.dart';
import 'package:ai_chat/widgets/chat/messages.dart';
import 'package:ai_chat/widgets/chat/send_message.dart';
import 'package:ai_chat/widgets/ui/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({super.key});

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
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
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Messages(),
          SendMessage(),
        ],
      ),
    );
  }
}
