import 'package:flutter/material.dart';

import '../model/coffe_model.dart';
import 'coffee_list_page.dart';

class CoffeeDetailsPage extends StatefulWidget  {
   const CoffeeDetailsPage({super.key,required this.coffeeModel});
   final CoffeeModel coffeeModel;

  @override
  State<CoffeeDetailsPage> createState() => _CoffeeDetailsPageState();
}

class _CoffeeDetailsPageState extends State<CoffeeDetailsPage>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width*0.2),
            child: Hero(
              tag: "text${widget.coffeeModel.coffeeName}",
              child: Material(
                child: Text(widget.coffeeModel.coffeeName,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: size.height*0.4,
            child: Stack(
              children: [
                Positioned.fill(
                    child: Hero(
                      tag: widget.coffeeModel.coffeeName,
                        child: Image.asset(widget.coffeeModel.imagePath,
                          fit: BoxFit.fitHeight,),
                    ),
                ),
                Hero(
                  tag: "${widget.coffeeModel.price}-${widget.coffeeModel.coffeeName}",
                  child: Center(
                    child: SizedBox(
                      width: 65,
                      height: 40,
                      child: Material(
                        color: Colors.green.withOpacity(0.8),
                        shadowColor: Colors.green.withOpacity(0.3),
                        elevation: 50,
                        borderRadius:const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("\$ ${widget.coffeeModel.price}",
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                    flightShuttleBuilder:( BuildContext flightContext,
                        Animation<double> animation,
                        HeroFlightDirection flightDirection,
                        BuildContext fromHeroContext,
                        BuildContext toHeroContext,){
                      return Center(
                        child: SizedBox(
                          width: 65,
                          height: 40,
                          child: Material(
                            color: Colors.green.withOpacity(0.8),
                            shadowColor: Colors.green.withOpacity(0.3),
                            elevation: 50,
                            borderRadius:const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text("\$ ${widget.coffeeModel.price}",
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
