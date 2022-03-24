/*Определите следующие классы.
1) Кубоид
Конструктор объекта для класса Cuboid должен получить ровно три аргумента в следующем порядке: длина, ширина, высота и сохранить эти три значения 
в length, width и height соответственно.
Класс Cuboid должен иметь геттер SurfaceArea, который возвращает площадь поверхности кубоида, и геттер Volume, который возвращает объем кубоида.
2) Куб
Класс Cube является подклассом класса Cuboid. Функция конструктора Cube должна получить только один аргумент, его длину (length) и использовать 
это переданное значение, чтобы установить length, width и height.
Подсказка: используйте super, чтобы передать правильные параметры.
Входные данные:
Cuboid(1, 2, 3)
Cube(2)
Выходные данные:
Cuboid Volume = 6
Cuboid Surface Area = 22
Cube Volume = 8
Cube Surface Area = 24*/

void main() {
  Cuboid cuboid = new Cuboid(1, 2, 3);
  print("Cuboid Volume = ${cuboid.volume}");
  print("Cuboid Surface Area = ${cuboid.surfaceArea}");

  Cube cube = new Cube(2);
  print("Cube Volume = ${cube.volume}");
  print("Cube Surface Area = ${cube.surfaceArea}");
}

class Cuboid {
  int length, width, height;

  Cuboid(this.length, this.width, this.height);

  int get surfaceArea {
    return 2 * (length * width + length * height + width * height);
  }

  int get volume {
    return length * width * height;
  }
}

class Cube extends Cuboid {
  Cube(int length) : super(length, length, length);
}
