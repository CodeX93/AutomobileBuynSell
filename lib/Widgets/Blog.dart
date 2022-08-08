import 'package:flutter/material.dart';

class BlogView extends StatelessWidget {
  const BlogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          label: const Text('Post a Blog'),
          backgroundColor: const Color.fromRGBO(86, 36, 237, 10),
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: (() {
            Navigator.pushNamed(context, '/uploadBlog');
          })),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: const Text(
          'Blogs',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(86, 36, 237, 10),
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
                      const Text(
                        'My Blogs  ',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      const Icon(
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
        color: const Color.fromRGBO(86, 36, 237, 10),
        child: Column(),
      ),
    );
  }
}
