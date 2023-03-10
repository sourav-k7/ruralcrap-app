import 'package:flutter/material.dart';
import 'package:ruralclap_app/constant/theme_color.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Create Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Name'),
                TextFormField(),
                const SizedBox(
                  height: 10,
                ),
                const Text('Language'),
                TextFormField(),
                const SizedBox(
                  height: 10,
                ),
                const Text('Location'),
                TextFormField(),
                const SizedBox(
                  height: 10,
                ),
                const Text('Contact No.'),
                TextFormField(),
                const SizedBox(
                  height: 10,
                ),
                const Text('Email Id'),
                TextFormField(),
                const SizedBox(
                  height: 10,
                ),
                const Text('Rating'),
                TextFormField(),
                const SizedBox(
                  height: 10,
                ),
                const Text('Gender'),
                TextFormField(),
                const SizedBox(
                  height: 10,
                ),
                const Text('Skills'),
                TextFormField(),
                const SizedBox(
                  height: 10,
                ),
                const Text('Description'),
                TextFormField(),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: const Text('Submit'),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}