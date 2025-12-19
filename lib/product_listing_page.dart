
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Main App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListPage(),
    );
  }
}

// Product model
class Product {
  final String title;
  final String imagePath;
  final String price;
  final String category;

  Product({
    required this.title,
    required this.imagePath,
    required this.price,
    required this.category,
  });
}

// Sample product list
List<Product> allProducts = [
  Product(title: 'HELLO WORLD', imagePath: 'assets/order filter2.png', price: '₹150', category: 'Product'),
  Product(title: 'WELCOME', imagePath: 'assets/health.png', price: '₹200', category: 'Product'),
  Product(title: 'makeup', imagePath: 'assets/order filter4.png', price: '₹550', category: 'Product'),
  Product(title: 'makeup', imagePath: 'assets/order filter3.png', price: '₹550', category: 'Product'),
  Product(title: 'makeup', imagePath: 'assets/order filter2(1).png', price: '₹550', category: 'Product'),
  Product(title: 'HELLO WORLD', imagePath: 'assets/order filter2.png', price: '₹150', category: 'Product'),
  Product(title: 'WELCOME', imagePath: 'assets/health.png', price: '₹200', category: 'Product'),
  Product(title: 'makeup', imagePath: 'assets/order filter4.png', price: '₹550', category: 'Product'),
  Product(title: 'makeup', imagePath: 'assets/order filter3.png', price: '₹550', category: 'Product'),
  Product(title: 'makeup', imagePath: 'assets/order filter2(1).png', price: '₹550', category: 'Product'),
  Product(title: 'WATCH 1', imagePath: 'assets/tadeusz-lakota-Tb38UzCvKCY-unsplash.jpg', price: '₹250', category: 'Watch'),
  Product(title: 'WATCH 2', imagePath: 'assets/shreesha-bhat-lz6z9GZu8hk-unsplash.jpg', price: '₹300', category: 'Watch'),
  Product(title: 'WATCH 2', imagePath: 'assets/paul-cuoco-CO2vOhPqlrM-unsplash.jpg', price: '₹300', category: 'Watch'),
  Product(title: 'WATCH 2', imagePath: 'assets/alvaro-bernal-RgIKRYhmG2k-unsplash.jpg', price: '₹300', category: 'Watch'),
  Product(title: 'WATCH 2', imagePath: 'assets/andrik-langfield-0rTCXZM7Xfo-unsplash.jpg', price: '₹300', category: 'Watch'),
  Product(title: 'WATCH 1', imagePath: 'assets/tadeusz-lakota-Tb38UzCvKCY-unsplash.jpg', price: '₹250', category: 'Watch'),
  Product(title: 'WATCH 2', imagePath: 'assets/shreesha-bhat-lz6z9GZu8hk-unsplash.jpg', price: '₹300', category: 'Watch'),
  Product(title: 'WATCH 2', imagePath: 'assets/paul-cuoco-CO2vOhPqlrM-unsplash.jpg', price: '₹300', category: 'Watch'),
  Product(title: 'WATCH 2', imagePath: 'assets/alvaro-bernal-RgIKRYhmG2k-unsplash.jpg', price: '₹300', category: 'Watch'),
  Product(title: 'WATCH 2', imagePath: 'assets/andrik-langfield-0rTCXZM7Xfo-unsplash.jpg', price: '₹300', category: 'Watch'),
  Product(title: 'LIPSTICK', imagePath: 'assets/lip1.jpg', price: '₹350', category: 'Lipstick'),
  Product(title: 'LIPSTICK', imagePath: 'assets/lip2.jpg', price: '₹450', category: 'Lipstick'),
  Product(title: 'LIPSTICK', imagePath: 'assets/lip3.jpg', price: '₹450', category: 'Lipstick'),
  Product(title: 'LIPSTICK', imagePath: 'assets/lip4.jpg', price: '₹450', category: 'Lipstick'),
  Product(title: 'LIPSTICK', imagePath: 'assets/lip5.jpg', price: '₹450', category: 'Lipstick'),
  Product(title: 'LIPSTICK', imagePath: 'assets/lip6.jpg', price: '₹450', category: 'Lipstick'),
  Product(title: 'LIPSTICK', imagePath: 'assets/lip1.jpg', price: '₹350', category: 'Lipstick'),
  Product(title: 'LIPSTICK', imagePath: 'assets/lip2.jpg', price: '₹450', category: 'Lipstick'),
  Product(title: 'LIPSTICK', imagePath: 'assets/lip3.jpg', price: '₹450', category: 'Lipstick'),
  Product(title: 'LIPSTICK', imagePath: 'assets/lip4.jpg', price: '₹450', category: 'Lipstick'),
  Product(title: 'LIPSTICK', imagePath: 'assets/lip5.jpg', price: '₹450', category: 'Lipstick'),
  Product(title: 'LIPSTICK', imagePath: 'assets/lip6.jpg', price: '₹450', category: 'Lipstick'),
  Product(title: 'CREAM', imagePath: 'assets/cream1.jpg', price: '₹400', category: 'Cream'),
  Product(title: 'CREAM', imagePath: 'assets/cream2.jpg', price: '₹400', category: 'Cream'),
  Product(title: 'CREAM', imagePath: 'assets/cream3.jpg', price: '₹400', category: 'Cream'),
  Product(title: 'CREAM', imagePath: 'assets/cream4.jpg', price: '₹400', category: 'Cream'),
  Product(title: 'CREAM', imagePath: 'assets/cream5.jpg', price: '₹400', category: 'Cream'),
  Product(title: 'CREAM', imagePath: 'assets/cream6.jpg', price: '₹400', category: 'Cream'),
  Product(title: 'CREAM', imagePath: 'assets/cream7.jpg', price: '₹400', category: 'Cream'),
  Product(title: 'CREAM', imagePath: 'assets/cream1.jpg', price: '₹400', category: 'Cream'),
  Product(title: 'CREAM', imagePath: 'assets/cream2.jpg', price: '₹400', category: 'Cream'),
  Product(title: 'CREAM', imagePath: 'assets/cream3.jpg', price: '₹400', category: 'Cream'),
  Product(title: 'CREAM', imagePath: 'assets/cream4.jpg', price: '₹400', category: 'Cream'),
  Product(title: 'CREAM', imagePath: 'assets/cream5.jpg', price: '₹400', category: 'Cream'),
  Product(title: 'CREAM', imagePath: 'assets/cream6.jpg', price: '₹400', category: 'Cream'),
  Product(title: 'CREAM', imagePath: 'assets/cream7.jpg', price: '₹400', category: 'Cream'),
];


