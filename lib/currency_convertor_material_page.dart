import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatefulWidget{
  const CurrencyConvertorMaterialPage({super.key});
  @override
  State<CurrencyConvertorMaterialPage> createState() => _CurrencyConvertorMaterialPageState();
}
class _CurrencyConvertorMaterialPageState extends State<CurrencyConvertorMaterialPage>{
  double result=0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context){
    
    final border= OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                    borderRadius:BorderRadius.circular(10),
                  );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Currency Convertor',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
        body: Center(
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
            
                TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.monetization_on),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white, 
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),

                const SizedBox(height: 10),
                ElevatedButton(onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                  },
                /* style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(Colors.black),
                  foregroundColor: const WidgetStatePropertyAll(Colors.white),
                  minimumSize: const WidgetStatePropertyAll(
                    Size(double.infinity,50),
                  ),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  )
                ), */
                //same as bellow
                style:  TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity,50),
                  shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                ) ,
                child: const Text('Convert'),
                              )
              ],
            ),
          )
        )
      );
  }
}

/* class CurrencyConvertorMaterialPagee extends StatelessWidget{
  const CurrencyConvertorMaterialPagee({super.key});
  
  @override
  Widget build(BuildContext context){
    double result=0;
    final TextEditingController textEditingController = TextEditingController();
    final border= OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                    borderRadius:BorderRadius.circular(10),
                  );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Currency Convertor',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                )
              ),

              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.monetization_on),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white, 
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),

              Padding(padding: const EdgeInsets.all(10),
                child: ElevatedButton(onPressed: () {
                  result = double.parse(textEditingController.text) * 81;
                  },
                /* style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(Colors.black),
                  foregroundColor: const WidgetStatePropertyAll(Colors.white),
                  minimumSize: const WidgetStatePropertyAll(
                    Size(double.infinity,50),
                  ),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  )
                ), */
                //same as bellow
                style:  TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity,50),
                  shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                ) ,
                child: const Text('Convert'),
              ),
              )
            ],
          )
        )
      );
  }
} */