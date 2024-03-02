import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widgets/custom_bottom_bar_widget.dart';
import 'providers/selected_page_provider.dart';
import '../home/presentation/pages/home_page.dart';
import '../home/presentation/pages/secondary_page.dart';

List<Widget> pages = const [
  MyHomePage(
    title: 'Home',
  ),
  MySecondaryPage(title: 'Secondary')
];

class Skeleton extends StatelessWidget {
  const Skeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedPage = Provider.of<SelectedPageProvider>(context).selectedPage;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(200, 231, 76, 60),
          centerTitle: true,
          title: const Text('CIF')),
      body: pages[selectedPage],
      bottomNavigationBar: const CustomBottomBarWidget(),
    );
  }
}
