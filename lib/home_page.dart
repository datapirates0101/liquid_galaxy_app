import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/3.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: const Image(
                  image: AssetImage('assets/images/logo.jpeg'),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const CustomButtom(
                text: "Button 1",
                color: Colors.blue,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
               const CustomButtom(
                text: "Button 2",
                color: Colors.red,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
                CustomButtom(
                text: "Button 3",
                color: Colors.yellow[700],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
               const CustomButtom(
                text: "Button 4",
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  final String text;
  final Color? color;
  const CustomButtom({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
