import 'package:ai_chat/util/auth_validator.dart';
import 'package:ai_chat/widgets/ui/custom_button.dart';
import 'package:ai_chat/widgets/ui/custom_input.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  String _mode = 'signin';
  List<String> errors = [];
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  void _toggleMode() {
    setState(() {
      _mode = _mode == 'signin' ? 'signup' : 'signin';
    });
  }

  void _validateForm() {
    print(errors);
    if (_mode == 'signup') {
      setState(() {
        errors = validateSignUp(_emailController.text, _passwordController.text,
            _confirmPasswordController.text);
      });
    } else {
      setState(() {
        String validatePass = validateEmail(_emailController.text);
        if (validatePass.isNotEmpty) {
          errors = [];
          errors.add(validatePass);
        } else {
          errors = [];
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Enter your email',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          CustomInput(
            controller: _emailController,
            hintText: 'jaybee@gmail.com',
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Enter your password',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          CustomInput(
            controller: _passwordController,
            hintText: '******',
            obscureText: true,
          ),
          if (_mode == 'signup')
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Confirm your password',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomInput(
                  controller: _confirmPasswordController,
                  hintText: '******',
                  obscureText: true,
                ),
              ],
            ),
          SizedBox(
            height: errors.isEmpty ? 40 : 10,
          ),
          ...errors.map((error) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  error,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.redAccent),
                ),
              ),
            );
          }),
          SizedBox(
            height: errors.isNotEmpty ? 10 : 0,
          ),
          CustomButton(
            widget: Text(
              _mode == 'signin' ? 'Login' : 'Sign Up',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            onClick: _validateForm,
            radius: 15,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            widget: Text(
              _mode == 'signin' ? 'Sign Up' : 'Login',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            onClick: _toggleMode,
            color: const Color.fromARGB(255, 229, 229, 229),
            border: Border.all(
              width: 1,
              color: const Color.fromARGB(255, 184, 184, 184),
            ),
            radius: 15,
          ),
        ],
      ),
    );
  }
}
