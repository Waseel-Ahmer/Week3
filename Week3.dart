// Week3.dart  -  Library Desk Assistant 
// Name: ____________________   Roll no: ____________ 
final List<Map<String, dynamic>> books = [   {'title': 'Dart in Action', 'author': 'Ada', 'year': 2021,    'copies': 3, 'tags': ['dart', 'programming']},   {'title': 'Flutter Basics', 'author': 'Sam', 'year': 2023,    'copies': 0, 'tags': ['flutter', 'mobile']},   {'title': 'Clean Code', 'author': 'Martin', 'year': 2008,    'copies': 2, 'tags': ['programming', 'design']},   {'title': 'Algorithms', 'author': 'Knuth', 'year': 1968,    'copies': 1, 'tags': ['programming', 'math']},   {'title': 'UI Design', 'author': 'Nora', 'year': 2019,    'copies': 4, 'tags': ['design', 'mobile']}, ];
double lateFee(int daysLate, double ratePerDay)=>daysLate*ratePerDay;
 String formatTitle(String title, [String? author]){
   if(author==null){
     return title;
   }
   else{
     return '$title \n $title by $author';
   }
 }
Map<String, dynamic> makeBook({required String title, required String author, int year = 2024, int copies = 1}){
  return {'title':title,'author':author,'year':year,'copies':copies};
}
bool isClassic(int year)=>year<2000;
 List<String> transformAll(List<String> items, String Function(String) fn){
   return ((items.map(fn)));
 }
int Function() makeCounter(){
  int count=0;
   return(()=>++count);
 }
double Function(int)  makeFeeCalculator(double rate){
  double newrate=rate;
  return ((days)=>days * newrate);
}
 int sumDigits(int n)=>n<10?n:n+sumDigits(n-1);
void main() async {   
  part1();
  part2();
  part3();
  part4();
  part5();
  await part6(); 
} 
void part1() { 
  print('--- Part 1 ---');
  print(lateFee(5, 0.5));
  print(formatTitle('Dart in Action'));
  print(formatTitle('Dart in Action', 'Ada'));
  print(makeBook(title: 'Clean Code', author: 'Martin'));
  print(makeBook(title: 'Algorithms', author: 'Knuth', year: 1968));
  print(isClassic(1968));
  print(isClassic(2021)); 
} 
void part2() { 
  print('--- Part 2 ---');
  print(transformAll(['Dart in Action', 'Clean Code'],(String word)=>word.toUpperCase()));
   print(transformAll(['Dart in Action', 'Clean Code'],(String word)=>'$word!'));
  var desk1=makeCounter();
  var desk2=makeCounter();
  print(desk1());
  print(desk1());
  print(desk1());
  print(desk2());
  var studentFee=makeFeeCalculator(0.25);
  var staffFee=makeFeeCalculator(0.10);
  print(studentFee(4));
  print(staffFee(4));
} 
void part3() {
  print('--- Part 3 ---');
                  
 } 
void part4() { print('--- Part 4 ---'); } 
void part5() { print('--- Part 5 ---'); } 
Future<void> part6() async { print('--- Part 6 ---'); } 
