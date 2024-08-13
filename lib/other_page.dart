// other_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_provider.dart';

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('새로운 페이지'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('이름: ${userProvider.user?.name ?? "N/A"}'),
            Text('나이: ${userProvider.user?.age ?? "N/A"}'),
          ],
        ),
      ),
    );
  }
}
