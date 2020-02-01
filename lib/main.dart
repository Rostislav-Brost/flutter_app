import 'package:flutter/material.dart';
import 'package:flutter_app/MyLists.dart';

import 'MyItem.dart';
int titleIndex=0;
String text='''Пример Многострочного текста элемента.Тройные одинарные ковычки,softWrap: true ''';
String imageURL='https://i1.wp.com/sovitpoudel.com.np/wp-content/uploads/2019/01/flutter.png';
List<Widget> myList = [
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
  new MyItem('Заголовок ${titleIndex++}',text , imageurl:imageURL ),
];
String appTitle = '@Rostislav_Za';

void main() => runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Scaffold(
        appBar:
            new AppBar(backgroundColor: Colors.teal, title: new Text(appTitle)),
//        body: new MyListInfinite()
        body: new MyListBasic(children: myList))));
