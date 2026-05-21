import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_notes_state.dart';
import 'package:note_app/widget/addNoteForm.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class addNoteBottomSheet extends StatelessWidget {
  const addNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),

      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesError) {
              print('Erorrrs ${state.message}');
            }
            if (state is AddNotesLoaded) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNotesLoading ? true : false,
              child: Addnoteform(),
            );
          },
        ),
      ),
    );
  }
}
