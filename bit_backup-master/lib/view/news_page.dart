import 'package:app1/presenter/build_view.dart';
import 'package:app1/view/widgets/drawer_option.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int Newsint = 1;

  String viewName = 'NewsList';
  static const drawerOptions = <Map<String, dynamic>>[
    {
      'value': 1,
      'text':
          'Todos los articculos acerca de Tesla del último mes, ordenados por los recientes'
    },
    {'value': 2, 'text': 'Top de los principales nengocios en USA'},
    {
      'value': 3,
      'text':
          'Artículos que mencionan a APPLE ordenados por los editores más populares'
    },
    {'value': 4, 'text': 'Top noticias populares de  TechCrunch'},
    {
      'value': 5,
      'text':
          'Todos los artículos publicados po  Wall Street Journal en los últimos 6 meses ordenado por los más recientes'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Text(
          'BIT Noticias',
          style: TextStyle(color: Colors.black26),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.favorite),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              child: Image.network(
                  'https://bit.institute/images/Instituto-Cursos-Programacion.png'),
            )),
            ...drawerOptions
                .map((option) => DrawerOption(
                      text: option['text'],
                      onTap: () {
                        setState(() {
                          Newsint = option['value'];
                          Navigator.pop(context);
                        });
                      },
                    ))
                .toList()
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(right: 10, left: 10),
        child: BuildView(viewName: viewName, intNews: Newsint),
      ),
    );
  }
}
