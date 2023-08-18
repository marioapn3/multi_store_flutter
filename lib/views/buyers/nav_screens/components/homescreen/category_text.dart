import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  CategoryText({super.key});

  final List<String> _categoryText = [
    'food',
    'vegetable',
    'egg',
    'tea',
    'food',
    'vegetable',
    'egg',
    'tea',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Category',
            style: TextStyle(fontSize: 19),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            height: 40,
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        child: ActionChip(
                          backgroundColor: Colors.yellow.shade900,
                          onPressed: () {},
                          label: Text(
                            _categoryText[index],
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: _categoryText.length,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
