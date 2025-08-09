import 'package:flutter/material.dart';

class Cities extends StatelessWidget {
   Cities({super.key});

List<Map<String,dynamic>> cities = [
{
  'image':'assets/images/giza.jpg',
  'title':'Egypt',
  'subtitle':'Giza\nPopulation: 9.6 mill'
},
{
  'image':'assets/images/delhi.jpeg',
  'title':'Delhi',
  'subtitle':'India\nPopulaiton: 19 mill'
},
{
  'image':'assets/images/london.jpeg',
  'title':'London',
  'subtitle':'Birtain\nPopulation: 8 mill'
},
{
  'image':'assets/images/vancouver.jpg',
  'title':'Vancouver',
  'subtitle':'Canda\nPopulation: 2.4 mill'
},
{
  'image':'assets/images/new-york.jpeg',
  'title':'New York',
  'subtitle':'USA\nPopulation: 8.1 mill'
},
{
  'image':'assets/images/paris.jpg',
  'title':'Paris',
  'subtitle':'France\nPopulation: 2.15 mill'
},

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.green[200],title: Text('Cities around world',style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),),
      body: Column(
        children: [
          Expanded(child: 
          ListView.builder(
            itemCount: cities.length,
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 4),
            itemBuilder: (context,index){
              final city = cities[index];
              return Card( 
                elevation: 5,
                margin:EdgeInsets.symmetric(vertical: 8,horizontal: 9),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 8),
                  child: Row( 
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(city['image'],height: 130,width: 150,fit: BoxFit.fill,)),
                      SizedBox(width: 20,),
                      Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(city['title'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                        Text(city['subtitle'],style: TextStyle(fontSize: 15),)
                      ],
                      )
                    ],
                  ),
                )
              );
            },
            ))
        ],
      ),
    );
  }
}