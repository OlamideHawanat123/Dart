import 'dart:io';

main(){
  List<int> numbers = [2, 3, 4, 5, 6, 7];
  int total = getTotal(numbers);
  stdout.writeln("The sum of the digits in numbers is $total");

  int largest = getLargest(numbers);
  stdout.writeln("The largest of the digits in numbers is $largest");

  int sumOfLargestAndSmallest = getSumOfLargestAndSmallest(numbers);
  stdout.writeln("The sum of largest and smallest of the digits in numbers is $sumOfLargestAndSmallest");

  int smallest = getSmallest(numbers);
  stdout.writeln("The smallest of the digits in numbers is $smallest");

}

int getTotal(List<int> numbers){
  int total = 0;
  for(int number in numbers){
    total += number;
  }
  return total;
}

int getLargest(List<int> number){
  int largest = number[0];
  for(int numbers in number){
    if(numbers > largest)largest= numbers;
  }
  return largest;
}

int getSmallest(List<int> number){
  int largest = number[0];
  for(int numbers in number){
    if(numbers < largest)largest= numbers;
  }
  return largest;
}

int getSumOfLargestAndSmallest(List<int> number){
  int largest = number[0];
  int smallest = number[1];
  int total = 0;

  for(int numbers in number){
    if(numbers > largest) largest = numbers;
    if(numbers < smallest) smallest = numbers;
    total = largest + smallest;
  }
  return total;
}

