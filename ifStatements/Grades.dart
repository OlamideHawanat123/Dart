import 'dart:io';

main(){
  stdout.writeln("Enter your score");
  String? input = stdin.readLineSync();

  if(input == null || input.isEmpty){
    print("No input provided");
    return;
  }
  int score = int.parse(input);

  if(score >= 90){
    print("A");
  }

  else if(score >= 80){
    print("B");
  }

  else if(score >= 70){
    print("C");
  }

  else if(score >= 60){
    print("D");
  }

  else{
    print("Failed");
  }
}