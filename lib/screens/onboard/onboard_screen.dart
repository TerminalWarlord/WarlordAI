import 'package:ai_chat/data/onboard_dummy.dart';
import 'package:ai_chat/screens/auth/authentication.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        toolbarHeight: 80,
        actions: [
          if (_currentIndex != dummyOnboard.length - 1)
            GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = dummyOnboard.length - 1;
                });
                // _controller.jumpToPage(_currentIndex);
                _controller.animateToPage(_currentIndex,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.linear);
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                decoration: BoxDecoration(
                    color: const Color(0xFFFAF2E6),
                    borderRadius: BorderRadius.circular(15)),
                child: const Text(
                  'Skip',
                  // style: TextStyle(
                  //   color:
                  // ),
                ),
              ),
            ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/TerminalAI_3.png',
              width: 200,
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 400,
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                controller: _controller,
                children: dummyOnboard.map((onboardPage) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(onboardPage.image),
                        Text(
                          onboardPage.title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 25,
                            color: Color(0xFF1D1E3A),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          onboardPage.subtitle,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: dummyOnboard.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Color(0xFFFF0164),
                dotHeight: 8,
                dotWidth: 10,
              ),
            ),
            if (_currentIndex == dummyOnboard.length - 1)
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const AuthenticationScreen(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1D1E3A),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'Get Started',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
