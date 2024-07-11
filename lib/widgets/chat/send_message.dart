import 'package:ai_chat/providers/message_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SendMessage extends ConsumerStatefulWidget {
  const SendMessage({super.key});

  @override
  ConsumerState<SendMessage> createState() => _SendMessageState();
}

class _SendMessageState extends ConsumerState<SendMessage> {
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _messageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 20),
      height: 55,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 220, 220, 220),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: _messageController,
              maxLines: null,
              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                hintText: 'Type your message',
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              if (_messageController.text.isEmpty) return;
              print(_messageController.text);
              ref
                  .watch(messageProvider.notifier)
                  .addMessage(_messageController.text, 'isMe');
              _messageController.clear();
            },
            icon: const ImageIcon(
              AssetImage(
                'assets/icons/send.png',
              ),
              color: Color(0xFF1D1E3A),
            ),
          )
        ],
      ),
    );
  }
}
