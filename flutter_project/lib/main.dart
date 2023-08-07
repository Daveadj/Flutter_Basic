import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  var backGroundColor = Colors.grey[900];
  var appBar = Colors.grey[850];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        title: const Text('YU-GI-OH'),
        centerTitle: true,
        backgroundColor: appBar,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            backGroundColor = Colors.purple[300];
            appBar = Colors.purple[300];
          });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/yugioh-pictures.jpg'),
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              'Pharaoh Atem',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'MONSTER',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/ObelisktheTormentor-OW.png'),
                  radius: 50.0,
                  child: Text('Obelisk'),
                ),
                CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/SlifertheSkyDragon-OW.png'),
                  radius: 50.0,
                  child: Text('Slifer'),
                ),
                CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/TheWingedDragonofRa-OW.png'),
                  radius: 50.0,
                  child: Text(
                    'Ra',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Obelisk',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.amberAccent),
                ),
                Text('Slifer',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent)),
                Text('Ra',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent)),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              'DECK MASTER',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Dark Magician ,',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Egypian Gods',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
