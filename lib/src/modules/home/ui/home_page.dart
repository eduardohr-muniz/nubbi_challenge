import 'package:flutter/material.dart';
import 'package:nubbi_challenge/src/core/helpers/routes.dart';
import 'package:nubbi_challenge/src/modules/home/ui/components/button_select.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nubbi Challenge'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: const DecorationImage(image: AssetImage("assets/images/logo.jpg")),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonSelect(label: "Harshad", index: "1", route: Routes.harshad.route),
                    ButtonSelect(label: "Seconds", index: "2", route: Routes.seconds.route),
                    ButtonSelect(label: "Rail Fence Cipher", index: "3", route: Routes.railFenceCipher.route),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
