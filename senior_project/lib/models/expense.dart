import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/material.dart';

class Expense {
  final double amount;
  final DateTime time;

  Expense({required this.amount, required this.time});
}
