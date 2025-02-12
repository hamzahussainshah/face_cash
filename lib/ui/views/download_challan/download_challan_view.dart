import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'download_challan_viewmodel.dart';

class DownloadChallanView extends StackedView<DownloadChallanViewModel> {
  const DownloadChallanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DownloadChallanViewModel viewModel,
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
  DownloadChallanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DownloadChallanViewModel();
}
