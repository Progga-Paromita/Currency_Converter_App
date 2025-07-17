import 'package:flutter/cupertino.dart';

class HomeScreenCupertino extends StatefulWidget {
  const HomeScreenCupertino({super.key});

  @override
  State<HomeScreenCupertino> createState() => _HomeScreenCupertinoState();
}

class _HomeScreenCupertinoState extends State<HomeScreenCupertino> {
  final TextEditingController amount = TextEditingController();
  double number = 0;
  double result = 0;

  double currencyConverterFunction(double value) {
    return value * 81;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          'Currency Converter',
          style: TextStyle(
            color: CupertinoColors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: CupertinoColors.black,
      ),
      backgroundColor: CupertinoColors.black,
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            /// Result Box
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: CupertinoColors.systemPink,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Result: $result',
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: CupertinoColors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            /// Input Box
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: CupertinoColors.systemYellow,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        const Text(
                          "Enter the amount you want to convert:",
                          style: TextStyle(
                            fontSize: 18,
                            color: CupertinoColors.black,
                          ),
                        ),
                        const SizedBox(height: 12),
                        CupertinoTextField(
                          controller: amount,
                          placeholder: "Enter amount...",
                          keyboardType: const TextInputType.numberWithOptions(),
                          prefix: const Icon(CupertinoIcons.money_dollar),
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        ),
                        const SizedBox(height: 16),
                        CupertinoButton.filled(
                          onPressed: () {
                            setState(() {
                              number = double.tryParse(amount.text) ?? 0;
                              result = currencyConverterFunction(number);
                            });
                          },
                          child: const Text("Convert"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            /// Placeholder for 3rd box
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: CupertinoColors.activeBlue,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      '',
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
