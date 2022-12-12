import 'package:flutter/material.dart';

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dukaan Premium'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          dukaanBox(),
          features(),
          space(),
          margin(4.5),
          space(),
          youtubeContent(),
          space(),
          margin(),
          space(),
          frequentlyAskedQuestions(),
          space(),
          margin(3.0),
          space(),
          needHelp(),
          space(),
          space()
        ],
      )),
    );
  }

  Widget margin([height = 1.0]) {
    return Container(
      width: double.infinity,
      color: Colors.grey,
      height: height,
    );
  }

  Widget space([height = 20.0]) {
    return SizedBox(
      height: height,
    );
  }

  Widget logo() {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 28,
              child: CircleAvatar(
                radius: 16,
                child: CircleAvatar(
                    radius: 25.0,
                    child: Image.asset(
                      'assets/images/dukaan.png',
                    )),
              ),
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'dukaan',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text('®'),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'PREMIUM',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget features() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                'Features',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              //Listfeatures()
            ],
          ),
          listfeatures(
              'Custom domain name',
              'Get your own custom domain and build\nyour brand on the internet.',
              Icons.language),
          listfeatures(
              'Verified seller badge',
              'Get green verified badge under your store name and build trust',
              Icons.verified_outlined),
          listfeatures(
              'Dukaan for PC',
              'Access all the exclusive premium\nfeatures on Dukaan for PC',
              Icons.computer),
          listfeatures(
              'Priority support',
              'Get your questions resolved with our\npriority customer support',
              Icons.headset_mic),
        ],
      ),
    );
  }

  Widget dukaanBox() {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
              child: Container(
            height: 120,
            width: double.infinity,
            color: Colors.blue,
          )),
          Positioned(
              top: 15,
              left: 20,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 1)],
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                height: 210,
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            logo(),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      'Get Dukaan Premium for just\n4,999/year',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      'All the advanced features for scaling your\nbusiness',
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget listfeatures(title, subtitle, icons) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(subtitle,
          style: const TextStyle(
            fontSize: 16,
          )),
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 25,
        child: CircleAvatar(
          radius: 22,
          backgroundColor: Colors.white,
          child: Icon(icons),
        ),
      ),
    );
  }

  Widget youtubeContent() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'What is Dukaan Premium?',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          space(),
          Center(
            child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 17, 211, 250),
                    borderRadius: BorderRadius.circular(20.0)),
                width: 350,
                height: 180,
                child: Image.asset('assets/images/utubethumb.jpg')),
          )
        ],
      ),
    );
  }

  Widget frequentlyAskedQuestions() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Frequently asked questions',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          space(20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'What types of business can use Dukaan\nPremium',
                style: TextStyle(fontSize: 18.0),
              ),
              Icon(Icons.remove)
            ],
          ),
          space(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Dukaan caters to a wide variety of sellers. Be it a\nsmall grocery store or a big legacy brand - anyone\nwho wants to sell their products/services online - \nDukaan is the perfect platform for you.',
                style: TextStyle(
                    fontSize: 16.0, color: Color.fromARGB(255, 83, 81, 81)),
              ),
            ],
          ),
          space(10.0),
          margin(),
          space(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('What is your refund policy?',
                  style: TextStyle(fontSize: 18.0)),
              Icon(Icons.add)
            ],
          ),
          space(10.0),
          margin(),
          space(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Will there be an automatic charge after the\npaid trail? ',
                  style: TextStyle(fontSize: 18.0)),
              Icon(Icons.add)
            ],
          ),
          space(10.0),
          margin(),
          space(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('What payment methods do you offer?',
                  style: TextStyle(fontSize: 18.0)),
              Icon(Icons.add)
            ],
          ),
          space(10.0),
          margin(),
          space(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('What happens when my free trial ends?',
                  style: TextStyle(fontSize: 18.0)),
              Icon(Icons.add)
            ],
          ),
          space(10.0),
          margin(),
          space(10.0),
        ],
      ),
    );
  }

  Widget needHelp() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Need help? Get in touch',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        space(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  //color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10.0)),
              width: 150,
              height: 150,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.message_outlined,
                      size: 30.0,
                    ),
                    Text('Live Chat')
                  ],
                ),
              ),
            ),
            //child: Image.asset('assets/images/shirt1.webp')),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  //color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10.0)),
              width: 150,
              height: 150,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.call_outlined,
                      size: 30.0,
                    ),
                    Text('Phone Call')
                  ],
                ),
              ),
              // child: Image.asset('assets/images/shirt1.webp')
            ),
          ],
        ),
        space(),
        margin(),
        space(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: () {}, child: const Text('Select Domain')),
            SizedBox(
              width: 180,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)))),
                  child: const Text('Get Premium')),
            )
          ],
        )
      ]),
    );
  }
}
