import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.icon,
    required this.label,
    this.onClick,
    this.width,
    this.height,
  });
  final String icon, label;
  final void Function()? onClick;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color.fromARGB(255, 255, 238, 238),
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromARGB(255, 241, 201, 201),
                      ),
                      child: Image.asset(
                        icon,
                        color: Color.fromARGB(255, 179, 17, 49),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      label,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
