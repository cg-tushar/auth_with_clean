import 'package:clean_arch/core/state_handler/state_builder_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../infrastructure/dal/daos/auth_response.dart';
import 'controllers/auth.controller.dart';

class AuthScreen extends GetView<AuthController> {
  const AuthScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
              onChanged: (e) {
                controller.authParam.userName = e;
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              onChanged: (e) {
                controller.authParam.pass = e;
              },
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 24.0),
            SuperStateBuilder<AuthController, AuthResponse>(
                child: (d) => Column(
                  children: [
                    Text(d?.data?.message??""),
                    ElevatedButton(onPressed: controller.login, child: const Text('Login')),
                  ],
                )),
            ElevatedButton(onPressed: controller.login, child: const Text('Re Login'))
          ],
        ),
      ),
    );
  }
}

