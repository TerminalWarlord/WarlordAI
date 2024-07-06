import 'package:ai_chat/widgets/ui/custom_button.dart';
import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: CustomButton(
        onClick: () {},
        widget: Container(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/message.png',
                color: const Color(0xFF1D1E3A),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 170,
                child: const Text(
                  'Heuw eyfgweiufgiwe fweiufhewof weiufewhfh',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFF1D1E3A),
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(
                Icons.arrow_forward,
                color: Color(0xFF1D1E3A),
              )
            ],
          ),
        ),
        color: const Color.fromARGB(255, 236, 236, 236),
        radius: 14,
        border: Border.all(
          color: const Color.fromARGB(255, 177, 177, 177),
          width: 2,
        ),
      ),
    );
  }
}
