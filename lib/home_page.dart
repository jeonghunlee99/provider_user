// home_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_provider.dart';
import 'user_model.dart';
import 'other_page.dart';
import 'new_page.dart';
import 'edit_userpage.dart'; // 새로운 페이지 import 추가

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider를 사용하여 유저정보 뜨게하기'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('이름: ${userProvider.user?.name ?? "N/A"}'),
            Text('나이: ${userProvider.user?.age ?? "N/A"}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                User newUser = User(name: '정훈', age:25 );
                userProvider.setUser(newUser);
              },
              child: Text('유저의 정보'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtherPage()),
                );
              },
              child: Text('유저정보 확인하기'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdditionalPage()),
                );
              },
              child: Text('유저정보 확인하기2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // "Edit User Info" 버튼을 누를 때 EditUserPage로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditUserPage()),
                );
              },
              child: Text('사용자 정보 변경하기'),
            ),
          ],
        ),
      ),
    );
  }
}
