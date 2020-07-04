import 'package:flutter/material.dart';
import '../utilities/all_constants.dart';
import '../components/faculty_list.dart';

class FacultySearchScreen extends StatefulWidget {
  @override
  _FacultySearchScreenState createState() => new _FacultySearchScreenState();
}

class _FacultySearchScreenState extends State<FacultySearchScreen> {
  TextEditingController editingController = TextEditingController();

  var duplicateItems = List<String>();
  var items = List<String>();
  bool searchBarVisible = false;
  bool navigationButtonVisible = true;

  @override
  void initState() {
    duplicateItems.addAll(facultyList.keys);
    print(duplicateItems);
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Visibility(
                visible: navigationButtonVisible,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: Container(
                    height: size.height * 0.1,
                    width: size.width - 30,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              searchBarVisible = true;
                              navigationButtonVisible = false;
                            });
                          },
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: searchBarVisible,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: Container(
                    height: size.height * 0.1,
                    width: size.width - 30,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              searchBarVisible = false;
                              navigationButtonVisible = true;
                            });
                          },
                          child: Icon(
                            Icons.clear,
                            color: Colors.white,
                            size: 27,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  left: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  top: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  bottom: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(35)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, top: 4, right: 5),
                              child: TextField(
                                autofocus: searchBarVisible,
                                showCursor: false,
                                onChanged: (value) {
                                  filterSearchResults(value);
                                },
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                controller: editingController,
                                decoration: kSearchBarDecoration,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                'FACULTY',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Positiona & In-Charges/Heads',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w200),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: facultyList[items[index]]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
