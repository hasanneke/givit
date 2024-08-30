import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:givit/shared/model/address/address.dart';
import 'package:givit/shared/model/mark/product_mark.dart';
import 'package:givit/shared/model/product_category/product_category.dart';
import 'package:givit/shared/model/profile/profile.dart';
import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/model/favorite/favorite.dart';
import 'package:givit/shared/model/comment/comment.dart';
import 'package:givit/shared/model/buy_request/buy_request.dart';

class MockData {
  // Profile Data
  static final Profile profile = Profile(
    name: 'Hasan',
    surname: 'Eke',
    email: 'hasaneke1000@gmail.com',
    phone: '0551 123 54 71',
    point: 4.5,
    avatarUrl:
        'https://yt3.ggpht.com/ytc/AIdro_mcdICBAV29FtRetjCbVICax6ujq-FGqL_DgBJovRs4tpU=s600-c-k-c0x00ffffff-no-rj-rp-mo',
    address: Address(
      address: 'Tufan sokak no:37',
      city: 'Ankara',
      state: 'Yenimahalle',
    ),
  );

  // Product Categories
  static final List<ProductCategory> categories = [
    ProductCategory(id: '1', name: 'Elektronik'),
    ProductCategory(id: '2', name: 'Kitaplar'),
    ProductCategory(id: '3', name: 'Giyim'),
    ProductCategory(id: '4', name: 'Ev & Yaşam'),
    ProductCategory(id: '5', name: 'Spor & Outdoor'),
    ProductCategory(id: '6', name: 'Kozmetik'),
    ProductCategory(id: '7', name: 'Oyuncak'),
    ProductCategory(id: '8', name: 'Müzik Aletleri'),
    ProductCategory(id: '9', name: 'Ofis & Kırtasiye'),
    ProductCategory(id: '10', name: 'Bahçe & Yapı Market'),
  ];

  // Product Data
  static final List<Product> products = [
    Product(
      title: 'Laptop',
      description: 'Oyun ve iş için yüksek performanslı laptop.',
      imageUrl:
          'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c08478684.png',
      profile: profile,
      categories: [categories[0]],
    ),
    Product(
      title: 'Kitap',
      description:
          'Programlama hakkında bir kitap, programlama okuyan öğrenciler önceliklidir.',
      imageUrl:
          'https://www.ketebe.com/tasarim-fikirler-kitap-seti-dort-kitap-steven-heller-gail-anderson-sanat-ketebe-steven-heller-gail-anderson-1994-12-O.jpg',
      profile: profile,
      categories: [categories[1]],
    ),
    Product(
      title: 'Tişört',
      description: 'Rahat pamuklu tişört.',
      imageUrl:
          'https://www.gencwear.com/wp-content/uploads/2020/05/oversize-tshirt-arka-siyah.jpg',
      profile: profile,
      categories: [categories[2]],
    ),
    Product(
      title: 'Kulaklık',
      description: 'Gürültü önleyici kulaklık.',
      imageUrl:
          'https://hifilife.com/cdn/shop/files/ACCENTUM_Wireless_ATF_Main_Image_392c56a8-bea7-441a-9d55-1c98a334dbd9_2048x.jpg?v=1716147774',
      profile: profile,
      categories: [categories[0]],
    ),
    Product(
      title: 'Roman',
      description: 'Sürükleyici bir gizem romanı.',
      imageUrl:
          'https://www.ketebe.com/tasarim-fikirler-kitap-seti-dort-kitap-steven-heller-gail-anderson-sanat-ketebe-steven-heller-gail-anderson-1994-12-O.jpg',
      profile: profile,
      categories: [categories[1]],
    ),
  ];

  // Product Mark Data
  static final List<ProductMark> productMarks = products
      .map((product) => ProductMark(
            userId: 'user123',
            product: product,
          ))
      .toList();

  // Favorite Data
  static final List<Favorite> favorites = products
      .map((product) => Favorite(
            userId: 'user123',
            product: product,
          ))
      .toList();

  // Comments Data
  static final List<Comment> comments = [
    Comment(
        commenter: profile, text: 'Harika ürün! Kesinlikle tavsiye ederim.'),
    Comment(commenter: profile, text: 'Hızlı kargo, mükemmel durumda.'),
  ];

  // Buy Request Data
  static final List<BuyRequest> buyRequests = [
    BuyRequest(
      profile: profile,
      product: products[0],
      title: 'İhtiyacım var',
      message: 'Bu laptopu çok beğendim, ihtiyacım var.',
    ),
    BuyRequest(
      profile: profile,
      product: products[1],
      title: 'Talebim var',
      message: 'Bu kitap hakkında daha fazla bilgi alabilir miyim?',
    ),
    BuyRequest(
      profile: profile,
      product: products[2],
      title: 'İhtiyacım var',
      message: 'Bu tişörtü almak istiyorum, ne zaman gönderilir?',
    ),
    BuyRequest(
      profile: profile,
      product: products[3],
      title: 'Talebim var',
      message: 'Kulaklık hakkında daha fazla bilgi verebilir misiniz?',
    ),
    BuyRequest(
      profile: profile,
      product: products[4],
      title: 'İhtiyacım var',
      message: 'Bu romanı satın almak istiyorum, nasıl alabilirim?',
    ),
  ];
}
