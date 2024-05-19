import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:olx/screens/Images.dart';
import 'package:olx/screens/gridview.dart';
import 'package:olx/screens/listview.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> lstview = [
    Listview(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 0,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Listview(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 1,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Listview(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 2,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Listview(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 3,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Listview(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 4,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Listview(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 5,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Listview(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 6,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
  ];

  List<Widget> griditem = [
    Gridview(
      desciption: 'Iphone 12 pro,64 gb, Black',
      id: 0,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Gridview(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 1,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Gridview(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 2,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Gridview(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 3,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Gridview(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 4,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Gridview(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 5,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Gridview(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 6,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
  ];

  List<Widget> galleritem = [
    Images(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 0,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Images(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 1,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Images(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 2,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Images(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 3,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Images(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 4,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Images(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 5,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
    Images(
      desciption: 'Iphone 12 pro,64 gb,Black',
      id: 6,
      location: 'Tashkent,Uzbekistan',
      price: '500\$',
    ),
  ];

  int choice = 1;

  Widget choices() {
    switch (choice) {
      case 1:
        return Column(
          children: galleritem,
        );
      case 2:
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => lstview[index],
          itemCount: lstview.length,
        );
      case 3:
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => galleritem[index],
          itemCount: griditem.length,
        );
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Мы нашли больше 1000 объявлений',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.arrow_up_arrow_down),
                  ),
                  PopupMenuButton<int>(
                    position: PopupMenuPosition.under,
                    color: Colors.grey.shade500,
                    shadowColor: Colors.black,
                    onSelected: (value) {
                      setState(() {
                        choice = value;
                      });
                    },
                    itemBuilder: (context) => const [
                      PopupMenuItem(
                        value: 1,
                        child: Text('Галерея'),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text('Список'),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text('Сетка'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text('Реклама'),
              Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/jm.png'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'OLX',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              choices(),
            ],
          ),
        ),
      ),
    );
  }
}
