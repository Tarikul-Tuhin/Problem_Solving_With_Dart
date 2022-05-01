
/* Q. Add all numbers which will occurr in between two numbers */

void main(){

  int last_number = 5;
  int sum_of_total_numbers = 0;
  for(int i = 0; i<last_number; i++){
    sum_of_total_numbers = sum_of_total_numbers + i + 1;
  }
  print(sum_of_total_numbers); // 1 + 2 + 3 + 4 + 5 = 15  output: 15



}