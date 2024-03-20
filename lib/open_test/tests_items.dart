
import 'package:flutter/material.dart';
import 'package:health_app_2/open_test/test_lists.dart';

class TestList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20),
      const    Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'List of Open Tests:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 10),
        ListTileWidget(
          title: 'Test 1',
          subtitle: 'Test description 1',
          leadingImage: 'assets/images/blood_test.jpeg',
          trailingImage: 'assets/images/setho_scope.jpeg',
          onTap: () {
            print('Test 1 tapped');
          },
        ),
        ListTileWidget(
          title: 'Test 2',
          subtitle: 'Test description 2',
          leadingImage: 'assets/leading_image_2.jpg',
          trailingImage: 'assets/trailing_image_2.jpg',
          onTap: () {
            print('Test 2 tapped');
          },
        ),
        ListTileWidget(
          title: 'Test 3',
          subtitle: 'Test description 3',
          leadingImage: 'assets/leading_image_3.jpg',
          trailingImage: 'assets/trailing_image_3.jpg',
          onTap: () {
            print('Test 3 tapped');
          },
        ),
        ListTileWidget(
          title: 'Test 4',
          subtitle: 'Test description 4',
          leadingImage: 'assets/leading_image_4.jpg',
          trailingImage: 'assets/trailing_image_4.jpg',
          onTap: () {
            print('Test 4 tapped');
          },
        ),
        ListTileWidget(
          title: 'Test 5',
          subtitle: 'Test description 5',
          leadingImage: 'assets/leading_image_5.jpg',
          trailingImage: 'assets/trailing_image_5.jpg',
          onTap: () {
            print('Test 5 tapped');
          },
        ),
        ListTileWidget(
          title: 'Test 6',
          subtitle: 'Test description 6',
          leadingImage: 'assets/leading_image_6.jpg',
          trailingImage: 'assets/trailing_image_6.jpg',
          onTap: () {
            print('Test 6 tapped');
          },
        ),
      ],
    );
  }
}
