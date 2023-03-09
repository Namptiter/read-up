import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:read_up/components/book_info.dart';
import 'package:read_up/components/title_heading.dart';

import '../../components/action_button.dart';
import '../../components/expandable_fab.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 232, 208),
      floatingActionButton: ExpandableFab(
        distance: 112.0,
        children: [
          ActionButton(
            onPressed: () => {},
            icon: const Icon(Icons.format_size),
          ),
          ActionButton(
            onPressed: () => {},
            icon: const Icon(Icons.insert_photo),
          ),
          ActionButton(
            onPressed: () => {},
            icon: const Icon(Icons.videocam),
          ),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Search book name, author, editor...',
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Happy reading, \nHarvey',
                            style: GoogleFonts.cardo(
                              textStyle: Theme.of(context).textTheme.headline4,
                              color: const Color.fromRGBO(32, 32, 32, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text(
                            "Wow! you've delved deep into the wizarding world's secrets. Have Harry's parents died yet? Oops, looks like you're not there yet. Get reading now!",
                            style: TextStyle(
                                color: Color.fromRGBO(32, 32, 32, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: 13),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Do something when the button is pressed
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black87),
                              minimumSize:
                                  MaterialStateProperty.all(const Size(0, 32)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text(
                                  'Start reading',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.call_made,
                                  color: Colors.white,
                                  size: 13,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(end: 0),
                        child: Image(
                          image:
                              const AssetImage('assets/images/book_page1.png'),
                          height: _width * 0.55,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: 10, end: 10, top: 16),
                child: TitleHeading(title: "Recently Read"),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 16),
                child: SizedBox(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      BookInfo(
                          title: "jdkdks",
                          imgPath: 'assets/images/book_page1.png'),
                      BookInfo(
                          title: "jdkdks",
                          imgPath: 'assets/images/book_page2.png'),
                      BookInfo(
                          title: "jdkdks",
                          imgPath: 'assets/images/book_page3.png'),
                      BookInfo(
                          title: "jdkdks",
                          imgPath: 'assets/images/book_page4.png'),
                      BookInfo(
                          title: "jdkdks",
                          imgPath: 'assets/images/book_page.png'),
                      BookInfo(
                          title: "jdkdks",
                          imgPath: 'assets/images/book_page1.png'),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: 10, end: 10, top: 16),
                child: TitleHeading(title: "Series Colection"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
