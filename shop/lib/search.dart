import 'package:flutter/material.dart';

import 'model/data.dart';

class Datasearch extends SearchDelegate <String> {
  @override
  List<Widget> buildActions(BuildContext context) {
//action for appbar
    return [
      IconButton(onPressed: (){}, icon: Icon(Icons.clear),)
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
// action leading
    return
      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),)
    ;
  }

  @override
  Widget buildResults(BuildContext context) {
    // result
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone search
    return Text("body search");
  }


}



class Sre extends StatefulWidget {
  const Sre({super.key});

  @override
  State<Sre> createState() => _SreState();
}

class _SreState extends State<Sre> {
  static List<Data> main = [
    Data("beauty", 5.0, "https://www.youtube.com/watch?app=desktop&v=jFHSkfjN96I", 65),
    Data("title", 6.9, "https://www.imdb.com/", 1786),
    Data("title", 6.9, "https://www.imdb.com/", 1786),
    Data("title", 6.9, "https://www.imdb.com/", 1786),
  ];
  List<Data> displayl = List.from(main);
  void update (String value){
    //function that we will fill our list
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextField(
          style:  TextStyle(color: Colors.black87),
          // onChanged: (value) => _runFilter(value),
          decoration: InputDecoration(
            fillColor: Colors.pink.shade100,
            focusColor: Colors.white,
            filled: true,
            contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
            hintText: "Search",
            suffixIcon: const Icon(Icons.search),
            // prefix: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ), Expanded(child: ListView.builder(
          itemCount: displayl.length,
          itemBuilder: (context, index)=> ListTile(
    contentPadding: EdgeInsets.all(8.0),
            title: Text(displayl[index].title!,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
            subtitle: Text('${displayl[index].Year!}',style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    ),),
    trailing: Text("${displayl[index].rating}",style: TextStyle(
      color: Colors.yellow,
      fontWeight: FontWeight.bold,
    ),
    ),
leading: Image.network(displayl[index].url!),
          ),

        ))
      ],
    );
  }
}
