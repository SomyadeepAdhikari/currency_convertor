import 'package:flutter/cupertino.dart';

class CurrencyConvertorCupertinoPage extends StatefulWidget {
  const CurrencyConvertorCupertinoPage({super.key});

  @override
  State<CurrencyConvertorCupertinoPage> createState() => _CurrencyConvertorCupertinoPageState();
}

class _CurrencyConvertorCupertinoPageState extends State<CurrencyConvertorCupertinoPage> {
  double result=0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey,
        middle: Text('Currency Convertor',
          style: TextStyle(
            color: CupertinoColors.white
          ),
        ),
      ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'INR ${result!=0 ? result.toStringAsFixed(2): result.toStringAsFixed(0)}',
                  style: const TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  )
                ),
            
                CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: CupertinoColors.black,
                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  placeholder: 'Please enter the amount in USD',
                  placeholderStyle: const TextStyle(color: CupertinoColors.black),
                  prefix: const Icon(CupertinoIcons.money_dollar),
                  
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),

                const SizedBox(height: 10),
                CupertinoButton(onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                  },
                  color: CupertinoColors.systemGrey6,
                  child: const Text('Convert',
                        style: TextStyle(color: CupertinoColors.white), ),
                )
              ],
            ),
          )
        )
      );
  }
}