import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  final searchText = ''.obs;
  final searchResults = <String>[].obs;

  // Replace this with your actual list of items in the app
  final List<String> allItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    // ... add more items
  ];

  void updateSearchText(String text) {
    searchText.value = text;

    // Simulate search logic based on the items in your app
    searchResults.assignAll(
      allItems
          .where((item) =>
          item.toLowerCase().contains(text.toLowerCase()))
          .toList(),
    );
  }
}

class SearchPage extends StatelessWidget {
  final SearchController searchController = Get.put(SearchController(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        title: Text('Search Page'),
      ),*/
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 35,bottom: 8,left: 8,right: 8),
          child: Column(
            children: [
              TextField(
                onChanged: searchController.updateSearchText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  labelText: 'Search',
                  hintText: 'Enter your search query',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(height: 16),
              Obx(() {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: searchController.searchResults.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(searchController.searchResults[index]),
                    );
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}