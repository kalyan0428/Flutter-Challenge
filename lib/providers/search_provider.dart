import 'package:flutter/material.dart';
import 'package:flutter_challenge/utils/contact_list.dart';
import 'package:provider/provider.dart';

class SearchProvider extends ChangeNotifier {

  SearchProvider();

  init()async{
    filterData(contacts);
    notifyListeners();
  }

  TextEditingController _controller = TextEditingController();
  List<String> _searchResult  = [];

  get controller => _controller;

  onSearchTextChanged(String text) async {
    _searchResult.clear();

    if (text.isEmpty) {
      _controller.clear();
      filterData(contacts);
      notifyListeners();
      return;
    }
    contacts.forEach((word) {
      if (word.toLowerCase().contains(text))
        _searchResult.add(word);
    });

    filterData(_searchResult);
    notifyListeners();
  }


}