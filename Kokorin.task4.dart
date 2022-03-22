/*Вам будет дан список (list) и значение (value). Все, что вам нужно сделать, это проверить, содержит ли предоставленный список данное значение.
Список может содержать числа или строки. Value должно возвращать true, если список содержит значение, и false, если нет. Запрещено использовать indexOf.
Входные данные:
Список = [60, 999, 14, "dart1", 45, 95, "dart", 1]
Значение = “dart”
Значение = 15;
Выходные данные:
true
false*/
void main() {
  List inputList = [60, 999, 14, "dart1", 45, 95, "dart", 1];
  getResult(inputList);
}

getResult(List list) {
  var value = "dart";
  bool check = false;
  for (var valueKey in list) {
    if (valueKey == value)
      check = true;
  }
  print(check);
}
