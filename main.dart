import 'package:flutter/material.dart';

void main() => runApp(const RoseApp());

class RoseApp extends StatelessWidget {
  const RoseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ROSE AI',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF100B20),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF4FB8),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const RoseHome(),
    );
  }
}

class RoseHome extends StatefulWidget {
  const RoseHome({super.key});

  @override
  State<RoseHome> createState() => _RoseHomeState();
}

class _RoseHomeState extends State<RoseHome> {
  final controller = TextEditingController();
  final messages = <String>[
    'হ্যালো! আমি রোজ। আজ তোমার সঙ্গে কী নিয়ে কথা বলব? ❤️',
  ];
  String look = 'Pink Look';

  void send() {
    final value = controller.text.trim();
    if (value.isEmpty) return;
    setState(() {
      messages.add('তুমি: $value');
      messages.add('রোজ: তোমার কথা শুনছি। 💗 (ডেমো উত্তর)');
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🌹 ROSE AI'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(child: Text('● Online', style: TextStyle(color: Colors.greenAccent))),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Container(
                    height: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF42204F), Color(0xFF17112C)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      border: Border.all(color: const Color(0xFFFF63C5), width: 1.2),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.face_3_rounded, size: 112, color: Color(0xFFFF8BD5)),
                        SizedBox(height: 12),
                        Text('ROSE', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                        Text('3D চরিত্র এখানে যুক্ত হবে', style: TextStyle(color: Colors.white70)),
                        SizedBox(height: 8),
                        Text('Full-body avatar • Lip sync • Gestures',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12, color: Colors.white54)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text('বর্তমান লুক: $look', style: const TextStyle(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  Wrap(spacing: 8, children: [
                    for (final item in ['Pink Look', 'Black Look', 'Golden Look'])
                      ChoiceChip(
                        label: Text(item),
                        selected: look == item,
                        onSelected: (_) => setState(() => look = item),
                      ),
                  ]),
                  OutlinedButton.icon(
                    onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('কাস্টম পোশাক আপলোড ফিচার পরের ধাপে যুক্ত হবে।')),
                    ),
                    icon: const Icon(Icons.add_photo_alternate_outlined),
                    label: const Text('পোশাকের ছবি দিন'),
                  ),
                  const SizedBox(height: 12),
                  const Text('কথোপকথন', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  for (final message in messages)
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF281B3D),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Text(message),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
              child: Row(children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    onSubmitted: (_) => send(),
                    decoration: const InputDecoration(
                      hintText: 'রোজকে মেসেজ লিখুন...',
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton.filled(
                  onPressed: send,
                  icon: const Icon(Icons.send_rounded),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
