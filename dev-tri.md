*** Nullable variables
- kieu_du_lieu ? ten_bien;
 * Nếu không gán giá trị thì biến sẽ có giá trị bằng null
*** Null-aware operators
    -	??=  : gán giá trị. Khi khai báo biến kiểu nullable vảiables
    -	?? : so sánh
    * So sánh 2  giá trị cùng kiểu dữ liệu thì sẽ lấy giá trị bên trái
    * Nếu so sánh với null thì sẽ lấy giá trị khác null

    String? foo = 'a string';   //giá trị khởi tạo là 1 chuỗi ‘a string’
    String? bar;  			    //giá trị được khởi tạo = null
    String? baz = foo ?? bar; 	//trả về giá trị khác null ‘a string’
    void updateSomeVars() {
      bar ??= 'a string';		//gán giá trị bar bằng chuỗi ‘a string’
    }

*** Conditional property access