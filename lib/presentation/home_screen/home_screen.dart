import 'package:exchange_rate_calculator/presentation/home_screen/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = 'krw';

  String _getCurrencyUnit(String unit) {
    String result = '대한민국 원';
    switch (unit) {
      case 'usd':
        result = '미국 달러';
      case 'jpy':
        result = '일본 엔';
      case 'cny':
        result = '중국 위안';
      case 'eur':
        result = '유럽 유로';
    }

    return result;
  }

  @override
  void initState() {
    final viewModel = context.read<HomeViewModel>();
    viewModel.fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('환율 계산기'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Row(
                children: [
                  const Flexible(
                    child: TextField(
                      enabled: true,
                      decoration: InputDecoration(
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  DropdownButton(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_drop_down_sharp),
                      style: const TextStyle(color: Colors.black87),
                      onChanged: (String? value) {
                        dropdownValue = value!;
                        setState(() {});
                      },
                      items: viewModel.dropdownMenu.map((e) {
                        return DropdownMenuItem<String>(
                          value: e,
                          child: Text(_getCurrencyUnit(e)),
                        );
                      }).toList()
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}