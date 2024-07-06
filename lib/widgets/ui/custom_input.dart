import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({
    super.key,
    required this.controller,
    this.hintText,
    this.obscureText = false,
    this.keyboardType,
  });
  final TextEditingController controller;
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  late bool _hidePassword;
  @override
  void initState() {
    super.initState();
    _hidePassword = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          width: 1,
          color: const Color.fromARGB(255, 211, 212, 215),
        ),
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: _hidePassword,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          suffixIcon: widget.obscureText
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _hidePassword = !_hidePassword;
                    });
                  },
                  icon: ImageIcon(AssetImage(
                      'assets/images/${_hidePassword ? "hide" : "show"}_password.png')),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  visualDensity: VisualDensity.compact,
                )
              : null,
          hintText: widget.hintText,
          isDense: true,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          alignLabelWithHint: true,
        ),
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}
