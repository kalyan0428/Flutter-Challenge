import 'package:flutter/material.dart';
import 'package:flutter_challenge/utils/size_config.dart';

class ContactDetailPage extends StatefulWidget {
  final contact;
  ContactDetailPage({this.contact});
  @override
  _ContactDetailPageState createState() => _ContactDetailPageState();
}

class _ContactDetailPageState extends State<ContactDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Contact Details'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${widget.contact}',style: TextStyle(fontSize: SizeConfig.textMultiplier * 3,fontWeight: FontWeight.w600),),
              SizedBox(height: 8,),
              Divider(),
              SizedBox(height: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description',style: TextStyle(fontWeight: FontWeight.w600,fontSize: SizeConfig.textMultiplier * 2),),
                  SizedBox(height: 10,),
                  Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
