import 'package:flutter/material.dart';

class Catalogue extends StatelessWidget {
  const Catalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalogue'),
        centerTitle: true,
        actions: const [Icon(Icons.search)],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            proANcat(),
            space(10.0),
            boxes('Bon Organic | Men...     ', 'assets/images/tshirt1.jpg',
                '₹799'),
            space(10.0),
            boxes('Mug| Explore                   ', 'assets/images/cup1.jpg',
                '₹799'),
            space(10.0),
            boxes(
                'Combo Blahst 1|Pack...', 'assets/images/shirt1.webp', '₹899'),
            space(10.0),
            boxes('Couch Potato | Men...    ', 'assets/images/butwhytshirt.jpg',
                '₹699'),
            space(10.0),
            boxes('Mug | Orchard                  ', 'assets/images/cup1.jpg',
                '₹399'),
            space(10.0),
            boxes('Couch Potato | Men...    ', 'assets/images/butwhytshirt.jpg',
                '₹699'),
            space(10.0),
            boxes('Mug | Orchard                  ', 'assets/images/cup1.jpg',
                '₹399')
          ],
        ),
      ),
    );
  }

  Widget proANcat() {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                'Products',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text('Categories',
                  style: TextStyle(color: Colors.white, fontSize: 20))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 200.0,
                height: 5.0,
                color: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget boxes(title, image, price) {
    return ConstrainedBox(
      constraints: const BoxConstraints.expand(height: 150, width: 350),
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                productImage(image),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: const TextStyle(fontSize: 20),
                        ),
                        const Icon(Icons.more_vert)
                      ],
                    ),
                    const Text('1 piece'),
                    Text(
                      price,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'In stock                                    ',
                          style: TextStyle(color: Colors.green),
                        ),
                        Switch(value: true, onChanged: (value) {})
                      ],
                    )
                  ],
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.share_outlined),
                Text('  Share Product'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget space(size) {
    return SizedBox(
      height: size,
    );
  }

  Widget productImage(image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Card(
          color: const Color.fromARGB(255, 252, 239, 221),
          elevation: 10.0,
          shadowColor: Colors.black,
          child: Image.asset(
            image,
            height: 100,
            width: 80,
          )),
    );
  }
}
