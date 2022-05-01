
/* Q. Add all numbers which will occurr in between two numbers. Here I Showed Adding 10 to 15 numbers */

void main(){

  int last_number = 15;
  int initial_number = 10;
  int sum_of_total_numbers = 0;


  for(int i = initial_number-1; i<last_number; i++){
    sum_of_total_numbers = sum_of_total_numbers + i + 1;
  }
  print(sum_of_total_numbers); // 10 + 11 + 12 + 13 + 14 + 15 = 75  output: 75



}