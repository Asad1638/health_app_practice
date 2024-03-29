
import 'package:flutter/material.dart';
import 'package:health_app_2/open_test/test_lists.dart';

class OpenTestItems extends StatelessWidget {
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
        OpenTestListTile(
          title: 'Test 1',
          subtitle: 'Test description 1',
          leadingImage: 'assets/images/blood_test.jpeg',
          trailingImage: 'assets/images/setho_scope.jpeg',
          onTap: () {
            print('Test 1 tapped');
          },
        ),
        OpenTestListTile(
          title: 'Test 2',
          subtitle: 'Test description 2',
          leadingImage: 'assets/images/blood_test.jpeg',
          trailingImage: 'assets/images/setho_scope.jpeg',
          onTap: () {
            print('Test 2 tapped');
          },
        ),
        OpenTestListTile(
          title: 'Test 3',
          subtitle: 'Test description 3',
          leadingImage: 'assets/images/blood_test.jpeg',
          trailingImage: 'assets/images/setho_scope.jpeg',
          onTap: () {
            print('Test 3 tapped');
          },
        ),
        OpenTestListTile(
          title: 'Test 4',
          subtitle: 'Test description 4',
          leadingImage: 'assets/images/blood_test.jpeg',
          trailingImage: 'assets/images/setho_scope.jpeg',
          onTap: () {
            print('Test 4 tapped');
          },
        ),
        OpenTestListTile(
          title: 'Test 5',
          subtitle: 'Test description 5',
          leadingImage: 'assets/images/blood_test.jpeg',
          trailingImage: 'assets/images/setho_scope.jpeg',
          onTap: () {
            print('Test 5 tapped');
          },
        ),
        OpenTestListTile(
          title: 'Test 6',
          subtitle: 'Test description 6',
          leadingImage: 'assets/images/blood_test.jpeg',
          trailingImage: 'assets/images/setho_scope.jpeg',
          onTap: () {
            print('Test 6 tapped');
          },
        ),
      ],
    );
  }
}
