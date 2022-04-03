import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF252646),
          borderRadius: BorderRadius.circular(8.0),
        ),
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 15.0),
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      child: Icon(
                        Icons.person,
                        size: 25.0,
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '8:30pm',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            const Text(
              'How to Meditate',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 3.0),
                    const Text(
                      '255 likes',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.message_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 3.0),
                    const Text(
                      '255 Comments',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 3.0),
                    const Text(
                      '255 Views',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
