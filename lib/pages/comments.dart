import 'package:flutter/material.dart';
import 'package:homecoffee/pages/commentcard.dart';
import 'package:homecoffee/pages/makecomment.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comentarios'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverFixedExtentList(
            itemExtent: 250.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  child: Commentcard(),
                );
              },
              childCount: 7,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Comentar()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
