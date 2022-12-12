import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Payment extends StatelessWidget {
  Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payments'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                tLimit(),
                space(15.0),
                list(),
                buttonrow(),
                listtile()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget tLimit() {
    return ConstrainedBox(
      constraints: const BoxConstraints.expand(height: 164, width: 400),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                width: 1.0, color: Color.fromARGB(255, 186, 182, 182)),
            borderRadius: BorderRadius.circular(5.0)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '   Transaction Limit',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const Text(
                '   A free limit up to which you will recieve the online\n   payments directly in your bank',
                style: TextStyle(color: Color.fromARGB(255, 98, 96, 96)),
              ),
              space(15.0),
              LinearPercentIndicator(
                width: 340,
                backgroundColor: Colors.grey[300],
                progressColor: Colors.blue[900],
                lineHeight: 6,
                percent: 0.3,
                barRadius: const Radius.circular(16),
              ),
              space(5.0),
              const Text(
                "  36,668 left out of ₹50,000",
                style: TextStyle(color: Color.fromARGB(255, 98, 96, 96)),
              ),
              space(10.0),
              SizedBox(
                height: 30,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Increase limit'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget space(height) {
    return SizedBox(
      height: height,
    );
  }

  Widget list() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          space(15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Default Method'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text('Online Payments',
                      style:
                          TextStyle(color: Color.fromARGB(255, 103, 99, 99))),
                  Icon(Icons.keyboard_arrow_right_rounded),
                ],
              )
            ],
          ),
          space(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Payment Profile'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text('Bank Account',
                      style:
                          TextStyle(color: Color.fromARGB(255, 103, 99, 99))),
                  Icon(Icons.keyboard_arrow_right_rounded),
                ],
              )
            ],
          ),
          space(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Payments Overview',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Text(
                    'Life Time',
                    style: TextStyle(color: Color.fromARGB(255, 103, 99, 99)),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded),
                ],
              )
            ],
          ),
          space(10.0),
          box(),
          space(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Transactions',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          )
        ],
      ),
    );
  }

  final title = ['Default Method', 'Payment Profile', 'Payment Overview'];
  final trailing = ['Online Payments', 'Bank Account', 'Life Time'];

  Widget box() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints.expand(height: 100, width: 180),
          child: Card(
            color: Colors.deepOrange,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('AMOUNT ON HOLD',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  Text(
                    '₹0',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints.expand(height: 100, width: 180),
          child: Card(
            color: const Color.fromARGB(255, 20, 170, 25),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('AMOUNT RECIEVED',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  Text(
                    '₹13,332',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget button(text, color) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ))),
      child: Text(text),
    );
  }

  Widget buttonrow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        button('On Hold', Colors.grey),
        button('Payouts (15)', Colors.blue),
        button('Refunds', Colors.grey),
      ],
    );
  }

  Widget listtile() {
    return Column(children: [
      lists('Order #1688068', 'Jul 12, 02:06 PM', 'assets/images/shirt1.webp',
          '₹397.4'),
      lists('Order #1457741', 'Apr 26, 07:47 AM', 'assets/images/cup1.jpg',
          '₹686.42'),
      lists('Order #1408896', 'Apr 11, 10:54 AM', 'assets/images/tshirt1.jpg',
          '₹1123.5'),
      lists('Order #1369633', 'Apr 2, 11:29 AM',
          'assets/images/butwhytshirt.jpg', '₹1722.75'),
      lists('Order #1688068', 'Jul 12, 02:06 PM', 'assets/images/shirt1.webp',
          '₹397.4'),
      lists('Order #1457741', 'Apr 26, 07:47 AM', 'assets/images/cup1.jpg',
          '₹686.42'),
      lists('Order #1408896', 'Apr 11, 10:54 AM', 'assets/images/tshirt1.jpg',
          '₹1123.5'),
      lists('Order #1369633', 'Apr 2, 11:29 AM',
          'assets/images/butwhytshirt.jpg', '₹1722.75'),
      lists('Order #1688068', 'Jul 12, 02:06 PM', 'assets/images/shirt1.webp',
          '₹397.4'),
      lists('Order #1457741', 'Apr 26, 07:47 AM', 'assets/images/cup1.jpg',
          '₹686.42'),
      lists('Order #1408896', 'Apr 11, 10:54 AM', 'assets/images/tshirt1.jpg',
          '₹1123.5'),
      lists('Order #1369633', 'Apr 2, 11:29 AM',
          'assets/images/butwhytshirt.jpg', '₹1722.75'),
      lists('Order #1688068', 'Jul 12, 02:06 PM', 'assets/images/shirt1.webp',
          '₹397.4'),
      lists('Order #1457741', 'Apr 26, 07:47 AM', 'assets/images/cup1.jpg',
          '₹686.42'),
      lists('Order #1408896', 'Apr 11, 10:54 AM', 'assets/images/tshirt1.jpg',
          '₹1123.5'),
      lists('Order #1369633', 'Apr 2, 11:29 AM',
          'assets/images/butwhytshirt.jpg', '₹1722.75')
    ]);
  }

  Widget lists(text, subtext, image, pricetext) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: SizedBox(
            height: 50,
            width: 50,
            child: Card(child: Image.asset(image)),
          ),
          title: Text(text),
          subtitle: Text(subtext),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              space(10.0),
              Text(
                pricetext,
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 65, 179),
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.circle,
                    size: 15.0,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Successful',
                    style: TextStyle(
                        color: Color.fromARGB(255, 95, 95, 95),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          // isThreeLine: true,
        ),
        Text(
          '$pricetext deposited to 588602000000135',
          textAlign: TextAlign.start,
          style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 13.0),
        ),
        space(10.0),
        Container(
          width: double.infinity,
          height: 1.0,
          color: Colors.grey,
        )
      ],
    );
  }
}
