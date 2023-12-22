import 'package:flutter/material.dart';
//import 'package:flutter_application_1/converter.dart';
import 'package:flutter_application_1/converter_statefull.dart';

void main(){
   runApp(App());
}

class App extends StatelessWidget{
     const App({super.key});
   @override
   Widget build(BuildContext context){
        return const MaterialApp(
          home: conveter_statefull(),
        );
   }
}