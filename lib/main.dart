import 'package:flutter/material.dart';
import 'package:interviewtwo/hello.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: buildScaffoldSample(),
      // theme: ThemeData.dark(),
    );
  }

  Scaffold buildScaffoldSample() {
    List<String> categories = List.generate(100, (index) => index.toString());

    return Scaffold(
      appBar: AppBar(
        title: Image.network("https://picsum.photos/200/300"),
      ),
      body: cList(categories),
      bottomNavigationBar: menuler(),
    );
  }

  PageView buildPageView() {
    return PageView(
      onPageChanged: (value) {},
      children: [Container(color: Colors.red), Container(color: Colors.green)],
    );
  }

  Column buildColumnProduct(List<String> categories) => Column(children: [title(), cList(categories)]);

  Text title() => Text("Hello", style: TextStyle(fontSize: 25));

  SizedBox cList(List<String> categories) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) => Dismissible(
            key: Key("a"),
            background: Container(color: Colors.red),
            secondaryBackground: Container(color: Colors.green),
            child: cListCard(categories, index)),
      ),
    );
  }

  Card cListCard(List<String> categories, int index) =>
      Card(child: SizedBox(height: 100, child: Center(child: Text(categories[index]))));

  AppBar bts() {
    return AppBar(
      actions: [
        IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
      ],
    );
  }

  BottomNavigationBar menuler() {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.access_alarms),
        title: Text("data"),
      ),
      BottomNavigationBarItem(icon: Icon(Icons.access_alarms), title: Text("a"))
    ]);
  }
}
