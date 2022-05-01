
/* Q. Add all numbers which will occurr in between two numbers. Here I Showed Adding 10 to 15 numbers */

import 'dart:convert';
import 'dart:io';

void main(){
  print("Enter Last number:");
  String? last_number = stdin.readLineSync(); // 15

  print("Enter initial number:");
  String? initial_number = stdin.readLineSync(); // 10
  int sum_of_total_numbers = 0;


  for(int i = int.parse(initial_number!)-1; i<int.parse(last_number!); i++){
    sum_of_total_numbers = sum_of_total_numbers + i + 1;
  }
  print(sum_of_total_numbers); // 10 + 11 + 12 + 13 + 14 + 15 = 75  output: 75



}