// ignore_for_file: file_names

import 'package:app_receitas/models/receitas.dart';

class ReceitaRepositorie{
  static List<Receita> listaReceitas = [
    Receita(nome:"Bolo",
      modoDePreparo:"Assado", 
      tempoDePreparo: "1 hora", 
      foto:'assets/images/receitas/bolo.jpg',
      data:"20/02/2022"),
    Receita(
      nome:"Feijoada",
      modoDePreparo:"Cozido", 
      tempoDePreparo:"2 horas",
       foto:'assets/images/receitas/feijoada.jpg',
       data:"05/01/2020"),
    Receita(
      nome:"Macarronada",
      modoDePreparo:"Cozido",
      tempoDePreparo: "1 hora", 
      foto:'assets/images/receitas/macarronada.jpg',
      data:"06/06/2022"),
    Receita(
      nome:"Pastel",
      modoDePreparo:"Frito", 
      tempoDePreparo:"30 minutos", 
      foto:'assets/images/receitas/pastel.jpg',
      data:"03/04/2021"),
    Receita(
      nome:"Pizza",
      modoDePreparo:"Assado",
      tempoDePreparo:"2 horas",
      foto:'assets/images/receitas/pizza.jpg',
      data:"02/12/2019"),
    Receita(
      nome:"Prato Feito",
      modoDePreparo:"Cozido",
      tempoDePreparo:"2 horas",
      foto:'assets/images/receitas/pratofeito.jpg',
      data:"02/11/2018"),
    Receita(
      nome:"Purê de Batatas",
      modoDePreparo:"Cozido",
      tempoDePreparo: "40 minutos",
      foto:'assets/images/receitas/pure.jpg',
      data:"02/12/2017"),
    Receita(
      nome:"Salada",
      modoDePreparo:"Cru", 
      tempoDePreparo:"15 minutos", 
      foto:'assets/images/receitas/salada.jpg',
      data:"05/08/2022"),
  ];
}