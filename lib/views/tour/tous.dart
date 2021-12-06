import 'package:ejm/share/share.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tours extends StatefulWidget {
  const Tours({Key? key}) : super(key: key);

  @override
  _ToursState createState() => _ToursState();
}

class _ToursState extends State<Tours> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Danh sách tour');

  List tours = List.generate(10, (index) => "${index}");
  ScrollController _scrollController = ScrollController();
  int _currentMax = 10;

  @override
  void initState() {
    super.initState();
    // List places = List.generate(10, (index) => "${index}");
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreTours();
      }
    });
  }

  _getMoreTours() {
    for (int i = _currentMax; i < _currentMax + 10; i++) {
      tours.add("${i + 1}");
    }
    _currentMax = _currentMax + 10;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GreenColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: customSearchBar,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  customIcon = const Icon(Icons.cancel);
                  customSearchBar = const ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 28,
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'Nhập vào tên tour...',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                } else {
                  customIcon = const Icon(Icons.search);
                  customSearchBar = const Text('Danh sách tour');
                }
              });
            },
            icon: customIcon,
          )
        ],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 4, right: 4),
        child: ListView.builder(
          controller: _scrollController,
          itemCount: tours.length + 1,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            if (index == tours.length) {
              return CupertinoActivityIndicator();
            }
            return _Element(context);
          },
        ),
      ),
    );
  }
}

_Element(context) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd8nqr6w_qWXwZz5tQlz4Wf2qyYdBYRLHXYQ&usqp=CAU',
            height: 70,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tour name title',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'jbask,dakshdkasnda ashdnla,ns dasnd amsnda dnkan da ndasndasd asn',
                style: TextStyle(color: Colors.grey, fontSize: 17),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Spacer(),
                  Text(
                    '15/11/2021 - 17/11/2021',
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    '100.00 VNĐ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: GreenColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
