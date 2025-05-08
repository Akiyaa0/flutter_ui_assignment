
import 'package:flutter/material.dart';
import 'package:flutter_ui_assignment/widgets/recipe_card.dart';


class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: const [
        RecipeCard(
          title: 'Sweet Potato and Black Bean...',
          description: 'This recipe uses fresh ingredients like tomato, cilantro, corn and black beans. Stuffed into sweet potatoes and topped with an easy guacamole. Then drizzled with a citrusy vegan sour cream. Serve as a stand alone main or side dish.',
          imageUrl: 'https://www.twospoons.ca/wp-content/uploads/2020/03/mexican-stuffed-sweet-potatoes-with-black-beans-vegan-gluten-free-easy-recipe-13.jpg',
          likes: 10748,
          number: 40,
          isVegan: true,
        ),
        RecipeCard(
          title: 'Spinach Pesto Quinoa Bowl',
          description: 'This pesto quinoa power bowl can be enjoyed for a lunch or a light dinner. It features quinoa, pesto, sun dried tomatoes, sunflower seeds, cooked spinach, avocado and a soft-boiled egg. Nourishing, but not too filing, it’s a great vegetarian meal!',
          imageUrl: 'https://i0.wp.com/dashofhoney.ca/wp-content/uploads/2021/03/PestoQuinoa3.jpg?resize=683%2C1024&ssl=1',
          likes: 3045,
          number: 30,
          isVegan: true,
        ),
        RecipeCard(
          title: 'Maple Glazed Salmon',
          description: 'This Easy One Pan Maple Glazed Salmon is the perfect main dish for salmon lovers! Juicy salmon fillets caramelized in an easy maple glaze, on the table in under 20 minutes!  ',
          imageUrl: 'https://thebusybaker.ca/wp-content/uploads/2019/01/maple-glazed-salmon-fb-ig-2.jpg',
          likes: 11827,
          number: 20,
          isVegan: false,
        ),
      ],
    );
  }
}
