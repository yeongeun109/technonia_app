import 'package:cloudnapp/model/TreeView_document.dart';
import 'package:cloudnapp/model/TreeView_info.dart';
import 'package:cloudnapp/widget/TreeView.dart';
import 'package:cloudnapp/widget/directory_widget.dart';
import 'package:cloudnapp/widget/file_widget.dart';
import 'package:flutter/material.dart';
import 'package:tree_view/tree_view.dart';

class SettingPlant extends StatelessWidget {
  final String directoryName;
  final List<Document> childData;

  const SettingPlant(
      {Key key, @required this.directoryName, @required this.childData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('설정 - $directoryName'),
          backgroundColor: Colors.indigo[700],
        ),
        body: Column(
          children: <Widget>[
            Container(
                width: _width,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.indigo[200],
                ),
                child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          '관리할 건물의 Floor를 추가할 수 있습니다.',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        Text(
                          '추가, 삭제 버튼을 이용하세요.',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ],
                    ))),
            Column(
              children: <Widget>[
                //Padding(padding: EdgeInsets.symmetric(horizontal: 20.0)),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 45,
                      child: Center(
                          child: Text(
                            directoryName,
                            style: TextStyle(fontSize: 16),
                          )),
                      decoration: BoxDecoration(
                        //color: Colors.brown[700],
                        border: Border.all(color: Colors.grey, width: 3),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.edit),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Container(
                      width: 150,
                      height: 30,
                      child: Center(
                          child: Text(
                            'Leaf 추가',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        //border: Border.all(color: Colors.grey, width: 3),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.add_circle_outline,
                          size: 40,
                        )),
                    IconButton(
                        icon: Icon(
                          Icons.remove_circle_outline,
                          size: 40,
                        )),
                  ],
                ),
                SizedBox(height: 30),
                /*Container(
                    width: 400,
                    height: 200,
                    child: MyApp(),
                  )*/
                Container(
                    width: 320,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300], width: 2)),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 50,
                          child: Center(child: Text('Leaf 1')),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 2,
                        ),
                        Container(
                          height: 50,
                          child: Center(child: Text('Leaf 2')),
                        ),
                      ],
                    ))
              ],
            ),
          ],
        ));
  }
}
