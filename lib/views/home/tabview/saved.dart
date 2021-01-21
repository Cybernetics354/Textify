import 'package:flutter/material.dart';
import 'package:textify/services/blocs/textlist_bloc/textlist_bloc.dart';
import 'package:textify_core/textify_core.dart';

class SavedViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<TextModel>>(
      stream: TextListBloc.instance.valueStream,
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting) {
          TextListBloc.instance.getAllValue();
          return Center(child: CircularProgressIndicator());
        }

        final _data = snapshot.data;

        if(_data.length > 0) {
          return Container(
            child: ListView.builder(
              itemCount: _data.length,
              itemBuilder: (context, index) {
                final _cindex = _data[index];
                return ListTile(
                  title: Text(_cindex.title),
                  subtitle: Text(_cindex.description),
                  onTap: () {
                    
                  },
                );
              },
            ),
          );
        }

        return Center(
          child: Text("Masih kosong")
        );
      }
    );
  }
}