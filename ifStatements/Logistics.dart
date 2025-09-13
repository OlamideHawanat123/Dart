import 'dart:io';

main(){
  List<int> commission = [120, 240, 360, 480];

  stdout.writeln("Enter your commission rate for today");
  String? input = stdin.readLineSync();

  if(input == null || input.isEmpty){
    print("no commision rate inputed");
    return;
  }

  int commissionRate = int.parse(input);
  int salary ;
  int basePay = 5000;

  if(commissionRate <= 50){
    salary = commissionRate * commission[0] + basePay;
  }

  else  if(commissionRate <= 60){
    salary = commissionRate * commission[1] + basePay;
  }

  else  if(commissionRate <= 70){
    salary = commissionRate * commission[2] + basePay;
  }

  else{
    salary = commissionRate * commission[3] + basePay;
  }

  stdout.writeln("Your salary is:  $salary");


}