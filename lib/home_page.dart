import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

TextEditingController amount = TextEditingController();
double number = 0;
double num =0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title:const Text(
          'Currency Converter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        toolbarHeight: 100,
        leading:SingleChildScrollView(
          child: Column(
            children: [
              const Icon(Icons.currency_pound_outlined, color: Colors.white, size: 40),
              const Icon(Icons.currency_pound_outlined, color: Colors.white, size: 40),
              const Icon(Icons.currency_pound_outlined, color: Colors.white, size: 40),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
           Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: myContainer(),
            ),
          ),

           Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 220,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.yellowAccent.shade400,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Enter the amount you want to convert :",
                        style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: textField(),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            number = double.parse(amount.text); // get the integer value from TextField
                             num=currencyConverterFunction(number);
                          });
                        },
                        child:const Text("Convert"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child:  Container(
                height: 220,
                width: 400,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.rectangle,
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
                child:Text(""),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

double currencyConverterFunction (double value){
  double converted_curency=value*81;
  return converted_curency;
}

TextField textField() {
  return  TextField(
    key: Key("MyTextField"),
    controller: amount,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      focusColor: Colors.red,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: Colors.black,
          width: 3,
        ),
      ),
      //border:,
      hint: Text(
        "Enter the amount...",
        style: TextStyle(fontSize: 20),
      ),
      hintStyle: TextStyle(
        color: Colors.white70,
        fontSize: 40,
      ),
      enabled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        //gapPadding: 6,
      ),
      prefixIcon: Icon(
        CupertinoIcons.money_dollar,
        size: 30,
      ),
    ),
    keyboardType: TextInputType.numberWithOptions(),
  );
}
Container myContainer(){
  return Container(
    height: 220,
    width: 400,
    decoration: BoxDecoration(
      color: Colors.pinkAccent,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(25),
    ),
    child: Center(
      child: Text(
        "Result: $num",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
      ),
    ),
  );
}

class BackgroundImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/Untitled.png', // Or use NetworkImage
              fit: BoxFit.cover,
            ),
          ),

          // Foreground content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello, World!',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Click Me'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
