import 'package:flutter/material.dart';
import 'package:party_ui/animations/fade_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final isLogin = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/im_party.jpeg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Color.fromARGB(108, 0, 0, 0),
                BlendMode.darken,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  FadeAnimation(delay: 1, child: Text(
                    "Find the best parties near you",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),),
                  SizedBox(
                    height: 30,
                  ),
                  FadeAnimation(delay: 1.2, child: Text(
                    "Let us find you a party for your interest",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),),
                ],
              ),
              (isLogin)
              ? FadeAnimation(
                delay: 1.4,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0), // Set the radius here
                    ),
                  ),
                  child: const Text(
                    "Start",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              )
              : FadeAnimation(
                delay: 1.4,
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), // Set the radius here
                          ),
                        ),
                        child: const Text(
                          "Google",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), // Set the radius here
                          ),
                        ),
                        child: const Text(
                          "Facebook",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
