import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar(), body: _catalogBar());
  }

  _catalogBar() {
    return Container(
      margin: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Категории',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Expanded(child: SizedBox()),
              Text(
                'Посмотреть все',
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                      children: List.generate(
                          10,
                          (index) => Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                padding: EdgeInsets.all(15),
                                child: Container(child: Text('Разработка')),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        width: 1, color: Colors.black)),
                              ))),
                  SizedBox(height: 10),
                  Row(
                      children: List.generate(
                          10,
                          (index) => Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                padding: EdgeInsets.all(15),
                                child: Container(child: Text('Разработка')),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        width: 1, color: Colors.black)),
                              ))),
                ],
              )),
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
                image: new DecorationImage(image: AssetImage('images/E.png'))),
          ),
          Expanded(child: SizedBox()),
          Text(
            'ВХОД',
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }

  _maybe_bar() {
    return Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 25),
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: double.maxFinite,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400]!,
                offset: Offset(5.0, 5.0),
                blurRadius: 10.0,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 215,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('images/i.png'), fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Text(
                    'Жаратылыстану',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Expanded(child: SizedBox()),
                  Row(
                    children: [
                      Icon(Icons.remove_red_eye),
                      SizedBox(
                        width: 10,
                      ),
                      Text('0'),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
