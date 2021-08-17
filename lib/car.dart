class Car {
  /**
   * Thuộc tính
   * - Khai báo giá trị khỏi tạo nếu không sẽ báo lỗi
   * - Nếu không khai báo giá trị khởi tạo thì phải thêm ? đằng sau kiểu dữ liệu
   * - ? sau kiểu dữ liệu: có thế có giá trị null
   */

  String? name;
  int? year;

  Car({
    this.name,
    this.year
});

  @override
  String toString() {
    return '${this.name} - ${this.year}';
  }
  void doSomething() {
    print(' i am doing something');
  }
  void sayHello({String? personName}) {
    print('Hello: ${personName}');
  }
}