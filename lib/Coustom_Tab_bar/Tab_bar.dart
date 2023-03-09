import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);
  static const rout = '/Tab';

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> with TickerProviderStateMixin {
  List images = [
    "one.jpg",
    "tow.png",
    "three.jpg",
    "four.jpeg",
    "fiv.jpg",
    "six.jpg",
    "seven.jpg",
    "eight.jpg",
    "nine.jpg",
    "ten.jpg",
    "eve.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text('Tabs'),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        drawer: const Drawer(),
        endDrawer: ElevatedButton(
            onPressed: () {}, child: const Icon(Icons.rectangle)),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  'Discover',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  isScrollable: true,
                  labelPadding: EdgeInsets.only(left: 40, right: 20),
                  controller: tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicator:
                      CircleTabIndicator(color: Colors.black, radius: 4),
                  tabs: const [
                    Tab(
                      text: 'One',
                    ),
                    Tab(
                      text: 'Tow',
                    ),
                    Tab(
                      text: 'Three',
                    ),
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              width: double.maxFinite,
              height: 300,
              child: TabBarView(controller: tabController, children: [
                ListView.builder(
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('Images/' + images[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
                ListView.builder(
                    itemCount: images.length,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('Images/' + images[index])),
                        ),
                      );
                    }),
                ListView.builder(
                    itemCount: images.length,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('Images/' + images[index])),
                        ),
                      );
                    }),
              ]),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  "Explore more",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint _paint;
    _paint = Paint()..color = color;
    _paint = _paint..isAntiAlias = true;
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 1.6, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
