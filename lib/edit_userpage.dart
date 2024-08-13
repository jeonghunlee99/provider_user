import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_provider.dart';
import 'user_model.dart';

class EditUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController ageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('사용자 정보 수정하기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: '새로운 이름'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: ageController,
              decoration: InputDecoration(labelText: '나이'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String newName = nameController.text;
                int newAge = int.tryParse(ageController.text) ?? 0;

                if (newName.isNotEmpty && newAge > 0) {
                  User newUser = User(name: newName, age: newAge);
                  Provider.of<UserProvider>(context, listen: false).setUser(newUser);
                  Navigator.pop(context);
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('정보를 입력하세요!'),
                        content: Text('빈칸에 이름과 나이를 입력하세요'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('확인'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('수정하기'),
            ),
          ],
        ),
      ),
    );
  }
}
