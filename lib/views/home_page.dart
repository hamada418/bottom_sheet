import 'package:flutter/material.dart';
import '../widgets/login_bottom_sheet.dart';
import '../widgets/register_bottom_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050522),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              'assets/ejtger.jpg',
              height: 200,
            ),
            const SizedBox(height: 40),

            const Text(
              'Welcome',
              style: TextStyle(
                color: Color.fromRGBO(239, 88, 88, 1),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => const RegisterBottomSheet(),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                        ),
                        clipBehavior: Clip.antiAlias,
                        backgroundColor: Colors.transparent, 
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: const Color(0xFFFFDE69),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Create Account',
                      style: TextStyle(
                        color: Color(0xFF050522),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                        ),
                        clipBehavior: Clip.antiAlias,
                        context: context,
                        builder: (context) => const LoginBottomSheet(),
                        backgroundColor: Colors.transparent, 
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(color: Color(0xFFFFDE69)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xFFFFDE69),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),

            const Text(
              'All Right Reserved ©2021',
              style: TextStyle(
                color: Color(0xFFFFDE69),
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}