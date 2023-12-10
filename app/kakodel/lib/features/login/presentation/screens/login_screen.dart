import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'
    show FontAwesomeIcons;

import '../../../../routes/app_routers.gr.dart';
import '../../../../shared/theme.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_states.dart';
import '../shared/custom_text_form_field.dart';
import '../shared/custom_filled_button.dart';
import '../../data/models/user_model.dart';

// this is the login page
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = '/login';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool obsecureText = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  IconData icon = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            // on success delete navigator stack and push to home
            if (state is LoginLoadedState) {
              AutoRouter.of(context).pushAndPopUntil(
                const HomeScreen(),
                predicate: (_) => false,
              );
            } else if (state is LoginErrorState) {
              _showSnackBar(state.message);
            }
          },
          builder: (context, state) {
            if (state is LoginLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    child: Image(
                      image: AssetImage('assets/images/kako.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selamat Datang di KakoDel!",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: dark,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Masuk dan Mulai Belanja",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        const SizedBox(height: 5),
                        Form(
                          key: _formKey,
                          child: Column(children: [
                            // email input
                            CustomTextFormField(
                              hintText: "Email",
                              prefixIcon: Icon(
                                Icons.email,
                                color: softGray,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Masukkan email anda';
                                } else if (!value.contains('@')) {
                                  return 'Masukkan email yang tepat';
                                }
                                return null;
                              },
                              controller: _emailController,
                              onSaved: (value) =>
                                  _emailController.text = value!,
                            ),
                            const SizedBox(height: 10),
                            // password input
                            CustomTextFormField(
                              hintText: "Kata Sandi",
                              prefixIcon: Icon(
                                Icons.lock,
                                color: softGray,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    obsecureText = !obsecureText;
                                    icon = obsecureText
                                        ? Icons.visibility
                                        : Icons.visibility_off;
                                  });
                                },
                                icon: Icon(
                                  icon,
                                  color: softGray,
                                ),
                              ),
                              controller: _passwordController,
                              obscureText: obsecureText,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Masukkan kata sandi anda';
                                } else if (value.length < 8) {
                                  return 'Kata sandi harus terdiri dari 8 karakter';
                                }
                                return null;
                              },
                              onSaved: (value) =>
                                  _passwordController.text = value!,
                            ),
                            const SizedBox(height: 10),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.end,
                            //   children: [
                            //     InkWell(
                            //       onTap: _showForgotPasswordPage,
                            //       child: Text(
                            //         "Lupa Kata Sandi?",
                            //         style: TextStyle(
                            //           fontSize: 16,
                            //           fontFamily: 'Poppins',
                            //           color: orange,
                            //           fontWeight: FontWeight.bold,
                            //         ),
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            const SizedBox(height: 10),
                            CustomFilledButton(
                              gradient: gradient,
                              text: "Masuk",
                              onPressed: _login,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                "Atau Masuk Dengan",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  color: dark,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // google and facebook login
                            Row(
                              children: [
                                Expanded(
                                  child: CustomFilledButton(
                                      color: const Color(0xffff4c4c),
                                      text: "Google",
                                      onPressed: _googleLogin,
                                      icon: Icon(
                                        FontAwesomeIcons.google,
                                        color: white,
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: CustomFilledButton(
                                    color: const Color(0xFF4C4CFF),
                                    text: "Facebook",
                                    onPressed: _facebookLogin,
                                    icon: Icon(
                                      FontAwesomeIcons.facebookF,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Belum memiliki akun?",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                color: dark,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                              onPressed: _showRegisterPage,
                              child: Text(
                                "Daftar Sekarang",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  color: orange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _showForgotPasswordPage() {
    // AutoRouter.of(context).push(const ForgotPasswordRoute());
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<LoginBloc>(context).add(
        LoginEvent.onLoginTapped(
          user: User(
            email: _emailController.text,
            password: _passwordController.text,
          ),
        ),
      );
    }
  }

  void _googleLogin() {
    BlocProvider.of<LoginBloc>(context).add(
      const LoginEvent.onGoogleLoginTapped(),
    );
  }

  void _facebookLogin() {
    BlocProvider.of<LoginBloc>(context).add(
      const LoginEvent.onFacebookLoginTapped(),
    );
  }

  void _showRegisterPage() {
    AutoRouter.of(context).push(const RegisterScreen());
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
