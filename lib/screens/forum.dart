import 'package:flutter/material.dart';
import 'package:recogram/services/forum_service.dart';

class Forum extends StatefulWidget {
  const Forum({Key? key}) : super(key: key);

  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  List<Widget> forumPageItems = [
    Column(
      children: [
        const SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Health Forum',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: FutureBuilder<dynamic>(
        future: ForumService().allMessaegs(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final List? postList = snapshot.data;
          // ignore: unused_local_variable
          for (dynamic food in postList!) {
            List<String> tags = ['Meditation', 'Relax', 'Brain'];
            forumPageItems.add(
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF252646),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 15.0),
                  padding: const EdgeInsets.all(15.0),
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
                            Icons.bookmark_outline,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'How to Meditate',
                        style: TextStyle(
                          fontSize: 22,
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
                      const SizedBox(height: 15.0),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://www.verywellmind.com/thmb/kJRCuLWQ8mR3npJE3k5342SpfEQ=/500x350/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-938890492-becc3fc4757849bea672f148454943f9.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://www.mensjournal.com/wp-content/uploads/m0716_hf_meditation_a-b0a3f982-a4c7-4b4e-ad21-419836b265ef.jpg?w=900&h=506&crop=1&quality=86&strip=all',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12.0),
                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: ((context, index) {
                            return Container(
                              margin: const EdgeInsets.only(left: 8.0),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 10.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Text(tags[index]),
                            );
                          }),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
          return Column(
            children: [
              SizedBox(
                height: 650,
                child: ListView(children: forumPageItems),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: InputDecoration(
                        hintText: 'Write Post',
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.attachment,
                            color: Colors.grey,
                          ),
                        ),
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: const BoxDecoration(
                      color: Color(0xFF2740B0),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
