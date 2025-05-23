import 'package:flutter/material.dart';
import 'package:nft/_core/constant.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  bool actionClickText = false;
  bool actionClickTitle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue950,
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.blue800,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/image-equilibrium.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      const SizedBox(height: 30),
                      InkWell(
                        onTap: () {
                          setState(() {
                            actionClickTitle = !actionClickTitle;
                          });
                        },
                        child: Text(
                          "Equilibrium #3429",
                          style: TextStyle(
                            color:
                                actionClickTitle
                                    ? AppColors.cyan400
                                    : AppColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Our Equilibrium collection promotes balance and calm.",
                        style: AppText.blueText,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icon-ethereum.png',
                            width: 15,
                            height: 15,
                          ),
                          const SizedBox(width: 10),
                          Text("0.041 ETH", style: AppText.cyanText),
                          const Spacer(),
                          Image.asset(
                            'assets/icon-clock.png',
                            width: 15,
                            height: 15,
                          ),
                          const SizedBox(width: 10),
                          Text("3 days left", style: AppText.blueText),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Divider(color: Colors.grey),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 14,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/image-avatar.png',
                                width: 25,
                                height: 25,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text("Creation of ", style: AppText.blueText),
                          InkWell(
                            onTap: () {
                              setState(() {
                                actionClickText = !actionClickText;
                              });
                            },
                            child: Text(
                              "Jules Wyvern",
                              style: TextStyle(
                                color:
                                    actionClickText
                                        ? AppColors.cyan400
                                        : AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
