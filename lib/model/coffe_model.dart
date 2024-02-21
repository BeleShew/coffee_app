class CoffeeModel {
  String coffeeName;
  String imagePath;
  double price;
  CoffeeModel ({required this.coffeeName, required this.imagePath, required this.price});
}
final coffees = [
  CoffeeModel(
      imagePath: "assets/caffe/1.png",
      coffeeName: "Caramel Macchiato",
      price: 2.50
  ),
  CoffeeModel(
      imagePath: "assets/caffe/2.png",
      coffeeName: "Caramel Cold Drink",
      price: 3.50
  ),
  CoffeeModel(
      imagePath: "assets/caffe/3.png",
      coffeeName: "Iced Coffe Mocha",
      price: 3.00
  ),
  CoffeeModel(
      imagePath: "assets/caffe/4.png",
      coffeeName: "Caramelized Pecan Latte",
      price: 4.50
  ),
  CoffeeModel(
      imagePath: "assets/caffe/5.png",
      coffeeName: "Toffee Nut Latte",
      price: 4.00
  ),
  CoffeeModel(
      imagePath: "assets/caffe/6.png",
      coffeeName: "Capuchino",
      price: 2.50
  ),
  CoffeeModel(
      imagePath: "assets/caffe/7.png",
      coffeeName: "Toffee Nut Iced Latte",
      price: 3.50
  ),
  CoffeeModel(
      imagePath: "assets/caffe/8.png",
      coffeeName: "Americano",
      price: 3.00
  ),
  CoffeeModel(
      imagePath: "assets/caffe/9.png",
      coffeeName: "Vietnamese-Style Iced Coffee",
      price: 4.50
  ),
  CoffeeModel(
      imagePath: "assets/caffe/10.png",
      coffeeName: "Black Tea Latte",
      price: 4.00
  ),
  CoffeeModel(
      imagePath: "assets/caffe/11.png",
      coffeeName: "Classic Irish Coffee",
      price: 2.50
  ),
  CoffeeModel(
      imagePath: "assets/caffe/12.png",
      coffeeName: "Toffee Nut Crunch Latte",
      price: 3.50
  )
];