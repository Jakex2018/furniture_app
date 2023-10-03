class Product {
  final String title, description, image;
  final int price, id;
  Product(
      {required this.title,
      required this.description,
      required this.id,
      required this.image,
      required this.price});
}

List<Product> products = [
  Product(
  id: 1,
  title: 'Chair', 
  description: 'lorem10dasdasmdkasmdkasmdkasmdkasmdkasmdadsadasdas', 
  image: 'assets/images/Item_1.png', 
  price: 400),
  Product(
  id: 2,
  title: 'sofa 02', 
  description: 'sdfdsfsdfsdafsad', 
  image: 'assets/images/Item_2.png', 
  price: 200),
  Product(
  id: 3,
  title: 'sofa 03', 
  description: 'sdfsdfsdfsdfsdfsdfasdfsdffsdf', 
  image: 'assets/images/Item_3.png', 
  price: 500),
  Product(
  id: 4,
  title: 'sofa 03', 
  description: 'sdfsdfsdfsdfsdfsdfasdfsdffsdf', 
  image: 'assets/images/Item_3.png', 
  price: 500),
  Product(
  id: 5,
  title: 'sofa 03', 
  description: 'sdfsdfsdfsdfsdfsdfasdfsdffsdf', 
  image: 'assets/images/Item_3.png', 
  price: 500),
];
