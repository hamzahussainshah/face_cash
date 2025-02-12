import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'history_screen_viewmodel.dart';

class HistoryScreenView extends StackedView<HistoryScreenViewModel> {
  const HistoryScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HistoryScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  HistoryScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HistoryScreenViewModel();
}
