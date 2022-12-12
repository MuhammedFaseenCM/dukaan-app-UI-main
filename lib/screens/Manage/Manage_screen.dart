import 'package:flutter/material.dart';

class ManageScreen extends StatelessWidget {
  const ManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Store'),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 224, 221, 221),
      body: Column(
        children: [
          rowCards('Marketing \nDesigns', 'Online\nPayments', Icons.volume_up,
              Icons.currency_rupee_rounded, Colors.orange, Colors.green),
          rowCards('Discount\nCoupons', 'My\nCustomers', Icons.percent,
              Icons.people, Colors.orangeAccent, Colors.greenAccent),
          rowCards(
              'Store QR\nCode',
              'Extra\nCharges',
              Icons.center_focus_strong,
              Icons.money,
              Colors.grey,
              Colors.purple),
          rowCardsingle('Order\nForm', Icons.list, Colors.pink),
        ],
      ),
    );
  }

  Widget card(text, icon, color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints.expand(height: 130, width: 180),
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Card(
                    color: color,
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget rowCards(text1, text2, icon1, icon2, color1, color2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [card(text1, icon1, color1), card(text2, icon2, color2)],
    );
  }

  Widget rowCardsingle(text, icon, color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [singleCard(text, icon, color)],
    );
  }

  Widget singleCard(text, icon, color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints.expand(height: 130, width: 180),
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Card(
                        color: color,
                        child: Icon(
                          icon,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                      width: 50.0,
                      child: Card(
                          color: Color.fromARGB(255, 2, 216, 9),
                          child: Center(
                            child: Text(
                              'NEW',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.0,
                                  leadingDistribution:
                                      TextLeadingDistribution.even),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    )
                  ],
                ),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
