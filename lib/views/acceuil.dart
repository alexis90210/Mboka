import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Acceuil extends StatefulWidget {
  const Acceuil({
    Key? key,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  void initState() {
    super.initState();
  }

  List topBoutique = [
    {
      "image": 'https://via.placeholder.com/150',
      "nom": "Boutique 1",
      "id": "1",
      "prix": "1 400",
      "produit": "Ordinateur Portable"
    },
    {
      "image": 'https://via.placeholder.com/150',
      "nom": "Boutique 2",
      "id": "2",
      "prix": "1 400",
      "produit": "Ordinateur Portable"
    },
    {
      "image": 'https://via.placeholder.com/150',
      "nom": "Boutique 3",
      "id": "3",
      "prix": "1 400",
      "produit": "Ordinateur Portable"
    },
    {
      "image": 'https://via.placeholder.com/150',
      "nom": "Boutique 4",
      "id": "4",
      "prix": "1 400",
      "produit": "Ordinateur Portable"
    },
    {
      "image": 'https://via.placeholder.com/150',
      "nom": "Boutique 5",
      "id": "5",
      "prix": "1 400",
      "produit": "Ordinateur Portable"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'asset/ic_launcher.png',
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        'MBOKA',
                        style: TextStyle(
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber.shade900,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        color: Colors.black,
                        onPressed: () => {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => ),
                              // )
                            },
                        iconSize: 23,
                        icon: const Icon(Icons.search)),
                    IconButton(
                        color: Colors.black,
                        onPressed: () => {},
                        iconSize: 23,
                        icon: const Icon(Icons.shopping_bag_outlined)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    width: double.infinity,
                    child: Image.network(
                      'https://via.placeholder.com/350x150',
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      _titre('Meilleures boutiques'),
                      const SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(topBoutique.length, (index) {
                            return Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SizedBox(
                                width: 110,
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      child: Image.network(
                                          topBoutique[index]['image'],
                                          width: 100,
                                          height: 100),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      topBoutique[index]['nom'],
                                      softWrap: true,
                                      style: const TextStyle(fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _titre('Nouveaux articles'),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Wrap(
                            spacing: 15,
                            children:
                                List.generate(topBoutique.length, (index) {
                              return SizedBox(
                                width: 170,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      child: Image.network(
                                        topBoutique[index]['image'],
                                        width: double.infinity,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      topBoutique[index]['nom'],
                                      softWrap: true,
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      topBoutique[index]['produit'],
                                      softWrap: true,
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      topBoutique[index]['prix'] + ' xaf',
                                      softWrap: true,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.amber.shade900),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                        ],
                      )
                    ], // dont get out
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

_titre(titre) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          '$titre',
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(3),
        width: 80,
        height: 35,
        child: Center(
          child: Text(
            'voir',
            style: TextStyle(color: Colors.amber.shade900),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.amber.shade100,
            borderRadius: const BorderRadius.all(Radius.circular(50))),
      )
    ],
  );
}
