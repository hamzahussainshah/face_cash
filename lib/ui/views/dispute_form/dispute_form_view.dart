import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'dispute_form_viewmodel.dart';

class DisputeFormView extends StackedView<DisputeFormViewModel> {
  const DisputeFormView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DisputeFormViewModel viewModel,
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
  DisputeFormViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DisputeFormViewModel();
}
