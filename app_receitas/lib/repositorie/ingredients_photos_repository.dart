// ignore_for_file: file_names
import 'package:app_receitas/models/ingredientes.dart';
import '../models/ingredients_photos.dart';

class IngredientRepository{
  static List<IngredientePhotos> ingredientsPhotosList = [
    IngredientePhotos(ingrediente:Ingrediente(nome: "Maçã"), foto: 'assets/images/ingredients/maca.jpg'),
    IngredientePhotos(ingrediente:Ingrediente(nome: "Ovo"), foto: 'assets/images/ingredients/ovo.jpg'),
    IngredientePhotos(ingrediente:Ingrediente(nome: "Farinha de trigo"), foto: 'assets/images/ingredients/farinha-de-trigo.jpg'),
    IngredientePhotos(ingrediente:Ingrediente(nome: "Batata"), foto: 'assets/images/ingredients/batata.jpg'),
    IngredientePhotos(ingrediente:Ingrediente(nome: "Cebola"), foto: 'assets/images/ingredients/cebola.jpg'),
    IngredientePhotos(ingrediente:Ingrediente(nome: "Manteiga"), foto: 'assets/images/ingredients/manteiga.jpg'),
    IngredientePhotos(ingrediente:Ingrediente(nome: "Óleo"), foto: 'assets/images/ingredients/óleo.jpg'),
    IngredientePhotos(ingrediente:Ingrediente(nome: "Alho"), foto: 'assets/images/ingredients/alho.jpg'),
  ];
}