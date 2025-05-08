import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final int likes;
  final int number;
  final bool isVegan;

  const RecipeCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.likes,
    required this.number,
    required this.isVegan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation:1,
      color: Colors.white,
      child: Row(
        children: [
          // Image section
          ClipRRect(
            child: Image.network(
              imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),

          // Text and info section
                    Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      // Likes icon and count below
                      Column(
                        children: [
                          Icon(Icons.favorite, size: 20, color: Colors.red,),
                          Text(likes.toString(), style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      const SizedBox(width: 12),

                      // Number icon and count below
                      Column(
                        children: [
                          Icon(Icons.access_time, size: 20, color: Colors.amber),
                          Text('$number', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      const SizedBox(width: 12),

                      // Vegan icon stacked over text
                      Column(
                        children: [
                          Icon(Icons.eco, size: 20, color: isVegan ? Colors.green : Colors.black54),
                          Text('Vegan', style: TextStyle(fontSize: 10, color: isVegan ? Colors.green : Colors.black54)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
