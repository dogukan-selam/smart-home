import 'package:flutter/material.dart';

import 'category_grid_tile.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.5,
      child: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: const [
          CategoryGridTile(title: 'Books'),
          CategoryGridTile(title: 'Emails'),
          CategoryGridTile(title: 'Work'),
          CategoryGridTile(title: 'Urgent'),

        ],
      ),
    );
  }
}
