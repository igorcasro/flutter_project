import 'dart:io';

import 'package:app_receitas/components/add_new_recipe_page/back_button.dart';
import 'package:app_receitas/components/add_new_recipe_page/date_text_field.dart';
import 'package:app_receitas/components/add_new_recipe_page/ingredients_text_field.dart';
import 'package:app_receitas/components/add_new_recipe_page/preparation_text_field.dart';
import 'package:app_receitas/components/add_new_recipe_page/recipe_name_text_field.dart';
import 'package:app_receitas/components/public/send_button.dart';
import 'package:app_receitas/constants.dart';
import 'package:app_receitas/pages/preview_page.dart';
import 'package:app_receitas/widgets/anexo.dart';
import 'package:camera_camera/camera_camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddNewRecipePage extends StatefulWidget {
  const AddNewRecipePage({super.key});

  @override
  State<AddNewRecipePage> createState() => _AddNewRecipePageState();
}

class _AddNewRecipePageState extends State<AddNewRecipePage> {
  // ignore: unused_field
  File? image;
  final picker = ImagePicker();

  Future getFileFromGallery() async {
    final file = await picker.pickImage(source: ImageSource.gallery);

    if (file != null) {
      setState(
        () {
          () => image = File(file.path);
        },
      );
    }
  }

  showPreview(file) async {
    file = await Get.to(() => PreviewPage(file: file));

    if (file != null) {
      setState(() => image = file);
      Get.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
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
            const SizedBox(height: 5),
            const RecipeNameTextField(),
            const SizedBox(height: 5),
            Align(
              alignment: const FractionalOffset(0, 0),
              child: text('Data em que foi feita', 20),
            ),
            const SizedBox(height: 5),
            const DateTextField(),
            const SizedBox(height: 5),
            Align(
              alignment: const FractionalOffset(0, 0),
              child: text('Ingredientes', 20),
            ),
            const SizedBox(height: 5),
            const IngredientsTextField(),
            const SizedBox(height: 5),
            Align(
              alignment: const FractionalOffset(0, 0),
              child: text('Modo de preparo', 20),
            ),
            const SizedBox(height: 5),
            const PreparationTextField(),
            const SizedBox(height: 5),
            Align(
              alignment: const FractionalOffset(0, 0),
              child: text('Foto da receita', 20),
            ),
            const SizedBox(height: 5),
            if (image != null) Anexo(arquivo: image),
            Column(
              children: [
                ElevatedButton.icon(
                  onPressed: () => Get.to(
                    () => CameraCamera(
                      onFile: (file) => showPreview(file),
                    ),
                  ),
                  icon: const Icon(Icons.camera_alt),
                  label: const Padding(
                    padding: EdgeInsets.all(14.00),
                    child: Text('Tire uma foto'),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    elevation: 0.0,
                    textStyle: const TextStyle(fontSize: 18),
                    backgroundColor: primaryColor,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('ou'),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.attach_file),
                    onPressed: () => getFileFromGallery(),
                    label: const Text("Selecione um arquivo"),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: blackTextColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      elevation: 0.0,
                      textStyle: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
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
