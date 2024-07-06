import 'package:ai_chat/widgets/home/history_item.dart';
import 'package:ai_chat/widgets/ui/custom_button.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
    this.activeChat,
  });
  final String? activeChat;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                child: Image.asset(
                  'assets/images/TerminalAI_3.png',
                  width: 150,
                ),
              ),
              ...List.generate(
                60,
                (index) => Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: CustomButton(
                    color: activeChat != null
                        ? const Color.fromARGB(255, 224, 224, 224)
                        : Colors.white,
                    radius: 12,
                    onClick: () {},
                    widget: Text(
                      'Testing a widegfuie eghfewiufhw',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
