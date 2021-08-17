String s = "How are you ?";
String s1 = "I am fine, thank you, anh you?";
var s3 = '$s' +'\n'+ '$s1';

int a = 9;
int b = 10;
int total = a + b;
List<int> numbers = [1,2,3,4,5,6,7];
List<String> stringNumbers = numbers.map((number) {
  return 'value = $number';
}).toList();

//Function
int totalNumbers(int a, int b) {
  return a + b;
}