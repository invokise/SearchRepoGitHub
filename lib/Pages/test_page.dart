

import 'package:flutter/material.dart';
import 'package:third/API/api.dart';
import 'package:third/model/rep_model.dart';

class TestWidget extends StatefulWidget {
  
  const TestWidget({Key? key}) : super(key: key);

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {

final searchRepos = API().getRepos('q');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: const Center(child: Text('gg')),),
      body: FutureBuilder<SearchRepos>(
        future: searchRepos,
        builder: (context,snapshot){
          if (snapshot.hasData){
          return ListView.builder(itemBuilder: (context, index){
            return Row(children: [
               Text(snapshot.data!.items![index].id.toString()),
            ],);
          });
          } else {
            return const CircularProgressIndicator();
          }
        },),
    );
  }
}