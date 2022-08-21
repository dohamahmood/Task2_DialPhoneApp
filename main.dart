import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    print("relioooifru");
    return MaterialApp(
      title: 'Task 2',
      home: const MyHomePage(),
    );
  }
}

String phoneNumber = "";
List<String> myList = [];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 100, right: 30, left: 30, bottom: 20),
            child: Container(
              alignment: Alignment.topCenter,
              //decoration: const BoxDecoration(),
              child: Text(
                phoneNumber,
                style: TextStyle(color: Colors.black87, fontSize: 25),
              ),
            ),
          ),
          /////////
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: TextButton(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.add,
                        color: Color.fromARGB(255, 39, 195, 119),
                      ),
                      Text(
                        " Add to contacts",
                        style:
                            TextStyle(color: Color.fromARGB(255, 39, 195, 119)),
                      ),
                    ],
                  ),
                  onPressed: () {
                    if (!phoneNumber.isEmpty) myList.add(phoneNumber);
                    phoneNumber = "";
                    print(myList);
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
          ///////////////////////
          Container(
            alignment: Alignment.bottomCenter,
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                numbers(
                  num: "1",
                  charicrar: "",
                  onPress: () {
                    phoneNumber = phoneNumber + "1";

                    setState(() {});
                  },
                ),
                numbers(
                  num: "2",
                  charicrar: "ABC",
                  onPress: () {
                    phoneNumber = phoneNumber + "2";
                    setState(() {});
                  },
                ),
                numbers(
                  num: "3",
                  charicrar: "DEF",
                  onPress: () {
                    phoneNumber = phoneNumber + "3";
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          Container(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                numbers(
                  num: "4",
                  charicrar: "GHI",
                  onPress: () {
                    phoneNumber = phoneNumber + "4";
                    setState(() {});
                  },
                ),
                numbers(
                  num: "5",
                  charicrar: "JKL",
                  onPress: () {
                    phoneNumber = phoneNumber + "5";
                    setState(() {});
                  },
                ),
                numbers(
                  num: "6",
                  charicrar: "MNO",
                  onPress: () {
                    phoneNumber = phoneNumber + "6";
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          Container(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                numbers(
                  num: "7",
                  charicrar: "PQRS",
                  onPress: () {
                    phoneNumber = phoneNumber + "7";
                    setState(() {});
                  },
                ),
                numbers(
                  num: "8",
                  charicrar: "TUV",
                  onPress: () {
                    phoneNumber = phoneNumber + "8";
                    setState(() {});
                  },
                ),
                numbers(
                  num: "9",
                  charicrar: "WXYZ",
                  onPress: () {
                    phoneNumber = phoneNumber + "9";
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          Container(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                numbers(
                  num: "*",
                  charicrar: "",
                  onPress: () {
                    phoneNumber = phoneNumber + "";
                  },
                ),
                numbers(
                  num: "0",
                  charicrar: "+",
                  onPress: () {
                    phoneNumber = phoneNumber + "0";
                    setState(() {});
                  },
                ),
                numbers(
                  num: "#",
                  charicrar: "",
                  onPress: () {
                    phoneNumber = phoneNumber + "";
                  },
                ),
              ],
            ),
          ),
          Container(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Contact(
                  icon: Icons.people_outline,
                  iconColor: Colors.black54,
                  backColor: Colors.white10,
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyHomePage2(),
                        ));
                  },
                ),
                Contact(
                  icon: Icons.phone,
                  iconColor: Colors.white,
                  backColor: Color.fromARGB(255, 39, 195, 119),
                  onPress: () => print("call phone"),
                ),
                Contact(
                  icon: Icons.backspace_outlined,
                  iconColor: Colors.black54,
                  backColor: Colors.white10,
                  onPress: () {
                    if (phoneNumber != "")
                      // ignore: curly_braces_in_flow_control_structures
                      phoneNumber =
                          phoneNumber.substring(0, phoneNumber.length - 1);
                    else
                      phoneNumber = "";
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class numbers extends StatefulWidget {
  numbers(
      {Key? key,
      required this.num,
      required this.charicrar,
      required this.onPress})
      : super(key: key);
  final String num;
  final String charicrar;
  final void Function() onPress;

  @override
  State<numbers> createState() => _numbersState();
}

class _numbersState extends State<numbers> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextButton(
        onPressed: widget.onPress,
        child: Column(
          children: [
            Text(
              widget.num,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w200,
                fontFamily: "Niramit",
                color: Colors.black54,
              ),
            ),
            Text(
              widget.charicrar,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
                fontFamily: "Niramit",
                color: Colors.black26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Contact extends StatefulWidget {
  Contact(
      {Key? key,
      required this.icon,
      required this.iconColor,
      required this.backColor,
      required this.onPress})
      : super(key: key);
  final IconData icon;
  final Color iconColor;
  final Color backColor;
  final void Function() onPress;

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: widget.backColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: widget.onPress,
          child: Icon(
            widget.icon,
            color: widget.iconColor,
            size: 25,
          ),
        ),
      ),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({Key? key}) : super(key: key);

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Contact(
                      icon: Icons.arrow_back_ios_new_rounded,
                      iconColor: Colors.black87,
                      backColor: Colors.white10,
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyHomePage(),
                            ));
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Contacts",
                      // ignore: unnecessary_const
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Niramit",
                        color: Colors.black87,
                      ),
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.window,
                            color: Colors.black87,
                            size: 25,
                          ),
                        ),
                        Icon(
                          Icons.view_agenda_outlined,
                          color: Colors.black87,
                          size: 25,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /////////////
              Expanded(
                child: ListView(
                  children: [
                    for (int i = 0; i > myList.length; i++)
                      phoneNum(name: "doha mahmood", number: myList[i]),
                    
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 30,
            left: 100,
            right: 100,
            child: Container(
              height: 70,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 10,
                      blurRadius: 30,
                      offset: Offset(0, 20)),
                ],
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.people_outline,
                      color: Colors.black54,
                      size: 30,
                    ),
                    Icon(
                      Icons.settings_outlined,
                      color: Colors.black54,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class phoneNum extends StatefulWidget {
  phoneNum({
    Key? key,
    required this.name,
    required this.number,
  }) : super(key: key);
  final String name, number;

  @override
  State<phoneNum> createState() => _phoneNumState();
}

class _phoneNumState extends State<phoneNum> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20, bottom: 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    'https://miro.medium.com/max/1400/1*6VOiMKuyK_KJRPJ2W6dXdw.png',
                    //child DecorationImage( Image.asset("images/image1.jpg"),),
                    height: 50,
                    width: 50,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(color: Colors.black87, fontSize: 20),
                  ),
                  Text(
                    widget.number,
                    style: const TextStyle(color: Colors.black45, fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20, right: 30),
          child: Icon(Icons.phone, color: Color.fromARGB(255, 39, 195, 119)),
        ),
      ],
    );
  }
}