// Product List Page
class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  String selectedCategory = 'Product'; // Default selected category

  @override
  Widget build(BuildContext context) {
    // Filter products based on selected category
    List<Product> filteredProducts =
        allProducts.where((p) => p.category == selectedCategory).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: Row(
        children: [
          // Left Sidebar Filter
          Container(
            width: 120,
            color: Colors.grey[200],
            child: ListView(
              children: [
                filterItem('Product'),
                filterItem('Watch'),
                filterItem('Lipstick'),
                filterItem('Cream'),
              ],
            ),
          ),

          // Right Product Grid
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              padding: const EdgeInsets.all(16),
              childAspectRatio: 0.7,
              children: filteredProducts.map((p) => productItem(p)).toList(),
            ),
          ),
        ],
      ),
    );
  }

  // Sidebar filter item
  Widget filterItem(String category) {
    bool isSelected = category == selectedCategory;
    return ListTile(
      title: Text(
        category,
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          color: isSelected ? Colors.blue : Colors.black,
        ),
      ),
      onTap: () {
        setState(() {
          selectedCategory = category; // Update selected category
        });
      },
    );
  }
}

// Reusable Product Item Widget
Widget productItem(Product p) {
  // return Column(
   return SingleChildScrollView(
    child: Column(
      mainAxisSize: MainAxisSize.min,
    children: [
      Image.asset(
        p.imagePath,
        height: 100,
        width: 100,
        fit: BoxFit.cover,
      ),
      const SizedBox(height: 8),
      Text(
        p.title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.star, size: 14, color: Colors.orange),
          Icon(Icons.star, size: 14, color: Colors.orange),
          Icon(Icons.star, size: 14, color: Colors.orange),
          Icon(Icons.star_half, size: 14, color: Colors.orange),
          Icon(Icons.star_border, size: 14, color: Colors.orange),
        ],
      ),
      const SizedBox(height: 4),
      Text(
        p.price,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
    ],
    ),
  );
}
