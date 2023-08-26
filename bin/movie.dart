import 'category.dart';
class Movie{

  String? movie;
  
  double? price;
  
  Category? cat;
  
  Movie(String n,double p,Category c){
    movie = n;
    price = p;
    cat = c;
  }
}