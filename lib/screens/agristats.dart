import 'package:flutter/material.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});
  @override
  State<StatsPage> createState() => StatsPageState();

}
class StatsPageState extends State<StatsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Statistics & Insight'),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),

    );
  }
}
