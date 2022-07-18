import 'package:dribble_ui_2_practice/utils/coffee_tile.dart';
import 'package:dribble_ui_2_practice/utils/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //list of coffe types
  final List coffeeType = [
    [
      "Cappucino",
      true,
    ],
    [
      "Latte",
      false,
    ],
    [
      "Black",
      false,
    ],
    [
      "Tea",
      false,
    ]
  ];

  //user tapped on coffee types
  void coffeeTypeSelected(int index){
    setState(() {
      for(int i = 0; i < coffeeType.length; i++){
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person)
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
      ]),
      body: Column(
        children: [
          //Find the best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Find the best coffee for you",
              style: GoogleFonts.bebasNeue(
                fontSize: 56,
              ),
            ),
          ),
          const SizedBox(height: 25.0,),
          //Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(              
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.orange,),
                hintText: "Find your coffee...",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)
                ),
              ),
            ),
          ),

           const SizedBox(height: 25.0,),

           //horizontal listview of coffee types
           Container(
            height: 50.0,
            child: ListView.builder(
              itemCount: coffeeType.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {              
              return CoffeeType(
                coffeeType: coffeeType[index][0],
                isSelected: coffeeType[index][1],
                isTapped: (){
                  coffeeTypeSelected(index);
                },
              );
            })
            ),
           

           //horizontal listview of coffee shop
           Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CoffeeTile(
                  coffeeImage: "Assets/Images/nathan-dumlao-XOhI_kW_TaM-unsplash.jpg",
                  coffeeName: "Latte",
                  coffeePrice: "\$4.00",
                ),
                CoffeeTile(
                  coffeeImage: "Assets/Images/nathan-dumlao-c2Y16tC3yO8-unsplash.jpg",
                  coffeeName: "Cappucino",
                  coffeePrice: "\$4.10",
                ),
                CoffeeTile(
                  coffeeImage: "Assets/Images/jeremy-yap-jn-HaGWe4yw-unsplash.jpg",
                  coffeeName: "Chocolate Coffee",
                  coffeePrice: "\$4.50",
                )
              ],
            )
           )
        ],
      ),
    );
  }
}