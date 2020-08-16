import 'package:flutter/material.dart';

class WarpApp extends StatefulWidget {
  @override
  _WarpAppState createState() => _WarpAppState();
}

class _WarpAppState extends State<WarpApp> {
  // 保存数据
  List<Widget> list;

  @override
  void initState() {
    super.initState();
    list = List<Widget>()..add(buildAddButton());
  }

  @override
  Widget build(BuildContext context) {
    // 屏幕的高宽
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap流式布局'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
              width: width,
              height: height / 2,
              color: Colors.grey,
              // 使用流式布局
              child: Wrap(
                children: list,
                spacing: 26.0,
              )),
        ),
      ),
    );
  }

  // 定义添加按钮
  Widget buildAddButton() {
    // 返回一个手势组件，相当于div外套一个a,就完成一个功能
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(list.length - 1, buildAddPhoto());
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100.0,
          height: 100.0,
          color: Colors.black54,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  // 增加照片的模板
  Widget buildAddPhoto() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100.0,
        height: 100.0,
        color: Colors.amber,
        child: Center(
          child: Text('照片'),
        ),
      ),
    );
  }
}
