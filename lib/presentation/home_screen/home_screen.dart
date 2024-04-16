import 'package:exchange_rate_calculator/presentation/home_screen/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('환율 계산기'),
      ),
      body: Column(
        children: [
          TextField(
            onSubmitted: (value) {
              final query = value;
              viewModel.onSearch(query);
              text = viewModel.state.lastUpdated;
            },
          ),
          Text(text)
        ],
      ),
    );
  }
}
