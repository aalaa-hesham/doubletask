import 'package:flutter/cupertino.dart';
import 'model/data.dart';

import 'package:flutter/material.dart';

class Lists extends StatefulWidget {
  const Lists({super.key});
  @override
  State<Lists> createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  List<String> productName = ['Mango' , 'Orange' , 'Grapes' , 'Banana' , 'Chery' , 'Peach','Mixed Fruit Basket',] ;
  List<String> productUnit = ['KG' , 'Dozen' , 'KG' , 'Dozen' , 'KG' , 'KG','KG',] ;
  List<int> productPrice = [10, 20 , 30 , 40 , 50, 60 , 70 ] ;
  List<String> productImage = [
    'https://image.shutterstock.com/image-photo/mango-isolated-on-white-background-600w-610892249.jpg' ,
    'https://image.shutterstock.com/image-photo/orange-fruit-slices-leaves-isolated-600w-1386912362.jpg' ,
    'https://image.shutterstock.com/image-photo/green-grape-leaves-isolated-on-600w-533487490.jpg' ,
    'https://media.istockphoto.com/photos/banana-picture-id1184345169?s=612x612' ,
    'https://media.istockphoto.com/photos/cherry-trio-with-stem-and-leaf-picture-id157428769?s=612x612' ,
    'https://media.istockphoto.com/photos/single-whole-peach-fruit-with-leaf-and-slice-isolated-on-white-picture-id1151868959?s=612x612' ,
    'https://media.istockphoto.com/photos/fruit-background-picture-id529664572?s=612x612' ,
  ] ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
        //  flex: 18,
          child: ListView.builder(
              itemCount: productName.length,
              itemBuilder: (context, index){
                return Container(
                  width: 40,
                  child: Card(
                    elevation: 16, // the size of the shadow
                    shadowColor: Colors.black,
                    margin: EdgeInsets.symmetric(vertical: 22.0),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image(
                                height: 100,
                                width: 100,
                                image: NetworkImage(productImage[index].toString()),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(productName[index].toString() ,
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 5,),
                                    Text(productUnit[index].toString() +" "+r"$"+ productPrice[index].toString() ,
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [Icon(Icons.star,
                                      color: Colors.yellow,),
                                        Icon(Icons.star,
                                          color: Colors.yellow,),
                                        Icon(Icons.star,
                                          color: Colors.yellow,),
                                        Icon(Icons.star_half_outlined,
                                          color: Colors.yellow,),
                                        Icon(Icons.star_half_sharp,
                                          color: Colors.yellow,),

                                      ],
                                    ),
                                    SizedBox(height: 100.0, width: double.infinity,),
                                    Align(
                                      alignment: Alignment(0.8, -1.0),
                                      heightFactor: 0.2,
                                      widthFactor: 27.0,
                                      child: FloatingActionButton(
                                        onPressed: null,
                                        child: Icon(Icons.favorite),
                                                backgroundColor: Colors.red,
                                        elevation: 16, // the size of the shadow
                                      ),

                                    ) ],
                                ),
                              )

                            ],
                          )
                        ],

                      ),

                    ),

                  ),
                );
              }

              ),
        ),

      ],

    );

  }
}
