import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {

  final String coffeeImage;
  final String coffeeName;
  final String coffeePrice;

  const CoffeeTile({Key? key, required this.coffeeImage, required this.coffeeName, required this.coffeePrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
      child: Container(
          padding: const EdgeInsets.all(12.0),
          width: 200,
          decoration: BoxDecoration(
              color: Colors.black54, borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(coffeeImage),
              ),

              //coffee name
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffeeName,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "With Almond Milk",
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    )
                  ],
                ),
              ),

              //price
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(coffeePrice),
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6.0)
                      ),
                      child: const Icon(Icons.add)
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
