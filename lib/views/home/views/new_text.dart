import 'package:flutter/material.dart';
import 'package:textify/views/home/views/new_text_controller.dart';

class NewTextMainView extends StatefulWidget {
  @override
  _NewTextMainViewState createState() => _NewTextMainViewState();
}

class _NewTextMainViewState extends State<NewTextMainView> {
  final NewTextController _controller = NewTextController();

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("New Text"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Form(
          key: _controller.formState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                controller: _controller.titleController,
                decoration: InputDecoration(
                  labelText: "Title"
                ),
              ),
              TextFormField(
                controller: _controller.descriptionController,
                decoration: InputDecoration(
                  labelText: "Description"
                ),
              ),
              TextFormField(
                autofocus: true,
                controller: _controller.contentController,
                maxLines: 10,
                decoration: InputDecoration(
                  labelText: "Content"
                ),
              ),
              FlatButton(
                color: _theme.accentColor,
                child: Text("Save", style: TextStyle(color: Colors.white),),
                onPressed: () async {
                  
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}