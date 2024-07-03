import 'package:flutter/material.dart';

import 'category_grid_tile.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: const [
          CategoryGridTile(
            title: 'Books',
            categoriesIcon: Icons.bookmark,
            userImage:
                'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
            taskCount: 5,
            goal: 24,
            progress: 9,
          ),
          CategoryGridTile(
            title: 'Emails',
            categoriesIcon: Icons.email,
            userImage:
                'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
            taskCount: 2,
            goal: 18,
            progress: 4,
          ),
          CategoryGridTile(
            title: 'Work',
            categoriesIcon: Icons.check,
            userImage: 'https://picsum.photos/200/300?grayscale',
            taskCount: 9,
            goal: 15,
            progress: 3,
          ),
          CategoryGridTile(
            title: 'Urgent',
            categoriesIcon: Icons.notifications,
            userImage: 'https://picsum.photos/200/300/?blur=2',
            taskCount: 5,
            goal: 24,
            progress: 9,
          ),
        ],
      ),
    );
  }
}
