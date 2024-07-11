import 'package:ai_chat/providers/message_provider.dart';
import 'package:ai_chat/widgets/chat/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Messages extends ConsumerStatefulWidget {
  const Messages({super.key});

  @override
  ConsumerState<Messages> createState() => _MessagesState();
}

class _MessagesState extends ConsumerState<Messages> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: ref.watch(messageProvider.notifier).getMessages(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }
        if (snapshot.hasData) {
          final messages = snapshot.data!;
          return Expanded(
            child: ListView.builder(
              reverse: true,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ChatBubble(
                  isMe: messages[index].isMe,
                  message: messages[index].message,
                );
              },
            ),
          );
        }
        return Text('Failed to load');
      },
    );
  }
}
