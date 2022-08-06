import 'package:flutter/material.dart';

class BlogView extends StatelessWidget {
  const BlogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Post a Blog'),
          backgroundColor: Color.fromRGBO(86, 36, 237, 10),
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: (() {Navigator.pushNamed(context, '/uploadBlog');})),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: Text(
          'Blogs',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromRGBO(86, 36, 237, 10),
        actions: [
          TextButton(
            onPressed: (() {}),
            child: Row(
              children: [
                TextButton(
                  onPressed: (() {
                    print('Hello');
                  }),
                  child: Row(
                    children: [
                      Text(
                        'My Blogs  ',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      Icon(
                        Icons.article,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),

      body: Container(
        color: Color.fromRGBO(86, 36, 237, 10),
        child: Column(),
      ),
    );
  }
}
