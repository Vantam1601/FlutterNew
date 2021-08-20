abstract class Car {
  /**
   * Thuộc tính
   * - Khai báo giá trị khỏi tạo nếu không sẽ báo lỗi
   * - Nếu không khai báo giá trị khởi tạo thì phải thêm ? đằng sau kiểu dữ liệu
   * - ? sau kiểu dữ liệu: có thế có giá trị null
   * - ! sau value: chắc chắc value đó không có null
   */

  String? name;
  int? year;

  Car({
    this.name,
    this.year
});

  showInfo();
  totalNumber(dynamic a, dynamic b, dynamic c);

}