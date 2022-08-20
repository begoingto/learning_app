import 'package:flutter/material.dart';

class ProfileTwo extends StatelessWidget {
  const ProfileTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://static.bangkokpost.com/media/content/20220428/c1_2301930.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Cambodia train \nhigh-speed train',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "A Cambodian train running on the Phnom Penh-Poi Pet line is seen in the Cambodian capital's central",
                        style: TextStyle(color: Colors.grey),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 0.5,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.black.withOpacity(0.7),
                              ),
                              onPressed: () => {},
                              child: Row(
                                children: const [
                                  Text('20'),
                                  Icon(
                                    Icons.heart_broken_rounded,
                                    size: 18,
                                  )
                                ],
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.black.withOpacity(0.7),
                              ),
                              onPressed: () => {},
                              child: Row(
                                children: const [
                                  Text('34'),
                                  Icon(
                                    Icons.shopping_bag_rounded,
                                    size: 18,
                                  )
                                ],
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.black.withOpacity(0.7),
                              ),
                              onPressed: () => {},
                              child: Row(
                                children: const [
                                  Text('82'),
                                  Icon(
                                    Icons.message_rounded,
                                    size: 18,
                                  )
                                ],
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.black.withOpacity(0.7),
                              ),
                              onPressed: () => {},
                              child: Row(
                                children: const [
                                  Text('295'),
                                  Icon(
                                    Icons.emoji_emotions,
                                    size: 18,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const Text(
                        "The Cambodian government is considering upgrading several train lines, including the one to the Thai border, to promote trade and increase the mobility of its population.Cambodia has two train lines covering 612 kilometres. The first route is from Poipet town - opposite Aranyaprathet district in Sa Kaeo province - to Phnom Penh. The other runs between the capital and the.Cambodia's Minister of Public Works and Transport Sun Chantol said on Wednesday the high-speed railway plan would undergo a feasibility study.",
                        style: TextStyle(height: 1.7),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 9,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 300 - 30,
              right: 30,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: const Color(0xfffa880b)),
                ),
                child: const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://dl.memuplay.com/new_market/img/com.vicman.newprofilepic.icon.2022-06-07-21-33-07.png',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 25,
              right: 25,
              child: IconButton(
                onPressed: () => {},
                icon: const Icon(Icons.heart_broken),
              ),
            )
          ],
        ),
      ),
    );
  }
}
