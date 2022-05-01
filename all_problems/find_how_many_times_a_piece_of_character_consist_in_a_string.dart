
/* Q. How many times a piece of character is repeated in a given string? Example: 'abccdefjccecci' here 'cc' repeated 3 times.*/

void main() {
  String str = 'abdccdeccddsdccsccdsdsccsds';
  int sum = 0;
  for (int i = 0; i < str.length; i++) {
    if(str[i]=='c' && str[i+1]=='c'){
      i = i+2;
      sum = sum + 1; 
      
    }
    
  }
  print(sum); // output: 5
}
