import 'package:exchange_rate_calculator/presentation/home_screen/component/exchange_textfield.dart';
import 'package:exchange_rate_calculator/presentation/home_screen/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String baseCurrency = 'krw';
  String resultCurrency = 'usd';
  TextEditingController _baseController = TextEditingController();
  TextEditingController _resultController = TextEditingController();
  String converted = '';
  final _textNotifier = ValueNotifier<String>('');

  @override
  void initState() {
    Future.microtask(() {
      final viewModel = context.read<HomeViewModel>();
      viewModel.fetchData();
    });
    super.initState();
  }

  @override
  void dispose() {
    _baseController.dispose();
    _resultController.dispose();
    super.dispose();
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
          ExchangeTextField(
            controller: _baseController,
            dropdownValue: baseCurrency,
            dropdownMenu: viewModel.dropdownMenu,
            onChanged: (String? value) {
              baseCurrency = value ?? '';
            },
            onTyping: (String money) {
              final numMoney = num.parse(money);
              viewModel.onSearch(baseCurrency, resultCurrency, numMoney, null);
              setState(() {
                _resultController.text = viewModel.convertedMoney;
              });
            },
          ),
          ExchangeTextField(
            controller: _resultController,
            dropdownValue: resultCurrency,
            dropdownMenu: viewModel.dropdownMenu,
            onChanged: (String? value) {
              setState(() {
                resultCurrency = value ?? '';
              });
            },
            onTyping: (String money) {},
          ),
        ],
      ),
    );
  }
}
