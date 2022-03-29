import 'package:flutter/material.dart';
import 'package:recogram/shared/widget/primaryCard.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List tags = ['Popular', 'Recommendation', 'New Topic'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 35,
                  child: Icon(
                    Icons.person,
                    size: 30.0,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            const Text(
              'GoodDay',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            const Text(
              'Patient',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tags.length,
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
            ),
            const SizedBox(height: 28),
            const Text(
              'Popular topics',
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tags.length,
                itemBuilder: ((context, index) {
                  List colors = [
                    const Color(0xFF2440BD),
                    Colors.blue,
                    Colors.blueGrey
                  ];
                  return PrimaryCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Drug Abuse',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            '39 Post',
                            style:
                                TextStyle(color: Colors.white60, fontSize: 16),
                          ),
                        ],
                      ),
                      color: colors[index]);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
