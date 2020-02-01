import 'package:flutter/material.dart';

class MyItem extends StatelessWidget {
  final String _title;
  final String _text;
  String _imageurl;

  MyItem(this._title, this._text, {String imageurl}) {
    _imageurl = imageurl;
  }
  @override
  Widget build(BuildContext context) {
    if (_imageurl != null && _imageurl != '')
      return new Container(
          color: Colors.white,
          height: 100.0,
          child: new Row(children: [
            new Image.network(
              _imageurl,
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
            new Expanded(
                child: new Container(
                    padding: new EdgeInsets.all(5.0),
                    child: new Column(children: [
                      new Text(_title,
                          style: new TextStyle(fontSize: 20.0,color: Colors.teal),
                          overflow: TextOverflow.ellipsis),
                      new Expanded(
                          child: new Text(
                            _text,
                            style: new TextStyle(fontSize: 14.0,color: Colors.black54),
                            softWrap: true,
                            textAlign: TextAlign.justify,
                          ))
                    ])))
          ]));

    return new Container(
      color: Colors.black12,
      height: 100.0,
      child: new Row(children: [
        new Expanded(
            child: new Container(
                padding: new EdgeInsets.all(5.0),
                margin: EdgeInsets.all(16.0),
                child: new Column(children: [
                  new Text(_title,
                      style: new TextStyle(fontSize: 20.0),
                      overflow: TextOverflow.ellipsis),
                  new Expanded(
                      child: new Text(
                        _text,
                        softWrap: true,
                        textAlign: TextAlign.justify,
                      ))
                ]))),
        new Divider(),
      ]),
    );
  }
}