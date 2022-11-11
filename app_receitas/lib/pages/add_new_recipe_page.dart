import 'dart:io';

import 'package:app_receitas/components/add_new_recipe_page/back_button.dart';
import 'package:app_receitas/components/add_new_recipe_page/date_text_field.dart';
import 'package:app_receitas/components/add_new_recipe_page/recipe_name_text_field.dart';
import 'package:app_receitas/components/public/send_button.dart';
import 'package:app_receitas/constants.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddNewRecipePage extends StatefulWidget {
  const AddNewRecipePage({super.key});

  @override
  State<AddNewRecipePage> createState() => _AddNewRecipePageState();
}

class _AddNewRecipePageState extends State<AddNewRecipePage> {
  // ignore: unused_field
  File? _image;
  PickedFile? _pickedFile;
  final _picker = ImagePicker();

  Future<void> _pickImage() async {
    // ignore: deprecated_member_use
    _pickedFile = await _picker.getImage(source: ImageSource.gallery);
    if (_pickedFile != null) {
      setState(() {
        _image = File(_pickedFile!.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: whiteBackgroundColor,
      appBar: AppBar(
        leading: const AppBarBackButton(),
        backgroundColor: whiteBackgroundColor,
        elevation: 0,
        toolbarHeight: 50,
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: const FractionalOffset(0, 0),
              child: text('Adicionar', 40),
            ),
            Align(
              alignment: const FractionalOffset(0, 0),
              child: text('receita feita', 40),
            ),
            const SizedBox(height: 5),
            Align(
              alignment: const FractionalOffset(0, 0),
              child: text('Nome da receita', 20),
            ),
            const SizedBox(height: 3),
            const RecipeNameTextField(),
            const SizedBox(height: 5),
            Align(
              alignment: const FractionalOffset(0, 0),
              child: text('Data em que foi feita', 20),
            ),
            const SizedBox(height: 3),
            const DateTextField(),
            const SizedBox(height: 5),
            Align(
              alignment: const FractionalOffset(0, 0),
              child: text('Foto da receita', 20),
            ),
            const SizedBox(height: 3),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: size.width * 0.9,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          _pickedFile == null
                              ? const Icon(
                                  Icons.file_upload_outlined,
                                  size: 60,
                                  color: Colors.grey,
                                )
                              : const Text(''),
                          _pickedFile != null
                              ? Image.file(
                                  File(_pickedFile!.path),
                                  width: size.width * 0.9,
                                  height: 110,
                                  fit: BoxFit.fill,
                                )
                              : GestureDetector(
                                  child: const Text(
                                    'Selecione imagem',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  onTap: () => _pickImage(),
                                ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SendButton(
              onPressed: () {},
              text: 'Adicionar',
            ),
          ],
        ),
      ),
    );
  }
}
