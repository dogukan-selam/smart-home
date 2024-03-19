import 'package:flutter/material.dart';
import 'package:smart_home/feature/feed/view/widgets/categories_grid_view.dart';

import '../../../core/widgets/buttons/base_elevated_button.dart';
import 'widgets/daily_progress_widget.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Welcome to \nSmartHome, Doğukan',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: BaseElevatedButton(
                      onPressed: () {},
                      text: 'Overview',
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: BaseElevatedButton(
                      onPressed: () {},
                      textColor: Colors.black,
                      text: 'Productity',
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const DailyProgressWidget(progress: 40),
          const Padding(
            padding: EdgeInsets.only(top: 16, left: 18, bottom: 8),
            child: Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const CategoriesGridView()
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Padding(
        padding: EdgeInsets.only(left: 4),
        child: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
      ),
      centerTitle: false,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
