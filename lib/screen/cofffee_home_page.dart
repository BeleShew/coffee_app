import 'package:flutter/material.dart';
import '../model/coffe_model.dart';
import 'coffee_list_page.dart';
class CoffeeHomePage extends StatefulWidget {
  const CoffeeHomePage({super.key});
  @override
  State<CoffeeHomePage> createState() => _CoffeeHomePageState();
}

class _CoffeeHomePageState extends State<CoffeeHomePage> {

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title:const Text("Home"),centerTitle: true,),
      body: GestureDetector(
        onTapUp: (details){
          // if((details.primaryDelta??0)<-20){
            Navigator.of(context).push(PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 650),
                pageBuilder: (context,animation,_){
              return FadeTransition(opacity: animation,
                  child:const CoffeeListPage(),
              );
            }));
          // }
        },
        child: Stack(
          children: [
            Positioned(
              height: size.height*0.4,
              left: 0,
              right: 0,
              top: size.height*0.15,
              child: Hero(
                tag: coffees[6].coffeeName,
                  child: Image.asset(coffees[6].imagePath,),
              ),
            ),
            Positioned(
              height: size.height*0.6,
              left: 0,
              right: 0,
              bottom: 0,
              child: Hero(
                tag: coffees[7].coffeeName,
                  child: Image.asset(
                    coffees[7].imagePath,
                    fit: BoxFit.cover,
                  ),
              ),
            ),
            Positioned(
              height: size.height,
              left: 0,
              right: 0,
              bottom:-size.height*0.7,
              child: Hero(
                tag: coffees[8].coffeeName,
                child: Image.asset(
                  coffees[8].imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
