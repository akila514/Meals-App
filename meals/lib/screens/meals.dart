import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.mealsList});
  final String title;
  final List<Meal> mealsList;

  List<Meal> get selectedList {
    List<Meal> selectedList =
        mealsList.where((meal) => meal.categories.contains(title)).toList();
    return selectedList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetsList = selectedList
        .map((meal) => Container(
              padding: const EdgeInsets.symmetric(vertical: 24),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10)),
              child: Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Text(
                        meal.title,
                        style: const TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: Image.network(
                        meal.imageUrl,
                        loadingBuilder: (context, child, loadingProgress) =>
                            loadingProgress == null
                                ? child
                                : LinearProgressIndicator(
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.1),
                                  ),
                      ),
                    ),
                  ],
                ),
              ),
            ))
        .toList();
    var content = selectedList.isEmpty
        ? const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Uh oh nothing available yet...',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          )
        : GridView(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            children: [for (Widget widget in widgetsList) widget],
          );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
