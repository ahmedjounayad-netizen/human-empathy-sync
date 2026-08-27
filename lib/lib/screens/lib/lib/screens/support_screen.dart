import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ডেভেলপারকে সমর্থন করুন'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'কফি হিরোস লিডারবোর্ড',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'যারা এই প্রজেক্টটিকে ভালোবেসে চা খাইয়েছেন:',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.person, color: Colors.amber),
                    title: Text('John Doe'),
                    trailing: Text('৩ কাপ চা ☕'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person, color: Colors.amber),
                    title: Text('Alex Smith'),
                    trailing: Text('১ কাপ চা ☕'),
                  ),
                ],
              ),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                // পেমেন্ট বা ডোনেশন লিংক ট্রিগার হবে
              },
              icon: const Icon(Icons.coffee),
              label: const Text('ডেভেলপারকে এক কাপ চা খাওয়ান ($১)'),
            ),
          ],
        ),
      ),
    );
  }
}
