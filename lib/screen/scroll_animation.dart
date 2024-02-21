import 'package:flutter/material.dart';
class ScrollAnimation extends StatefulWidget {
  const ScrollAnimation({super.key});

  @override
  State<ScrollAnimation> createState() => _ScrollAnimationState();
}

class _ScrollAnimationState extends State<ScrollAnimation> {
  List<HeaderModel> headerList = [
    HeaderModel(
      title: "Most Favorite",
      details: "20 Items",
      colors: Colors.orange.withOpacity(0.4),
    ),
    HeaderModel(
      title: "Newest",
      details: "20 Items",
      colors: Colors.blue.withOpacity(0.4),
    ),
    HeaderModel(
      title: "Supper Saving",
      details: "20 Items",
      colors: Colors.blue.withOpacity(0.4),
    ),
  ];
  List<FoodModel> foodList = [
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),


    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),


    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),
    FoodModel(
      name: "Most Favorite",
      brand: "Burger",
      price: 3000,
      image: const IconData(0xf041, fontFamily: 'MaterialIcons'),
    ),

  ];
  ScrollController scrollController=ScrollController();
  bool closeTopContainer=false;
  double topContainer=0;
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      var values=scrollController.offset/90;
      setState(() {
        closeTopContainer=scrollController.offset>50;
        topContainer=values;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Animation"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AnimatedOpacity(
              duration:const Duration(milliseconds: 500),
              opacity: closeTopContainer?0:1,
              child: AnimatedContainer(
                alignment: Alignment.topCenter,
                width: context.size!.width,
                height: closeTopContainer?0:200,
                duration:const Duration(milliseconds: 500),
                child: FittedBox(
                  fit:BoxFit.fill,
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: headerList.length,
                      itemBuilder: (_, index) {
                        return Container(
                          // height: 200,
                          width: context.size!.width / 3,
                          decoration: BoxDecoration(
                            color: headerList[index].colors,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  headerList[index].title,
                                  style: const TextStyle(fontSize: 17),
                                ),
                                Text(
                                  headerList[index].details,
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(width: 16,),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child:ListView.builder(
                  controller: scrollController,
                    shrinkWrap: true,
                    itemCount: foodList.length,
                    itemBuilder: (_,index){
                    double scale=1.0;
                    if(topContainer>0.5){
                      scale=index+0.5-topContainer;
                      if(scale<0){
                        scale=0;
                      }
                      else if(scale>1){
                        scale=1;
                      }
                    }
                  return SizedBox(
                    width: context.size!.width,
                    child: Opacity(
                      opacity: scale,
                      child: Transform(
                        transform: Matrix4.identity()..scale(scale,scale)
                          ..setEntry(3, 2, 0.001)
                          // ..rotateX(-1.2)
                        // ..rotateY(0)
                        ,
                        alignment: Alignment.bottomCenter,
                        child: Align(
                          heightFactor: 0.8,
                          alignment: Alignment.topCenter,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: Material(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade400,
                              elevation: 5,
                              shadowColor: Colors.transparent,
                              child: Card(
                                elevation: 10,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                                  child:
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(foodList[index].name,style:const TextStyle(color: Colors.black,fontSize: 18),),
                                          const SizedBox(height: 5,),
                                          Text(foodList[index].brand,style:const TextStyle(color: Colors.black,fontSize: 12),),
                                          const SizedBox(height: 5,),
                                          Text("${foodList[index].price}",style:const TextStyle(color: Colors.black,fontSize: 16),),
                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blue.withOpacity(0.4),
                                          shape: BoxShape.circle
                                        ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("$index",style:const TextStyle(color: Colors.black,fontSize: 18),),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderModel {
  String title;
  String details;
  Color colors;
  HeaderModel({required this.title, required this.colors, required this.details});
}
class FoodModel {
  String name;
  String brand;
  int price;
  IconData image;
  FoodModel({required this.name, required this.brand, required this.price, required this.image});
}