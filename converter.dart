

import 'package:flutter/material.dart';

class converter extends StatelessWidget{
  const converter({super.key});

  @override
  Widget build(BuildContext context){
    final border= const OutlineInputBorder(
                    borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                          width : 1.0,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(40))
                    );

  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text('App bar here'),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('hello'),
        ),
        Text('hello')
      ],
    ),
    backgroundColor: Color.fromARGB(255, 38, 242, 215),
    body: Center(

      child: ColoredBox(
          color: const Color.fromARGB(0, 0, 0, 0),
             child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text('hello all',
             style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w800,
             ),
             ),
             Container(
               padding: const EdgeInsets.all(10.0),
              // margin: const EdgeInsets.all(10),  
               child: TextField(
                 enabled: true,
                 style: const TextStyle(
                  color: Color.fromARGB(255, 33, 214, 234),
                 ),
                 decoration: InputDecoration(
                    hintText: 'hello enter here something da venna',
                    hintStyle: const TextStyle(
                      color: Colors.green,
                      fontStyle: FontStyle.italic,
                    ),
                    prefixIcon: const Icon(Icons.monetization_on,
                    ),
                    prefixIconColor: const Color.fromARGB(255, 20, 168, 226),
                    filled: true,
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    focusedBorder: border,
                    enabledBorder: border,
                    ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                    signed: true,
                  ),
                 ),  
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: ElevatedButton(onPressed: (){
                 print('clicked');
               }, 
               style: const ButtonStyle(
                       backgroundColor: MaterialStatePropertyAll(
                             Color.fromARGB(230, 68, 137, 255),
                       ),
                       foregroundColor: MaterialStatePropertyAll(Colors.white),
                       minimumSize: MaterialStatePropertyAll(
                        Size(double.infinity,50),
                       ),
                       shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                         ),
                       ),
               ),
               child: const Text('Click Me'
               ),
              ),
             ),
          ], 
        ),
      ),
    ),
  );
  }
}