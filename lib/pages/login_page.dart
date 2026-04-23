import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _levelController = TextEditingController();
  final TextEditingController _rankController = TextEditingController();
  final TextEditingController _jobController = TextEditingController();
 
 

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Login'),
              TextFormField(
                controller: _namaController,
                decoration: InputDecoration(
                  hint: Text("Input Nama"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 47, 176, 240), width:2)
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 245, 25, 9), width:2)
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 230, 35, 9), width:2)
                  ),
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return "nama harus di isi" ;
                    }
                    return null;
                  },
              ),
             TextFormField(
                controller: _levelController,
                decoration: InputDecoration(
                  hint: Text("Input level"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 47, 176, 240), width:2)
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 245, 25, 9), width:2)
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 230, 35, 9), width:2)
                  ),
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return "nama harus di isi" ;
                    }
                    return null;
                  },
              ),

             TextFormField(
                controller: _rankController,
                decoration: InputDecoration(
                  hint: Text("Input rank"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 47, 176, 240), width:2)
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 245, 25, 9), width:2)
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 230, 35, 9), width:2)
                  ),
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return "nama harus di isi" ;
                    }
                    return null;
                  },
              ), 

             TextFormField(
                controller: _jobController,
                decoration: InputDecoration(
                  hint: Text("Input job"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 47, 176, 240), width:2)
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 245, 25, 9), width:2)
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color.fromARGB(255, 230, 35, 9), width:2)
                  ),
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return "nama harus di isi" ;
                    }
                    return null;
                  },
              ), 

              SizedBox(
                child: ElevatedButton(onPressed: () {
                  if (_formKey.currentState!.validate()){
                    Navigator.pushReplacementNamed(context, "/", arguments: {
                      "name":_namaController.text
                    });
                  }
                }, child: Text("lOGIN")),
              )
            ],
          ),
        ),
      ),
    );
  }
}