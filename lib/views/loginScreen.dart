import 'package:cv_project/globalFiles/appTextField.dart';
import 'package:cv_project/globalFiles/socialButton.dart';
import 'package:cv_project/views/portfolioScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../constants/appImages/imagesLinks.dart';
import '../globalFiles/AppButtons.dart';
import '../constants/appColors.dart';
import '../services/connectivity_provider.dart';
import 'gitHubApiRepo.dart';


class LoginScreen extends ConsumerStatefulWidget {
  LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordCcontroller = TextEditingController();
  bool isLoading = false;
  bool emailError = false;
  bool passwordError = false;
  String firstName = '';
  String lastName = '';


  @override
  void dispose() {
    emailController.dispose();
    passwordCcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final connectivityState = ref.watch(connectivityProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration:  BoxDecoration(
                    color: appColor,
                    image: DecorationImage(
                        image: AssetImage(portfolio1),

                    )),
                child: Center(
                  child: Text('My Portfolio'),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Welcome, to My Portfolio Friend!",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text('Please log in to continue'),
                  const SizedBox(
                    height: 15,
                  ),
                  mytextField(
                      errorCondition: emailError,
                      error: 'Enter a valid email',
                      controller: emailController,
                      label: "Email"),
                  const SizedBox(
                    height: 20,
                  ),
                  mytextField(
                    errorCondition: passwordError,
                    error: 'Incorrect password',
                    label: "Password",
                    isobsure: true,
                    controller: passwordCcontroller,
                    ispassword: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  isLoading
                      ? Center(
                      child: LoadingAnimationWidget.inkDrop(
                          color: appWhite, size: 25))
                      : AppButton(onPressed: (){
                    if (connectivityState.status ==
                        ConnectivityStatus.disconnected) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('No internet connection'),
                          ),
                        );
                      });
                    } else {
                      setState(() {
                        isLoading = true;
                      });
                       Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PortfolioScreen(),
                      ));
                    }

                  }, label: 'Login', textColor: white),
                  const SizedBox(
                    height: 5,
                  ),

                  Text("Make sure you're connected to the internet"),
              const SizedBox(
              height: 15,
            ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(),
                      Text("Or Log In with"),
                      Divider(
                        thickness: 10,
                        height: 10,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(
                        image: Image.asset(facebookIcon),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SocialButton(
                        image: Image.asset(Googlelogo),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SocialButton(
                        image: Image.asset(appleIcon),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don’t have an account?"),
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => const SignUpScreen(),
                          // ));
                        },
                        child: const Text(
                          " Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}