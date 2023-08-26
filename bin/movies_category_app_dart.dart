import 'dart:io';

import 'package:movies_category_app_dart/movies_category_app_dart.dart' as movies_category_app_dart;
import 'category.dart';
import 'movie.dart';
void main() {
  bool xm=true;
  bool xc=false;
  String? chscat;
  String? chsmovie;
  Category c=Category();
  print("Welcome to our Movie Application");
  print('----------------------------------');
  print('Movies Categories choose one:\n');
  print('1. Action');
  print('2. Comedy');
  print('3. Drama');
  print('4. Romance');
  print('5. Horror');
      Movie? m1;
      Movie? m2;
      Movie? m3;
      Movie? m4;
  do{
  print('Enter category you want');
  chscat = stdin.readLineSync();
  if (chscat != null){
    int n = int.parse(chscat);
    if (n==1){
      xc=false;
      c.cat='Action';
      m1=Movie("Die Hard", 9.99,c);
      m2=Movie("Mad Max: Fury Road", 7.50,c);
      m3=Movie("The Dark Knight", 12.99,c);
      m4=Movie("John Wick", 6.99,c);
    }
    else if (n==2){
      xc=false;
      c.cat="Comedy";
      m1=Movie("Anchorman: The Legend of Ron Burgundy", 5.50,c);
      m2=Movie("Superbad", 4.99,c);
      m3=Movie("Bridesmaids", 8.25,c);
      m4=Movie("The Hangover", 6.75,c);
    }
    else if (n==3){
      xc=false;
      c.cat="Drama";
      m1=Movie("The Shawshank Redemption", 7.99,c);
      m2=Movie("Forrest Gump", 9.50,c);
      m3=Movie("The Godfather", 11.25,c);
      m4=Movie("Schindler's List", 8.75,c);
    }
    else if (n==4){
      xc=false;
      c.cat="Romance";
      m1=Movie("La La Land", 6.99,c);
      m2=Movie("Eternal Sunshine of the Spotless Mind", 7.75,c);
      m3=Movie("Pride and Prejudice", 8.50,c);
      m4=Movie("The Notebook", 9.25,c);
    }
    else if (n==5){
      xc=false;
      c.cat="Horror";
      m1=Movie("The Exorcist", 6.75,c);
      m2=Movie("Get Out", 8.50,c);
      m3=Movie("A Quiet Place", 7.25,c);
      m4=Movie("Halloween", 5.99,c);
    }
    else {
      print("Invalid Input");
      xc=true;

    }
  }
  }while(xc==true);
    print("The ${c.cat} movies list are");
    print('------------------------------');
    print('1. ${m1?.movie}');
    print('2. ${m2?.movie}');
    print('3. ${m3?.movie}');
    print('4. ${m4?.movie}');
    while(xm==true){
    print("choose the movie you want to buy from ${c.cat} Category...");
    chsmovie = stdin.readLineSync();
    if (chsmovie != null){
    int x = int.parse(chsmovie);
    if (x==1){
      xm=false;
      print("The price of ${m1?.movie} movie at ${c.cat} category is : \$${m1?.price}");
    }
    else if (x==2){
      xm=false;
      print("The price of ${m2?.movie} movie at ${c.cat} category is : \$${m2?.price}");
    }
    else if (x==3){
      xm=false;
      print("The price of ${m3?.movie} movie at ${c.cat} category is : \$${m3?.price}");
    }
    else if (x==4){
      xm=false;
      print("The price of ${m4?.movie} movie at ${c.cat} category is : \$${m4?.price}");
    }
    else{
      print("Invalid Input");
    }

    }


    }
  }
