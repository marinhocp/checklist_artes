import 'package:flutter/material.dart';

class AdicionarArte extends StatelessWidget {
  const AdicionarArte({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 60, 62, 63),
        title: const Text('Adicionar Arte',
          style: TextStyle(color: Color.fromARGB(255, 220, 166, 104)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              autofocus: true,
              decoration: const InputDecoration(
                labelText: 'REQUERIMENTO',
                labelStyle: TextStyle(color: Colors.black54),
                fillColor: Colors.black,
                prefixIcon: Icon(Icons.circle),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && TextInputType != value.characters) ? 'Use somente números' : null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              autofocus: true,
              decoration: const InputDecoration(
                labelText: 'DESCRIÇÃO',
                labelStyle: TextStyle(color: Colors.black54),
                fillColor: Colors.black,
                prefixIcon: Icon(Icons.color_lens),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && TextInputType != value.characters) ? 'Use somente números' : null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
