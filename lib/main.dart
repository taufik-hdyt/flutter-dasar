import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Extract Widget"),
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ChatItem(
                imageUrl: faker.image.image(),
                subtitle: faker.lorem.sentence(),
                title: faker.person.name());
          },
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatItem({
    Key? key,
    this.imageUrl = "",
    this.title = "",
    this.subtitle = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(
        subtitle,
        maxLines: 1,
      ),
      trailing: Text("10:32"),
    );
  }
}
