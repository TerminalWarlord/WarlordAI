import 'package:ai_chat/widgets/home/card_item.dart';
import 'package:ai_chat/widgets/home/history_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardItem(
                  icon: 'assets/icons/edit.png',
                  onClick: () {},
                  label: 'Generate Text',
                  width: (MediaQuery.of(context).size.width - 70) / 2,
                ),
                CardItem(
                  icon: 'assets/icons/image.png',
                  onClick: () {},
                  label: 'Generate Image',
                  width: (MediaQuery.of(context).size.width - 50) / 2,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Text(
            'History',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(
            height: 13,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  30,
                  (index) => HistoryItem(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
