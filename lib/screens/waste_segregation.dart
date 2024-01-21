import 'package:flutter/material.dart';

class GreenFlowerExchangeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Green Flower Exchange'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Available Green Flowers:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              const SizedBox(height: 10),
              buildFlowerItem('Flower', 123),
              const SizedBox(height: 20),
              const Text(
                'Exchange Offers:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              const SizedBox(height: 10),
              buildExchangeOffer('Small Aloe Vera Plant', 'Flowers', 70, 'https://plus.unsplash.com/premium_photo-1673969608352-ec2d84279614?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              buildExchangeOffer('Mini Snake Plant', 'FLowers', 80, 'https://plus.unsplash.com/premium_photo-1673064927010-9c73e9df6b52?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              buildExchangeOffer('Tiny Bamboo Plant', 'Flowers', 100, 'https://images.unsplash.com/photo-1585155844510-de0df7f65c6f?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFlowerItem(String name, int quantity) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$name:',
            style: const TextStyle(fontSize: 16, color: Colors.green),
          ),
          Text(
            '$quantity available',
            style: const TextStyle(fontSize: 16, color: Colors.green),
          ),
        ],
      ),
    );
  }

  Widget buildExchangeOffer(String plantName, String requiredFlower, int flowerQuantity, String plantImageUrl) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Exchange for $plantName:',
            style: const TextStyle(fontSize: 16, color: Colors.green),
          ),
          const SizedBox(height: 5),
          Text(
            'Requires: $flowerQuantity $requiredFlower',
            style: const TextStyle(fontSize: 16, color: Colors.green),
          ),
          const SizedBox(height: 10),
          Image.network(
            plantImageUrl,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Implement exchange logic here
            },
            child: const Text('Exchange Now'),
          ),
        ],
      ),
    );
  }
}
