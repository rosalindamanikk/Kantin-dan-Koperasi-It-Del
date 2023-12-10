import 'package:delmart/routes/app_routers.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'
    show FontAwesomeIcons, FaIcon;
import '../../../../shared/theme.dart';
import '../bloc/register_bloc.dart';
import '../bloc/register_event.dart';
import '../bloc/register_state.dart';
import '../shared/custom_text_form_field.dart';
import '../shared/custom_filled_button.dart';
import '../../data/models/user_model.dart';

// this is the login page
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static const String routeName = '/register';
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nikController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool obsecureText = true;
  IconData icon = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: BlocConsumer<RegisterBloc, RegisterState>(
          listener: (context, state) {
            // on success delete navigator stack and push to home
            if (state is RegisterLoadedState) {
              AutoRouter.of(context).pushAndPopUntil(
                const HomeScreen(),
                predicate: (_) => false,
              );
            } else if (state is RegisterErrorState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.message,
                  ),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is RegisterLoadingState) {
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
                          "Buat Akun Baru",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: dark,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Form(
                          key: _formKey,
                          child: Column(children: [
                            // NIK input
                            CustomTextFormField(
                              prefixIcon: Icon(
                                const FaIcon(FontAwesomeIcons.idCard).icon,
                                color: softGray,
                              ),
                              hintText: "NIK",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your NIK';
                                } else if (value.length != 16) {
                                  return 'NIK must be 16 digits';
                                }
                                return null;
                              },
                              controller: _nikController,
                              onSaved: (value) => _nikController.text = value!,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // name input
                            CustomTextFormField(
                              prefixIcon: Icon(
                                Icons.person,
                                color: softGray,
                              ),
                              hintText: "Nama",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Masukkan nama anda';
                                } else if (value.length < 3) {
                                  return 'Nama harus terdiri dari 3 karakter';
                                }
                                return null;
                              },
                              controller: _nameController,
                              onSaved: (value) => _nameController.text = value!,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // email input
                            CustomTextFormField(
                              prefixIcon: Icon(
                                Icons.email,
                                color: softGray,
                              ),
                              hintText: "Email",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Masukkan email anda';
                                } else if (!value.contains('@')) {
                                  return 'Format email anda kurang tepat';
                                }
                                return null;
                              },
                              controller: _emailController,
                              onSaved: (value) =>
                                  _emailController.text = value!,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // phone input
                            CustomTextFormField(
                              prefixIcon: Icon(
                                Icons.phone,
                                color: softGray,
                              ),
                              hintText: "Nomor Telepon",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Masukkan nomor telepon anda';
                                } else if (value.length < 10) {
                                  return 'Nomor telepon harus terdiri dari 10 karakter';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.phone,
                              controller: _phoneController,
                              onSaved: (value) =>
                                  _phoneController.text = value!,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
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
                              obscureText: obsecureText,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Masukkan kata sandi anda';
                                } else if (value.length < 8) {
                                  return 'Kata sandi harus terdiri dari 8 karakter';
                                }
                                return null;
                              },
                              controller: _passwordController,
                              onSaved: (value) =>
                                  _passwordController.text = value!,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomFilledButton(
                              gradient: gradient,
                              text: "Daftar",
                              onPressed: _register,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                "Atau daftar dengan",
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
                            // google and facebook register
                            Row(
                              children: [
                                Expanded(
                                  child: CustomFilledButton(
                                      color: const Color(0xffdb3236),
                                      text: "Google",
                                      onPressed: _googleRegister,
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
                                    color: const Color(0xff3b5998),
                                    text: "Facebook",
                                    onPressed: _facebookRegister,
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
                              "Sudah memiliki akun?",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                color: dark,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                              onPressed: _showLoginPage,
                              child: Text(
                                "Masuk",
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

  void _showLoginPage() {
    AutoRouter.of(context).replace(const LoginScreen());
  }

  void _register() {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<RegisterBloc>(context).add(
        RegisterEvent.onRegisterTapped(
          user: User(
            nik: _nikController.text,
            email: _emailController.text,
            password: _passwordController.text,
            phone: _phoneController.text,
            name: _nameController.text,
          ),
        ),
      );
    }
  }

  void _googleRegister() {
    BlocProvider.of<RegisterBloc>(context).add(
      const RegisterEvent.onGoogleRegisterTapped(),
    );
  }

  void _facebookRegister() {
    BlocProvider.of<RegisterBloc>(context).add(
      const RegisterEvent.onFacebookRegisterTapped(),
    );
  }
}
