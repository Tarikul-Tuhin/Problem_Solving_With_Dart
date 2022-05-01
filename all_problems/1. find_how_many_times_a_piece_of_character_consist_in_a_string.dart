
/* Q. How many times a piece of character is repeated in a given string? Example: 'abccdefjccecci' here 'cc' repeated 3 times.*/

import 'dart:io';

void main() {
  print("Enter Your String with two repeated characters: ");
  String? str = stdin.readLineSync(); // 'abccdefjccecci'
  print("Enter your only one repeated character: ");
  String? one_char = stdin.readLineSync(); // c
  int sum = 0;
  for (int i = 0; i < str!.length; i++) {
    if(str[i]== one_char && str[i+1]== one_char){
      i = i+2;
      sum = sum + 1; 
      
    }
    
  }
  print(sum); // output: 3
}
