import 'dart:io';

main(){
  List<String?> products = [];
  List<int?> quantity = [];
  List<double?> price = [];
  String? option;
  DateTime date = DateTime.now();

  stdout.writeln("What is the name of the customer?");
  String? name = stdin.readLineSync();
  
  if(name == null || name.isEmpty){
    print("No name added");
    return;
  }

  do {
    stdout.writeln("What did the user buy?");
    String? product = stdin.readLineSync();

    if (product == null || product.isEmpty) {
      print("No product added");
      return;
    }

    products.add(product);

    stdout.writeln("How many did the user buy?");
    int? quantityOfProduct = int.tryParse(stdin.readLineSync() ?? "");

    quantity.add(quantityOfProduct);

    stdout.writeln("How much is the product per one?");
    double? priceOfProduct = double.tryParse(stdin.readLineSync() ?? "");
    price.add(priceOfProduct);

    stdout.writeln("Add more item?");
    option = stdin.readLineSync();
  }while(option?.toLowerCase() == "y");

  stdout.writeln("What is the cashier's name?");
  String? cashierName = stdin.readLineSync();

  if(cashierName == null || cashierName.isEmpty) {
    print("No name added");
    return;
  }

  stdout.writeln("What is the discount given?");
  int? discount = int.tryParse(stdin.readLineSync() ?? "");


  void getHeader(){
    stdout.writeln('''
    SEMICOLON STORES
    MAIN BRANCH
    LOCATION: 312, HERBERT MACAULAY WAY, SABO, YABA, LAGOS STATE
    TEL: 095638229304
    DATE: $date
    Cashier: $cashierName
    Customer: $name
    
    ================================================================================================================================================================
  
  ''');

  }
  getHeader();
  print("Item".padRight(10) + "Qty".padRight(8) + "Price".padRight(8) + "Total(NGN)");
  print("============================================================================================================================================================");

  double grandTotal = 0;

  for (int i = 0; i < products.length; i++) {
    double total = quantity[i]! * price[i]!;
    grandTotal += total;

    print(
        products[i]!.padRight(15) +
            quantity[i].toString().padRight(8) +
            price[i]!.toStringAsFixed(2).padRight(12) +
            total.toStringAsFixed(2)
    );
  }

}


