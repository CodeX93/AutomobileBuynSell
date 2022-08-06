import 'package:flutter/material.dart';
import 'package:hyser_wheels1/FormattingWidgets/FormattingWidgets.dart';
class uploadBlog extends StatelessWidget {
  const uploadBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(86, 36, 237, 10),
        title: Text('Post a Blog'),
        actions: [
          TextButton(
            onPressed: (() {}),
            child: Row(
              children: [
                TextButton(
                  onPressed: (() {
                    print('blog Uploaded');
                  }),
                  child: Row(
                    children: [
                      Text(
                        'Upload Blog  ',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      Icon(
                        Icons.upload_rounded,
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

      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Blog Subject',

            ),
          ),
          GiveSpaceVertical(),GiveSpaceVertical(),
          TextField(
            minLines: 1,
            maxLines: 1000,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Write your Blog',
            ),
          ),
        ],
      ),

    );
  }
}
