import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    this.isMe = true,
  });
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    Widget profilePicture = Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: const Color.fromARGB(255, 227, 227, 227),
          width: 1,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'assets/icons/user.png',
          width: 50,
          height: 50,
        ),
      ),
    );

    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment:
              isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            if (!isMe) profilePicture,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Hello  weufhweifw weiufhwefejw wefiuweufew fwefweu weifhweiohfowieh  wrehiofweh',
                softWrap: true,
              ),
            ),
            if (isMe) profilePicture,
          ],
        ),
      ),
    );
  }
}
