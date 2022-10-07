import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                        ),
                        hintText: 'Pesquisar uma receita',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                        ),
                        prefixIcon: Container(
                          padding: const EdgeInsets.all(15),
                          width: 18,
                          child: Image.asset('assets/images/icons/search.png'),
                        )
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only (left: 10),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE58F65),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    width: 60,
                    child: Image.asset(
                    'assets/images/icons/search_2.png')
                  ),
                ],
              )
            ],
          ),
        );
  }
}