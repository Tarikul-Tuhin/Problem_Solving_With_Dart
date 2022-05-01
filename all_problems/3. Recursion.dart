/* 
Q. Write a simple program using recursion. The program is supposed to do the following: in the
given string, consisting if uppercase and lowercase letters and digits, it:
⚫ Deletes all the non-consonants and digit.
⚫ Inserts a character "*" before each consonant.
⚫ Replaces all lowercase consonants with corresponding uppercase ones.
Non-consonants are letters "A", "E", "I", "O", "U", and the rest are consonants.
                       
                        Example:
                        Input1: 1A2bcDnajMkW
                        Output1: *B*C*D*N*J*M*K*W
                        Input2: A1B2C3DEFGH
                        Output2: *B*C*D*F*G*H  

*/


//import 'dart:io';

import 'dart:io';

void main(){

  // String given_str = '1A2bcDnajueEMkiWoO';
  print("Enter Your String with consonant and numbers");
  String? given_str = stdin.readLineSync(); // 1A2bcDnajueEMkiWoO
  String upper_case = given_str!.toUpperCase();
  print(upper_case); // 1A2BCDNAJUEEMKIWOO
  String result = '';
  
  for(int i=0; i<upper_case.length; i++){
    if(upper_case[i]== 'A' || upper_case[i] == 'E' || upper_case[i] == 'I' || upper_case[i] == 'O' || upper_case[i] == 'U'){

      upper_case = upper_case.replaceAll(upper_case[i], '');
    }
  }

print(upper_case); // 12BCDNJMKW
upper_case = upper_case.replaceAll(RegExp(r'[^A-Za-z]'),'');
print(upper_case); // BCDNJMKW

for(int i = 0; i<upper_case.length; i=i+1){
  result = '*' + upper_case[i];
  stdout.write(result); // *B*C*D*N*J*M*K*W
}
}