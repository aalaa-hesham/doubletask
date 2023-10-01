import 'package:flutter/material.dart';
import 'package:shop/list.dart';
import 'package:shop/scrollview.dart';
import 'package:shop/search.dart';

import 'bottom.dart';
import 'model/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: Locale('ltr'),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;
  // static List<Data> main = [
  //   Data("beauty", 5.0, "https://www.youtube.com/watch?app=desktop&v=jFHSkfjN96I", 65),
  //   Data("title", 6.9, "https://www.imdb.com/", 1786),
  //   Data("title", 6.9, "https://www.imdb.com/", 1786),
  //   Data("title", 6.9, "https://www.imdb.com/", 1786),
  // ];
  // List<Data> displayl = List.from(main);
  // void update (String value){
  //   //function that we will fill our list
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Navbottom(),
      drawer: Drawer(
        backgroundColor: Colors.red.shade100,
        width: 300,
        elevation: 0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://miro.medium.com/v2/resize:fit:5120/1*42ebJizcUtZBNIZPmmMZ5Q.jpeg"),
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://scontent.fcai21-2.fna.fbcdn.net/v/t1.18169-9/11144412_1654691084748979_2563098721162733518_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=dKwzRARisUEAX_dGCWI&_nc_oc=AQmzVGahyxgRRFQgJWe2MHwJn6fU0urWU_n7BqRSfeaLnISFJ4QNbsdPkAlwK_uQxQI&_nc_ht=scontent.fcai21-2.fna&oh=00_AfB9cXylBCMMu8cPMWUX6-2qof9AJm1Yi8Jv0ykNKy833A&oe=653A5D15"),
                ),
                accountName: Text('Aalaa Hesham'),
                accountEmail: Text('alaahesham408@gmail.com')),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: const Text('Shop'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.message,
                color: Colors.red,
              ),
              title: const Text('message'),
              onTap: () {},
            ),
            Divider(
              indent: 10,
              endIndent: 5,
              color: Colors.black,
            ),
            ListTile(
              leading: const Icon(
                Icons.flag_circle_outlined,
                color: Colors.red,
              ),
              title: const Text('flag'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: Center(
          child: Text(
            'your shop',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
            //  showSearch(context: context, delegate: Datasearch());
            },
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(3, 130),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(
                    "What'sApp",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      fontFamily: 'RobotoMono',
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(7),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.pinkAccent.shade700,
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.black87),
                        // onChanged: (value) => _runFilter(value),
                        decoration: InputDecoration(
                          fillColor: Colors.pink.shade100,
                          focusColor: Colors.white,
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15),
                          hintText: "Search",
                          suffixIcon: const Icon(Icons.search),
                          // prefix: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(),
                          ),
                        ),
                      ),
                    )),
                Container(
                  height: 50,
                  color: Colors.white.withOpacity(0.7),
                   child: Singleview(),

                )
              ],
            ),
          ),
        ),

      ), body: Container(child: Lists()
    ,
      // decoration: new BoxDecoration(
      //   boxShadow: [
      //     new BoxShadow(
      //       color: Colors.blueGrey.shade600,
      //       blurRadius: 50.0,
      //     ),
      //   ],
      // ),
    ),
    );
  }
}
