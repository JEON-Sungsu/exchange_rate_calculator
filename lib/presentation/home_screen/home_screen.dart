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
  num inputMoney = 0;

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
    Future.microtask(() {
      final viewModel = context.read<HomeViewModel>();
      viewModel.baseController.dispose();
      viewModel.resultController.dispose();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('환율 계산기'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text('환율 정보 갱신 시간 ${viewModel.exchangeRateModel.lastUpdated}'),
          ),
          ExchangeTextField(
            controller: viewModel.baseController,
            dropdownValue: baseCurrency,
            dropdownMenu: viewModel.dropdownMenu,
            onChanged: (String? value) {
              viewModel.baseController.text = '';
              viewModel.resultController.text = '';
              setState(() {
                baseCurrency = value ?? 'krw';
              });
            },
            onTyping: (String money) {
              inputMoney = num.parse(money);
              viewModel.onSearch(baseCurrency, resultCurrency, inputMoney, null);
            },
          ),
          ExchangeTextField(
            controller: viewModel.resultController,
            dropdownValue: resultCurrency,
            dropdownMenu: viewModel.dropdownMenu,
            onChanged: (String? value) {
              viewModel.baseController.text = '';
              viewModel.resultController.text = '';
              setState(() {
                resultCurrency = value ?? 'usd';
              });
            },
            onTyping: (String money) {
              inputMoney = num.parse(money);
              viewModel.onSearch(resultCurrency, baseCurrency, null, inputMoney);
            },
          ),
        ],
      ),
    );
  }
}
