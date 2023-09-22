import 'package:clean_arch/core/network/base/response_handler.dart';
import 'package:clean_arch/core/state_handler/state_builder_widget.dart';
import 'package:flutter/material.dart';

import 'package:untitled1/infrastructure/dal/daos/user_response.dart';
import 'package:untitled1/presentation/auth/controllers/user.controller.dart';
import '../../infrastructure/dal/daos/auth_response.dart';
import 'controllers/auth.controller.dart';

class AuthScreen extends StatelessWidget {
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
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            decoration: const InputDecoration(
              labelText: 'Username',
            ),
            onChanged: (e) {
              // controller.authParam.userName = e;
            },
          ),
          const SizedBox(height: 16.0),
          TextField(
            onChanged: (e) {
              // controller.authParam.pass = e;
            },
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 24.0),
          SuperStateBuilder<AuthController, AuthResponse>(
              child: (controller, response) => Column(
                    children: [
                      Text(response?.message ?? ""),
                      ElevatedButton(onPressed: controller.login, child: const Text('Login')),
                    ],
                  )),
          SuperStateBuilder<UserController, UserResponse>(
              child: (controller, response) => Column(
                    children: [
                      Text(response?.userId.toString() ?? "00"),
                      Text(response?.title.toString() ?? "00"),
                      Text(response?.completed.toString() ?? "00"),
                      ElevatedButton(onPressed: controller.getUserData, child: const Text('USER')),
                    ],
                  )),
        ]),
      ),
    );
  }
}
