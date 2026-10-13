import 'dart:io';

void main() {
  print('\n=============================================');
  print('====================PIZZA====================');
  print('=============================================\n');
  print('Pizza Price: "Small: RM 5 , Medium: RM7, Large: RM10"\n'); // REQ.2: Displaying the price of pizza

  String? ordering = 'yes';

  while (ordering == 'yes') {
    print('Please enter your pizza size (small, medium, or large):'); //REQ.3:Ask the user for pizza size
    String? pizza_size = stdin.readLineSync();

    print('How many pizzas do you want of $pizza_size?'); //REQ.3: Ask the user for pizza quantity
    int quantity = int.parse(stdin.readLineSync()!);

    // REQ.4: Use a switch statement to calculate and print the total payment.
    switch (pizza_size) {
      case 'small':
        int totalPayment = 5 * quantity;
        print('\n\nYour Total Payment is: \RM$totalPayment');
        break;
      case 'medium':
        int totalPayment = 7 * quantity;
        print('\n\nYour Total Payment is: \RM$totalPayment');
        break;
      case 'large':
        int totalPayment = 10 * quantity;
        print('\n\nYour Total Payment is: \RM$totalPayment');
        break;
      default:
        print('\n\nInvalid size!');
    }

    print('\nDo you want to order again? (yes/no):'); // REQ.5: Implement a while loop to allow continuous ordering
    ordering = stdin.readLineSync();
  }
}
