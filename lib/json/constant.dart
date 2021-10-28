import 'package:demoplashscreen/models/CategoryModel.dart';
import 'package:flutter/material.dart';
//home iamge
const String homeImg =
    'https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60';
//account image
const String profileUrl =
    "https://images.unsplash.com/photo-1616597082843-de7ce757d548?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60";

// đề nghị
const List<Map<String, Object>> recommends = [
  {
    'title': 'Summer Loose Korean T-shirt',
    'price': '30',
    'imgUrl':
        'https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Bat Sleeve Student T-shirt Summer',
    'price': '35',
    'imgUrl':
        'https://images.unsplash.com/photo-1545291730-faff8ca1d4b0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Summer New Korean Version',
    'price': '25',
    'imgUrl':
        'https://images.unsplash.com/photo-1562572159-4efc207f5aff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
  },
  {
    'title': 'Loose-fitting Outside Shirt',
    'price': '30',
    'imgUrl':
        'https://images.unsplash.com/photo-1503185912284-5271ff81b9a8?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  },
  {
    'title': 'Cotton Short-sleeved T-shirt',
    'price': '20',
    'imgUrl':
        'https://images.unsplash.com/photo-1541257710737-06d667133a53?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  }
];
//đã xem gần đây
const List<Map<String, Object>> recently = [
  {
    'title': 'Summer Loose Korean T-shirt',
    'price': '30',
    'imgUrl':
        'https://images.unsplash.com/photo-1475180098004-ca77a66827be?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Bat Sleeve Student T-shirt Summer',
    'price': '35',
    'imgUrl':
        'https://images.unsplash.com/photo-1563826904577-6b72c5d75e53?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTQzfHxmYXNoaW9ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Summer New Korean Version',
    'price': '25',
    'imgUrl':
        'https://images.unsplash.com/photo-1485462537746-965f33f7f6a7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Loose-fitting Outside Shirt',
    'price': '30',
    'imgUrl':
        'https://images.unsplash.com/photo-1533407411655-dcce1534c1a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=376&q=80',
  },
  {
    'title': 'Cotton Short-sleeved T-shirt',
    'price': '20',
    'imgUrl':
        'https://images.unsplash.com/photo-1507007727303-1532f71109cf?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  }
];
// ảnh slider home
const List<String> slider = [
  'https://images.unsplash.com/photo-1465408953385-7c4627c29435?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzV8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/flagged/photo-1574876242429-3164fb8bf4bc?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1483118714900-540cf339fd46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
];

const List exploreBannerr = [
  {
    'year': '2019',
    'title': 'Urban Collection',
    'description':
        'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE COLLECTION'
  },
  {
    'year': '2020',
    'title': 'Urban Fashion',
    'description':
        'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE FASHION'
  },
  {
    'year': '2021',
    'title': 'Urban Collection',
    'description':
        'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE COLLECTION'
  },
  {
    'year': '2022',
    'title': 'Urban Fashion',
    'description':
        'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE FASHION'
  },
];
//chi chi tiết sản phẩm
const List productDetail = [
  'https://images.unsplash.com/photo-1565155003033-252a7073802c?ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80',
  'https://images.unsplash.com/photo-1545911825-6bfa5b0c34a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1572112686886-5c0b5bc8dacd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1582041148887-67274b989ae3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
];
//nhãn hiệu
const List brands = ['Adidas', 'Bershka', 'Converse', 'Diesel'];
//lịch sử tìm kiếm
const List historySearches = [
  'Red Sunglasses',
  'Large T-Shirt',
  'Jaws Hoodie',
  'Blue Sweater',
  'Levi’s Jeans'
];
//danh sách giỏ hàng
const List cartList = [
  {
    "img":
        "https://images.unsplash.com/photo-1495385794356-15371f348c31?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "Snoopy T-shirt",
    "ref": "04559812",
    "price": "\$40",
    "size": "S"
  },
  {
    "img":
        "https://images.unsplash.com/photo-1545291730-faff8ca1d4b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "American",
    "ref": "04459811",
    "price": "\$30",
    "size": "M"
  },
];
//danh sách yêu thích
const List favoritestList = [
  {
    "img":
    "https://images.unsplash.com/photo-1495385794356-15371f348c31?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "Snoopy T-shirt",
    "ref": "04559812",
    "price": "\$40",
    "size": "S"
  },
  {
    "img":
    "https://images.unsplash.com/photo-1545291730-faff8ca1d4b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "American",
    "ref": "04459811",
    "price": "\$30",
    "size": "M"
  },
];
//menu ngang
List menuBars = [
  "Home",
  "Search",
  "Shop",
  "Cart",
  "Favorit",
  "Account",
];
/// icon bottom bar
List itemsTab = [
  {"icon": Icons.home, "size": 28.0},
  {"icon": Icons.search, "size": 22.0},
  {"icon": Icons.favorite, "size": 21.0},
  {"icon": Icons.shopping_bag, "size": 22.0},
  {"icon": Icons.account_circle, "size": 25.0},
];
// danh mục tài khoản
List accountList = [
  "Account Details",
  "Loyalty card & offers",
  "Notifications",
  "Delivery Information",
  "Payment Information",
  "Language",
  "Privacy Settings"
];
//hien thi trong trang tim kiem / danh mục thể loại
List productList = [
  {
    "img":
    "https://chiase24.com/wp-content/uploads/2019/07/Tong-hop-hinh-anh-gai-xinh-de-thuong-cute-nhat-6-1.jpg",
    "name": "Women",
    "open": 1
  },
  {
    "img":
    "https://toigingiuvedep.vn/wp-content/uploads/2021/06/hinh-anh-trai-dep-han-quoc-820x547.jpg",
    "name": "Men",
    "open": 1
  },
  {
    "img":
    "https://www.bu.edu/files/2019/09/are-kids-hardwired-for-revenge.jpg",
    "name": "Kids",
    "open": 1
  },
  {
    "img":
    "https://dongphuchaianh.vn/wp-content/uploads/2021/07/quan-ao-the-thao-nam-adidas-1.jpg",
    "name": "Sport",
    "open": 1
  },
  {
    "img":
    "https://my-test-11.slatic.net/p/4ece6b412e32771bb1743d4631bbf8fe.jpg_320x320.jpg",
    "name": "Decor",
    "open": 1
  },
];
// danh sách cửa hàng
List storeList = [
  {
    "img":
        "https://images.unsplash.com/photo-1507914372368-b2b085b925a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "Châtelet - Les Halles, Paris",
    "open": 1
  },
  {
    "img":
        "https://images.unsplash.com/photo-1546213290-e1b492ab3eee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "Champs-Élysées, Paris",
    "open": 0
  },
  {
    "img":
        "https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "Châtelet - Les Halles, Paris",
    "open": 1
  },
];
