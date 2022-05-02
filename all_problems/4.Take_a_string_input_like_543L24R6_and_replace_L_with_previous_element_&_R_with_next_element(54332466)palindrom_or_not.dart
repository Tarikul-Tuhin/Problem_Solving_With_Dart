/*
Q. Take a string input like "543L24R6" and replace "L" with previous element & "R" with next
element(54332466). Write a program to modify string as per L/R & check the string whether
it is palindrome or not.
⚫ Consecutive characters of "L" considered as single one and same as for "R" . i.e.
"LLL" replace with "L" and "RRRR" replace with "R". "543LLL24RR6" to
"543L24R6"

⚫ If first character is "L" and last character is "R" then remove these
characters(L33433R --> 33433).
⚫ If found "RL" in a string should be removed. i.e. "3RL5" to "35"
                              Example:
                              Input1: 543L24R6
                              Output1: 54332466 is not palindrome
                              Input2: 34L5R43
                              Output2: 3445443 is palindrome
                              Input3: L33433R
                              Output3: 33433 is palindrome
                              Input4: LL33433RRR
                              Output4: 33433 is palindrome
                              Input5: RL36LR73
                              Output5: 366773 is not palindrome
*/



import 'dart:io';


void main(){

  String str = 'L33LLL34RL33RRR3R';
  //String str = 'abba';
  String withoutRL = str.replaceAll('RL','');
  print(withoutRL); // after replacing 'RL' from String --> OutPut: L33LLL3433RRR3R

  if(withoutRL[0] == 'L' && withoutRL[withoutRL.length-1]== 'R'){
    withoutRL = withoutRL.replaceFirst('L',''); //replacing first L with null
    //withoutRL =  withoutRL.replaceFirst('R','');
    withoutRL = withoutRL.substring(0, withoutRL.length - 1); //replacing last R with null
    print(withoutRL); // after replacing first L and Last R --> Output: 33LLL3433RRR3

    int countL = 0; // this is for counting consecutive repeated 'L'
    int countR = 0; // this is for counting consecutive repeated 'R'

    for(int i = 0; i<withoutRL.length; i++){ // this loop is for counting consecutive repeated 'L' in the string
      if(withoutRL[i]=='L'){
        countL++; // there are 3 consecutive repeated 'L'. and the output is also 3 here.
        if(i+1<withoutRL.length){  // this condition avoids RangeError
          if(withoutRL[i+1]!='L'){ // if the next character is not equal to 'L', it will break from the if condition.
            break;
          }
        }
      }

    }

    for(int i = 0; i<withoutRL.length; i++){ // this loop is for counting consecutive repeated 'R' in the string
      if(withoutRL[i]=='R'){
        countR++; // there are 3 consecutive repeated 'R'. and the output is also 3 here.
        if(i+1<withoutRL.length){ // this condition avoids RangeError
          if(withoutRL[i+1]!='R'){ // if the next character is not equal to 'R', it will break from the if condition.
            break;
          }
        }
      }
    }

    print(countL); // output: 3
    print(countR); // output: 3

    withoutRL = withoutRL.replaceAll('L'*countL, 'L'); // it will replace 3L into 1L i.e. 'LLL' will be replaced by one 'L'
    withoutRL = withoutRL.replaceAll('R'*countR, 'R'); // it will replace 3R into 1L i.e. 'RRR' will be replaced by one 'R'
    print(withoutRL); // After replacing 'LLL' into 'L' and 'RRR' into 'R' --> output: 33L3433R3


    int indexofL = withoutRL.indexOf('L'); // finding the index of L
    int indexofR = withoutRL.indexOf('R'); // finding the index of R

    withoutRL = withoutRL.replaceAll('L', withoutRL[indexofL-1]); // replacing L with previous character which is 3
    withoutRL = withoutRL.replaceAll('R', withoutRL[indexofR+1]); /// replacing R with next character which is 3
    print(withoutRL); /// After replacing L with previous index and R with next index --> output: 333343333

  }
   /// now it's time to check palindrome or not. ///
  var strSplit = withoutRL.split("");
  var strReversed = List.from(strSplit.reversed);
  var strJoin = strReversed.join(""); //333343333

  var isPalindrom = withoutRL == strJoin; //withoutRL = '333343333' and strJoin = '333343333'. So it should be palindrome.

  print('isPalindrom? $isPalindrom'); // Output: isPalindrom? true

  ///******************Program END**************************///

  // String reverseWithoutRL = '';
  // for(int i = withoutRL.length-1; i>=0; i--){
  //   reverseWithoutRL = withoutRL[i];
  //   var reverse = stderr.write(reverseWithoutRL.toString());
  // }





}