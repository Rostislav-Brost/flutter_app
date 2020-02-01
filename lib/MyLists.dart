import 'package:flutter/material.dart';
import 'package:flutter_app/MyItem.dart';

class MyListBasic extends StatelessWidget {
  List<Widget> _mylist;

  get children {
    List<Widget> _result = List();
    int i = 0;
    while (i < _mylist.length - 1) {
      _result.add(_mylist[i++]);
      _result.add(new Divider());
    }
    _result.add(_mylist[i]);
    return _result;
  }

  MyListBasic({List<Widget> children}) {_mylist = children;}

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: children,
    );
  }
}

class MyListInfinite extends StatefulWidget {
  @override
  createState() => new MyListInfiniteState();
}

class MyListInfiniteState extends State<MyListInfinite> {

  @override
  Widget build(BuildContext context) {
    String itemTitle = 'Заголовок №';
    String itemText = '''Это текст айтема и он чень большой''';
    String itemImgUrl = 'https://cdn4.iconfinder.com/data/icons/math-symbols-line/48/infinity_limitless_infinite_math-512.png';

    return new ListView.builder(itemBuilder: (context, i) {
      if (i.isOdd) return new Divider();
      else itemText = itemText.replaceAll('чень', 'очень');

      final int index = i ~/ 2;
      // if (index >= _items.length) _items.addAll(['$index', '${index + 1}', '${index + 2}']);

      return new MyItem(itemTitle + (index + 1).toString(), itemText,
          imageurl: itemImgUrl);
    });
  }
}
