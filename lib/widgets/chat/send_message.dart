import 'package:flutter/material.dart';

class SendMessage extends StatefulWidget {
  const SendMessage({super.key});

  @override
  State<SendMessage> createState() => _SendMessageState();
}

class _SendMessageState extends State<SendMessage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              height: 100,
            ),
          ),
        ),
        Container(
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
                  maxLines: null,
                  decoration: const InputDecoration(
                    focusedBorder: InputBorder.none,
                    hintText: 'Type your message',
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage(
                    'assets/icons/send.png',
                  ),
                  color: Color(0xFF1D1E3A),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
