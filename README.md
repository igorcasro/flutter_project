
![Logo](https://github.com/igorcasro/flutter_project/blob/main/app_receitas/assets/Fridgey_page-0001.jpg)

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Figma](https://img.shields.io/badge/Figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white)
![Git](https://img.shields.io/badge/GIT-E44C30?style=for-the-badge&logo=git&logoColor=white)
![Github](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)
# Fridgey

Cansado de chegar a hora do almoço e não saber o que cozinhar? Ou de deixar um ingrediente guardado por tanto tempo que ele chega a estragar? Fridgey chegou para resolver os seus problemas!
Visando facilitar a sua vida na hora de decidir o que cozinhar, criamos esse aplicativo simples e intuitivo. Chega mais!

## O que é o Fridgey?
Fridgey é um aplicativo mobile programado na linguagem Flutter com o objetivo de receber ingredientes e retornar receitas. Ele foi desenvolvido por três alunos da Universidade Tecnológica Federal do Paraná durante a disciplina de Desenvolvimento de Dispositivos Móveis, ministrada pelo professor Diego XXX.

## Como utilizar
O aplicativo possui cinco telas básicas de navegação, sendo elas:
- Início;
- Achar receitas;
- Minha geladeira;
- Minhas receitas;
- Meu perfil.

### Início
A tela de **Início** é uma tela simples que mostra as receitas em alta e as receitas feitas recentemente por você.
Se clicar em uma receita, seja das em alta ou das recentes, você é levado até a página de como fazê-la.

### Achar receitas
Na tela de **Achar receitas** você poderá ver as receitas disponíveis para serem feitas com aquilo que você possui na geladeira. Se sua geladeira estiver vazia, aparecerá apenas um aviso dizendo que não existem receitas disponíveis. Existe também, nessa tela, um campo de busca para facilitar a pesquisa das receitas.
Ao clicar em uma delas, você é levado à página de como fazê-la.

### Minha geladeira
Na tela de **Minha geladeira**, você pode pesquisar e adicionar os ingredientes que possui em sua geladeira da vida real. Ao adicionar um alimento, você pode clicar nos símbolos de + ou - para adicionar ou remover unidades deste.

### Minhas receitas
Aqui serão mostradas as receitas que você já realizou. Se não tiver feito nenhuma, você pode adicionar uma nova receita feita clicando no botão **Adicionar receita feita**. Ao clicar no botão, você será direcionado a uma tela para inserir as informações da receita que realizou.

### Meu perfil
O perfil é bem simples e possui as informações de foto, nome, cidade e e-mail da pessoa *logada* no aplicativo. Além disso, existem algumas opções como **Configurações**, **Recomendar** a um amigo e **Sair do aplicativo**.

## Documentação
O aplicativo foi desenvolvido utilizando o *Flutter*, um kit de desenvolvimento de interface de usuário, e a linguagem de programação *Dart*. Os membros da equipe desenvolvedora utilizaram o editor de código *Visual Studio Code* para a programação e o *Git* e *Github* para o versionamento do projeto.

### Organização do código
Para organizar o código, pensamos em fazer a separação em *Components*, *Models*, *Pages* e *Repositories*. A pasta *Components* possui os Widgets de cada página separados em pastas. Os widgets que são utilizados repetidamente durante o código ficam na pasta *public*, para evitar código repetido.

```shell
lib
├───components
│   ├───add_new_recipe_page
│   ├───find_recipes_page
│   ├───login_page
│   ├───my_fridge_page
│   ├───profile_page
│   └───public
├───models
├───pages
└───repositorie
```
## Documentação de cores

| Cor               | Hexadecimal                                                |
| ----------------- | ---------------------------------------------------------------- |
| Laranja           | ![#E58F65](https://via.placeholder.com/10/E58F65?text=+) #E58F65 |
| Branco 1          | ![#FFFFFF](https://via.placeholder.com/10/FFFFFF?text=+) #FFFFFF |
| Branco 2       | ![#F8F8F8](https://via.placeholder.com/10/F8F8F8?text=+) #F8F8F8 |
| Preto 1     | ![#474747](https://via.placeholder.com/10/474747?text=+) #474747 |
| Cinza    | ![#CCD2E3](https://via.placeholder.com/10/CCD2E3?text=+) #CCD2E3 |


## Aprendizados

No curto período em que desenvolvemos esse aplicativo, tivemos grandes aprendizados tanto na área humana quanto técnica. Além de aprendermos como atribuir tarefas, manter um planejamento e utilizar a metodologia ágil de Kanban para cumprir prazos, aprendemos também como fazer um código mais organizado e como versioná-lo utilizando o Github.

## Melhorias

O projeto ainda está em desenvolvimento e planejamos arrumar diversas coisas. Algumas das melhorias que planejamos aplicar são:
- Uso de reatividade
- Uso informações dinâmicas
- Uso de um Banco de Dados
- Uso de APIs externas
- Uso de recursos nativos do celular

Entre outras coisas.

## Autores

- [@igorcasro](https://github.com/igorcasro)
- [@Skyerv](https://github.com/Skyerv)
- [@FrCorrea](https://github.com/FrCorrea)

