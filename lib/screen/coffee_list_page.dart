
import 'package:flutter/material.dart';

import '../model/coffe_model.dart';
import 'coffee_details_page.dart';
double initialPage=8.0;
class CoffeeListPage extends StatefulWidget {
  const CoffeeListPage({super.key});
  @override
  State<CoffeeListPage> createState() => _CoffeeListPageState();
}

class _CoffeeListPageState extends State<CoffeeListPage> {
  PageController pageController=PageController(viewportFraction: 0.30,initialPage: initialPage.toInt());
  PageController headerController=PageController(initialPage: initialPage.toInt());

  double currentPage=initialPage;
  double headerPage=initialPage;
  _pageScrollListener(){
    setState(() {
      currentPage=pageController.page??0;
    });
  }

  _headerScrollListener(){
    setState(() {
      headerPage=currentPage;
    });
  }
  @override
  void initState() {
    pageController.addListener(_pageScrollListener);
    headerController.addListener(_headerScrollListener);
    super.initState();
  }
  @override
  void dispose() {
    pageController.removeListener(_pageScrollListener);
    pageController.dispose();
    headerController.removeListener(_headerScrollListener);
    headerController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Coffee List"),centerTitle: true,),
      // backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 20,
            right: 20,
            bottom: -MediaQuery.of(context).size.height*0.22,
            height: MediaQuery.of(context).size.height*0.3,
            child: const DecoratedBox(decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.brown,
                  blurRadius: 90,
                  spreadRadius: 45
                )
              ]
            ),
            ),
          ),
          Transform.scale(
            scale: 1.6,
            alignment: Alignment.bottomCenter,
            child: PageView.builder(
                controller: pageController,
                itemCount: coffees.length+1,
                scrollDirection: Axis.vertical,
                onPageChanged: (values){
                  if(values<coffees.length){
                    headerController.animateToPage(values, duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
                  }
                },
                itemBuilder: (context,index){
                  if(index==0 ) {
                    return const SizedBox.shrink();
                  }
                  final coffee= coffees[index-1];
                  final result= currentPage-index+1;
                  final value=-0.4*result+1;
                  final opacity=value.clamp(0.0, 1.0);

                  return Padding(
                    padding:const EdgeInsets.only(bottom: 20),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(PageRouteBuilder(
                            transitionDuration: const Duration(milliseconds: 650),
                            pageBuilder: (context,animation,_){
                              return FadeTransition(opacity: animation,
                                child: CoffeeDetailsPage(coffeeModel:coffee),
                              );
                            }));
                      },
                      child: Transform(
                        alignment: Alignment.bottomCenter,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..translate(0.0,MediaQuery.of(context).size.height/2.6*(1-value).abs(),
                          )
                          ..scale(value),
                        child:
                        Opacity(
                          opacity: opacity,
                            child: Hero(
                              tag: coffee.coffeeName,
                              child: Image.asset(coffee.imagePath,
                              fit:BoxFit.fitHeight,
                              ),
                            ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            height: 100,
            child:Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: PageView.builder(
                      controller: headerController,
                      physics:const NeverScrollableScrollPhysics(),
                      itemCount: coffees.length,
                      itemBuilder: (context,index){
                        final opacity=(1-(index-headerPage).abs()).clamp(0.0, 1.0);
                        return Opacity(
                          opacity: opacity,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.2,
                            vertical: 10,
                            ),
                            child: Hero(
                              tag: "text${coffees[index].coffeeName}",
                              child: OverflowBox(
                                maxHeight: double.infinity,
                                child: Material(
                                  child: Text(coffees[index].coffeeName,
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    style: const TextStyle(
                                        // color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w800
                                    ),),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 10,),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  child:
                  Hero(
                    tag: "${coffees[currentPage.toInt().clamp(0, coffees.length-1)].price}-${coffees[currentPage.toInt().clamp(0, coffees.length-1)].coffeeName}",
                    child: Material(
                      child: Text("\$ ${coffees[currentPage.toInt().clamp(0, coffees.length-1)].price.toStringAsFixed(2)}",
                        key: Key(coffees[currentPage.toInt().clamp(0, coffees.length-1)].coffeeName),
                        style: const TextStyle(
                            fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
