import 'package:flutter/material.dart';
import 'package:flutter_project_saya/screens/account/settings/settings.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  Future<void> refreshData() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        title: const Center(
          child: Text(
            "Account",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: refreshData,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/icons/akun.png'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Ahmad Fajar Alfaravi',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'FreshGraduate',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //fot settings account
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Settings(),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 140, 218, 142),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            "Settings Account Profile",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      height: 40,
                      thickness: 0,
                    ),
                    //for password
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 140, 218, 142),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.security,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            "Password",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      height: 40,
                      thickness: 0,
                    ),
                    //for notifacation
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 140, 218, 142),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            "Notifications",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      height: 40,
                      thickness: 0,
                    ),
                    //for logout
                    GestureDetector(
                      onTap: () {
                        Alert(
                          context: context,
                          title: "Apakah Anda Ingin Keluar",
                          desc: "Pilih ",
                          type: AlertType.warning,
                          style: const AlertStyle(
                            animationType: AnimationType.grow,
                            animationDuration: Duration(milliseconds: 200),
                            backgroundColor: Color.fromARGB(255, 222, 255, 223),
                            titleStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            descStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          buttons: [
                            DialogButton(
                              onPressed: () => Navigator.pop(context),
                              color: const Color.fromARGB(255, 255, 0, 0),
                              child: const Text(
                                "IYA",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            DialogButton(
                              onPressed: () => Navigator.pop(context),
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(116, 116, 191, 1.0),
                                Color.fromRGBO(52, 138, 199, 1.0)
                              ]),
                              child: const Text(
                                "TIDAK",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            )
                          ],
                        ).show();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 140, 218, 142),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.logout,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            "Logout",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      height: 40,
                      thickness: 0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
