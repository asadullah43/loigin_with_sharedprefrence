import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                // ignore: invalid_use_of_visible_for_testing_member
                SharedPreferences.setMockInitialValues({});
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setString('name', 'asad ullah');
                sp.setInt('age', 25);
                sp.setBool('isLogin', false);
                print(sp.getString('name'));
                print(sp.getInt('age').toString());
                print(sp.getBool('isLogin').toString());
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: const Center(child: Text('Click')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
