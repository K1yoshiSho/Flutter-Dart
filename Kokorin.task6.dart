/*Вы получите список строк. Ваша задача вернуть сумму длинны всех строк в списке.
Пример: [“a”, “ab”, “abc”] => 1 + 2 + 3 = 6
Условия:
1. Список может быть пустым, в этом случае возвращаем 0.
Входные данные:
[“a”, “ab”, “abc”]
[“abcde”, “ab”, “abc”]
[]
Выходные данные:
[“a”, “ab”, “abc”] => 6
[“abcde”, “ab”, “abc”] => 10
[] => 0*/

void main(){
  List inputList = ["abcde", "ab", "abc"];
  getResult(inputList);
}

getResult(List list){
  int result = 0;
  for(String string in list){
  result += string.length;
  }
  print(result);
}
