import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_observer.dart';
import 'portfolio_context.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const PortfolioApp());
}
