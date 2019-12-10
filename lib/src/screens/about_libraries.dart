import 'package:flutter/material.dart';
import '../blocs/about_provider.dart';
import '../models/item_library_model.dart';
import '../widgets/item_library.dart';

class AboutLibraries extends StatelessWidget {

    Widget build(BuildContext context) {

        final AboutBloc bloc = AboutProvider.of(context);
        bloc.createListLibrary();

        return Scaffold(
            body: Center(
                child: buildListLibrary(bloc)
            ),
        );
    }

    Widget buildListLibrary(AboutBloc bloc) {
        List<ItemLibraryModel> listItemLibraryModel = bloc.createListLibrary();
        return ListView.builder(
            itemCount: listItemLibraryModel.length,
            itemBuilder: (context, index) {
                return ItemLibrary(itemLibraryModel: listItemLibraryModel[index]);
            }
        );
    }

}
