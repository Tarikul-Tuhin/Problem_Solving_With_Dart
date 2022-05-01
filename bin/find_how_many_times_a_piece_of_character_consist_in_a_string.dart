
/* Q. How many times a piece of character is repeated in a given string? Example: 'abccdefjccecci' here 'cc' repeated 3 times.*/

void main() {
  String a = 'abdccdeccddsdccsccdsdsccsds';
  int sum = 0;
  for (int i = 0; i < a.length; i++) {
    if(a[i]=='c' && a[i+1]=='c'){
      i = i+2;
      sum = sum + 1;
      
    }
    
  }
  print(sum);
}
