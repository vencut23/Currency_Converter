

import 'package:flutter/material.dart';

class conveter_statefull extends StatefulWidget{
  const conveter_statefull({super.key});
  @override
  State<conveter_statefull> createState() => _coverter_state();
}

class _coverter_state extends State<conveter_statefull>{
   double result= 0.00;
   final TextEditingController tx= TextEditingController();
   
   @override
   Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(115, 40, 35, 35),
          title: const Text('USD TO INR CONVERTER',
           style: TextStyle(
             color: Colors.white70,
             fontWeight: FontWeight.w700,
           ),
          ),
        ),
        backgroundColor: Colors.black87,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'INR ${result!=0 ? result.toStringAsFixed(3): result.toStringAsFixed(0)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white70,
                    fontSize: 45,
                  ),
                 ),
                  Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextField(
                      controller: tx,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white70,
                        hintText: 'Enter a value to convert in to a INR',
                        prefixIcon: Icon(Icons.monetization_on),
                        prefixIconColor: Colors.black45,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black54,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black54,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      keyboardType: const TextInputType.numberWithOptions(
                         decimal: true,
                         signed: false,
                      ),
                   ),
                 ),
                 Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(onPressed:(){
                     
                        result=double.parse(tx.text)*81;
                         print('pressed $result');
                       setState(() {
                        });
                     },
                     style: TextButton.styleFrom(
                           backgroundColor: Colors.white70,
                           minimumSize: const Size(double.infinity, 50),
                           elevation: 5,
                           side: const BorderSide(
                             color: Colors.black54,
                             width: 2,
                           ),
                           shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                           ),
                     ),
                     child: const Text('Convert',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
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