import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login Page",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print("Form submitted successfully!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Color(0xFF2F4F4F),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name Field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),

                // Username Field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your username";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),

                // Email Field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your email";
                    }
                    String pattern =
                        r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b';
                    RegExp regex = RegExp(pattern);
                    if (!regex.hasMatch(value)) {
                      return "Please enter a valid email";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),

                // Password Field
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your password";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),

                // Phone Number Field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your phone number";
                    }
                    String pattern = r'^[0-9]{10}$';
                    RegExp regex = RegExp(pattern);
                    if (!regex.hasMatch(value)) {
                      return "Please enter a valid 10-digit phone number";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),

                // Submit Button
                Container(
                  height: 50.0,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _submitForm,
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFCC5500),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
