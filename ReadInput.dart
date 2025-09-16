import 'dart:io';

main(){
   stdout.writeln("What is your name");
   String? name = stdin.readLineSync();

   if(name == null || name.isEmpty){
     print("Name cannot be null");
   }
}