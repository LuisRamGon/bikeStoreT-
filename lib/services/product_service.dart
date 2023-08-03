
import 'package:bikestoret/firebase/firestore_service.dart';
import 'package:bikestoret/models/product_model.dart';

class ProductService extends FirestoreService<ProductModel> {
  
  ProductService({ProductModel? model}): super(parser: ProductModelParser(model:model), reference: 'products');
  
  static void seed() {

    var products = [
  {
    "name": "Road Bike",
    "imageUrl": "https://firebasestorage.googleapis.com/v0/b/bikestoret-86b0c.appspot.com/o/PRODUCTS%2F124158405-bicicleta-ele%CC%81ctrica-moderna-aislado-en-blanco.webp?alt=media&token=322cf0b8-86a5-4131-9cd2-b887d3bd4fcf",
    "description": "Road bikes are built for traveling at speed on paved roads.",
    "brand": "Trek",
    "category": "Road",
    "price": 1000,
    "countInStock": 10,
    "rating": 4.5,
    "numReviews": 12,
    "discountPrice": 700 // 30% discount (1000 - (0.30 * 1000))
  },
  {
    "name": "Mountain Bike",
    "imageUrl": "https://firebasestorage.googleapis.com/v0/b/bikestoret-86b0c.appspot.com/o/PRODUCTS%2F14311_bicicleta-specialized-rockhopper-29_m16_638210567990858502.jpg?alt=media&token=ed88aea2-b27c-4f2f-bcec-cb88dbc4d041",
    "description": "Mountain bikes are designed to be ridden off-road.",
    "brand": "Trek",
    "category": "Mountain",
    "price": 1500,
    "countInStock": 10,
    "rating": 4.0,
    "numReviews": 8,
    "discountPrice": 1050 // 30% discount (1500 - (0.30 * 1500))
  },
  {
    "name": "Hybrid Bike",
    "imageUrl": "https://firebasestorage.googleapis.com/v0/b/bikestoret-86b0c.appspot.com/o/PRODUCTS%2F360_F_6884785_CAGsUkoSvY1LcaNFPDoNrh9wxS0pnmZq.jpg?alt=media&token=f8430bfb-76b2-4d58-81ae-e3d454379958",
    "description": "Hybrid bikes are a mash-up of mountain, road and touring designs.",
    "brand": "Trek",
    "category": "Hybrid",
    "price": 500,
    "countInStock": 10,
    "rating": 3.5,
    "numReviews": 5,
    "discountPrice": 350 // 30% discount (500 - (0.30 * 500))
  },
  {
    "name": "Cruiser Bike",
    "imageUrl": "https://firebasestorage.googleapis.com/v0/b/bikestoret-86b0c.appspot.com/o/PRODUCTS%2F65AS1008_PY19_HYB_ASX_6-7__RIOTRED_JETBLACK.png?alt=media&token=e4b22bcc-1f75-49b0-a404-328c31b60754",
    "description": "Cruiser bikes are built for relaxed cycling enjoyment.",
    "brand": "Trek",
    "category": "Cruiser",
    "price": 300,
    "countInStock": 10,
    "rating": 3.0,
    "numReviews": 3,
    "discountPrice": 210 // 30% discount (300 - (0.30 * 300))
  },
  {
    "name": "BMX Bike",
    "imageUrl": "https://firebasestorage.googleapis.com/v0/b/bikestoret-86b0c.appspot.com/o/PRODUCTS%2FBici-electrica-bogota.png?alt=media&token=bb8f8d63-18a9-4dd8-b7e1-5fa928b61590",
    "description": "BMX bikes are designed for stunts, tricks and racing.",
    "brand": "Trek",
    "category": "BMX",
    "price": 200,
    "countInStock": 10,
    "rating": 2.5,
    "numReviews": 2,
    "discountPrice": 140 // 30% discount (200 - (0.30 * 200))
  },
  {
    "name": "Folding Bike",
    "imageUrl": "https://firebasestorage.googleapis.com/v0/b/bikestoret-86b0c.appspot.com/o/PRODUCTS%2FBicicleta-electrica.png?alt=media&token=d18d675f-1480-4cb9-8e73-4f74ab81979d",
    "description": "Folding bikes are designed to fold into a compact form.",
    "brand": "Trek",
    "category": "Folding",
    "price": 400,
    "countInStock": 10,
    "rating": 2.0,
    "numReviews": 1,
    "discountPrice": 280 // 30% discount (400 - (0.30 * 400))
  }
];

    
    var models = products.map((e) => ProductModel.fromMap(e)).toList();

    models.forEach((model) {
      ProductService(model: model).save();
    });

  }

}