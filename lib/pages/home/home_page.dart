import 'package:flutter/material.dart';
import 'package:flutter_challenge/pages/home/contact_detail_page.dart';
import 'package:flutter_challenge/pages/widgets/sliver_header.dart';
import 'package:flutter_challenge/providers/search_provider.dart';
import 'package:flutter_challenge/utils/contact_list.dart';
import 'package:flutter_challenge/utils/routes.dart';
import 'package:flutter_challenge/utils/size_config.dart';
import 'package:group_list_view/group_list_view.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static final GlobalKey<FormState> _key = GlobalKey<FormState>();

  Widget _buildItem(String text){
    return Card(
      elevation: 5,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
        leading: CircleAvatar(
          child: Text('${text.substring(0,2).toUpperCase()}',style: TextStyle(fontWeight: FontWeight.w600),),
        ),
        title: Text(text),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
        onTap: (){
          Navigator.push(context,Routes.contactDetail(contact: text));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: CustomScrollView(
            physics: BouncingScrollPhysics(),
            key: _key,
            slivers: [
              SliverAppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.contacts,color: Colors.blueGrey,),
                    SizedBox(width: 18,),
                    Text('Address Book',
                      style: TextStyle(fontSize: SizeConfig.textMultiplier * 3,
                        fontWeight: FontWeight.w800,
                        color: Colors.blueGrey,),
                    ),
                  ],
                ),
                backgroundColor:Colors.grey[50],
                expandedHeight: 70,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      //   gradient: LinearGradient(
                      //     colors: [
                      //       const Color(0xFF051937),
                      //       const Color(0xFFA8EB12),
                      //     ],
                      //     begin: const FractionalOffset(0.0, 0.0),
                      //     end: const FractionalOffset(1.0, 0.0),
                      //     stops: [0.0, 1.0],
                      //     tileMode: TileMode.repeated
                      //
                      // )
                    ),
                  ),
                ),
              ),
              SliverHeader(),
              SliverToBoxAdapter(
                child: Container(
                  height: SizeConfig.heightMultiplier * 100 - 80,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Consumer<SearchProvider>(
                    builder: (context,value,child){
                      return GroupListView(
                        physics: BouncingScrollPhysics(),
                        sectionsCount: elements.keys.toList().length,
                        countOfItemInSection: (int section) {
                          return elements.values.toList()[section].length;
                        },
                        itemBuilder: (BuildContext context, IndexPath index) {
                          return _buildItem(elements.values.toList()[index.section][index.index]);
                        },
                        groupHeaderBuilder: (BuildContext context, int section) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                            child: Text(
                              elements.keys.toList()[section],
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(height: 10),
                        sectionSeparatorBuilder: (context, section) => Divider(),
                      );
                    },
                  ),
                ),
              )

            ],
          ),
        )
    );
  }
}

