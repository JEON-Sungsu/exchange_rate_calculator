import 'package:flutter/material.dart';

class ExchangeTextField extends StatefulWidget {
  String dropdownValue;
  final List<String> dropdownMenu;
  Function(String? value) onChanged;
  Function(String money) onTyping;
  TextEditingController controller;

  ExchangeTextField({
    super.key,
    required this.dropdownValue,
    required this.dropdownMenu,
    required this.onChanged,
    required this.onTyping,
    required this.controller,
  });

  @override
  State<ExchangeTextField> createState() => _ExchangeTextFieldState();
}

class _ExchangeTextFieldState extends State<ExchangeTextField> {
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
  Widget build(BuildContext context) {
    return Padding(
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
            Flexible(
              child: TextField(
                keyboardType: TextInputType.number,
                controller: widget.controller,
                onChanged: (value) {
                  if (value.isEmpty) {
                    widget.onTyping('-1');
                  } else {
                    widget.onTyping(value);
                  }
                },
                enabled: true,
                decoration: const InputDecoration(border: InputBorder.none),
              ),
            ),
            DropdownButton(
                dropdownColor: Colors.white,
                elevation: 0,
                value: widget.dropdownValue,
                icon: const Icon(Icons.arrow_drop_down_sharp),
                style: const TextStyle(color: Colors.black87),
                onChanged: (String? value) {
                  widget.onChanged(value);
                },
                items: widget.dropdownMenu.map((e) {
                  return DropdownMenuItem<String>(
                    value: e,
                    child: Text(_getCurrencyUnit(e)),
                  );
                }).toList()),
          ],
        ),
      ),
    );
  }
}
