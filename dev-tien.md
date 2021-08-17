# FlutterNew
Dart style :
UpperCamelCase tên viết hoa chữ cái đầu tiên của mỗi từ, kể cả chữ cái đầu tiên.
quy cách :Các lớp, kiểu enum, typedef và các tham số kiểu phải viết hoa chữ cái đầu tiên của mỗi từ
(bao gồm cả từ đầu tiên) và không sử dụng dấu phân tách.
ví dụ :
class SliderMenu { ... }

class HttpRequest { ... }

typedef Predicate<T> = bool Function(T value);

class Foo {
const Foo([Object? arg]);
}
đặc biệt :
sử dụng khai báo biến kiểu lớp không có tham số đầu vào bằng lowerCamelCase

const foo = Foo();
@foo
class C { ... }

lowerCamelCase tên viết hoa chữ cái đầu tiên của mỗi từ, ngoại trừ chữ cái đầu tiên luôn là chữ thường, ngay cả khi đó là từ viết tắt.


lowercase_with_underscorestên chỉ sử dụng các chữ cái thường, ngay cả cho các từ viết tắt và các từ tách biệt với _.


