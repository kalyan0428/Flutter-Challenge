import 'package:flutter/material.dart';
import 'package:flutter_challenge/providers/search_provider.dart';
import 'package:flutter_challenge/utils/size_config.dart';
import 'package:provider/provider.dart';

class MySearchBar extends StatefulWidget {
  @override
  _MySearchBarState createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(color: Colors.grey,blurRadius: 2)
          ]
      ),
      child: Consumer<SearchProvider>(
        builder: (context,value,child){
          return TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon:Icon(Icons.search,color:Colors.blue,) ,
              suffix:GestureDetector(
                  onTap: (){
                    value.onSearchTextChanged('');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Icon(Icons.clear,size: SizeConfig.imageSizeMultiplier * 5,),
                  )),
            ),
            controller: value.controller,
            cursorColor: Colors.black,
            onFieldSubmitted:(val){

            },
            onChanged: (val){
              value.onSearchTextChanged(val.toLowerCase());
            },
          );
        },
      ),
    );
  }
}
