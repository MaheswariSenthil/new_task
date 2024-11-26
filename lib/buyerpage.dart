import 'package:flutter/material.dart';

class buyerpage extends StatefulWidget {
  @override
  _buyerpageState createState() => _buyerpageState();
}

class _buyerpageState extends State<buyerpage> {
  double _lowerValue = 0;
  double _upperValue = 100000000;
  bool checkBoxValue = true;
  var items = [
    '1 RK',
    '1 BHK',
    '2 BHK',
    '3 BHK',
    '4 BHK',
    '4 + BHK',
  ];
  double start = 0.0;
  double end = 100000000.0;
  int selected_index = 0;

  String selectedtype = '';
  String selectedsite = '';

  String selectedValue = "Apple";

  updateChoices(String type, String value) {
    if (this.mounted)
      setState(() {
        if (type == 'ptype') selectedtype = value;
        if (type == 'site') selectedsite = value;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: AppBar(
          automaticallyImplyLeading: true,
          title: Center(
            child: Image.asset(
              'assets/images/title.png',
              width: 100.0,
              height: 100.0,
            ),
          ),
          elevation: 0,
          backgroundColor: Color(0xFF012B44),
        ),
      ),
      backgroundColor: Color(0xFF012B44),
      bottomNavigationBar: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: kToolbarHeight),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: constraints.maxWidth / 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(40)),
                      color: Color(0xFF2A2F5F),
                    ),
                    height: 60,
                    child: Center(
                      child: Text(
                        'Search',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: constraints.maxWidth / 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(40)),
                      color: Colors.white24,
                    ),
                    height: 60,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Clear',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 100,
                      child: TextFormField(
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          hintText: "Search Radius",
                          hintStyle: TextStyle(color: Color(0xFF7D7D7D)),
                          isDense: true,
                          labelStyle: TextStyle(
                            color: Colors.black,
                            height: 1,
                            fontSize: 14,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0))),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) return 'Please enter username';
                        },
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF262D68),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: Icon(Icons.arrow_drop_down,
                          size: 30, color: Colors.white),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 100,
                      child: TextFormField(
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          hintText: "Search up to 2 Localities or Landmarks",
                          hintStyle: TextStyle(color: Color(0xFF7D7D7D)),
                          isDense: true,
                          labelStyle: TextStyle(
                            color: Colors.black,
                            height: 1,
                            fontSize: 14,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0))),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) return 'Please enter username';
                        },
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF262D68),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child:
                          Icon(Icons.location_searching, color: Colors.white),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              Row(mainAxisSize: MainAxisSize.min, children: [
                Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                  value: true,
                  onChanged: (newValue) {},
                ),
                Text('Include nearby properties'),
              ]),
              const SizedBox(height: 15.0),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 15.0, right: 10.0, left: 10),
                child: Text(
                  "Property Type",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 15.0, right: 10.0, left: 10),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: DropdownButton(
                    icon: Icon(Icons.keyboard_arrow_down_outlined),
                    isExpanded: true,
                    dropdownColor: Color(0xFFFBF9F5),
                    style: TextStyle(
                      color: Color(0xFF2D2D2D),
                    ),
                    iconEnabledColor: Color(0xFF737373),
                    iconSize: 25,
                    hint: selectedtype == null || selectedtype.isEmpty
                        ? Text('Property Type',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                            ))
                        : Text(
                            selectedtype == '0'
                                ? 'Detached'
                                : selectedtype == '1'
                                    ? 'Attached'
                                    : '',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                    onChanged: (newValue) {
                      setState(() {
                        updateChoices('ptype', newValue!);
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text('Detached'), value: '0'),
                      DropdownMenuItem(child: Text('Attached'), value: '1')
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 15.0, right: 10.0, left: 10),
                child: Text(
                  "Added to site",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 15.0, right: 10.0, left: 10),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: DropdownButton(
                    icon: Icon(Icons.keyboard_arrow_down_outlined),
                    isExpanded: true,
                    dropdownColor: Color(0xFFFBF9F5),
                    style: TextStyle(
                      color: Color(0xFF2D2D2D),
                    ),
                    iconEnabledColor: Color(0xFF737373),
                    iconSize: 25,
                    hint: selectedsite == null || selectedsite.isEmpty
                        ? Text('Site',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                            ))
                        : Text(
                            selectedsite == '0'
                                ? 'AnyTime'
                                : selectedsite == '1'
                                    ? 'No'
                                    : '',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                    onChanged: (newValue) {
                      setState(() {
                        updateChoices('site', newValue!);
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text('AnyTime'), value: '0'),
                      DropdownMenuItem(child: Text('No'), value: '1')
                    ],
                  ),
                ),
              ),
              GridView.builder(
                  physics: PageScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selected_index == index
                                ? Color(0xFF364268)
                                : Color(0xFFF7F7F7),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          onPressed: () {
                            setState(() {
                              selected_index = index;
                            });
                          },
                          child: Text(
                            "${items[index]}",
                            style: TextStyle(
                                fontSize: 12,
                                color: selected_index == index
                                    ? Colors.white
                                    : Colors.black),
                          )),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 0.4,
                    mainAxisExtent: 60,
                    // crossAxisSpacing: 0.8,
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Price Range : £0 to £ 10,00,00,000",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              SliderTheme(
                data: SliderThemeData(
                  thumbColor: Color(0xFF817FDE),
                  overlayColor: Colors.pink[50],
                  trackHeight: 1.0,
                  activeTrackColor: Colors.black,
                ),
                child: RangeSlider(
                  // inactiveColor: Colors.black,
                  // activeColor: Color(0xFF817FDE),
                  values: RangeValues(start, end),
                  labels: RangeLabels(start.toString(), end.toString()),
                  onChanged: (value) {
                    setState(() {
                      start = value.start;
                      end = value.end;
                    });
                  },
                  min: 0,
                  max: 100000000,
                ),
              ),
              Center(
                child: Text(
                  "Start: " +
                      start.toStringAsFixed(2) +
                      "\nEnd: " +
                      end.toStringAsFixed(2),
                  style: const TextStyle(
                    fontSize: 10.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Looking for “ReadytoMove” properties? ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          // backgroundColor:
                          //     MaterialStateProperty.all<Color>(Color(0xFF1D1D1D)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  side: BorderSide(color: Color(0xFF909090))))),
                      onPressed: () {},
                      child: Center(
                        child: Text('Yes',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          // backgroundColor:
                          //     MaterialStateProperty.all<Color>(Color(0xFF1D1D1D)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  side: BorderSide(color: Color(0xFF909090))))),
                      onPressed: () {},
                      child: Center(
                        child: Text('No',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // CircleAvatar(
                  //   backgroundColor: Colors.red,
                  //   backgroundImage: AssetImage('assets/images/Vector.png'),
                  //   radius: 40,
                  // ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: ShapeDecoration(
                      color: Color(0xFFE3F1F3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                          'assets/images/Vector.png',
                          // width: 25.0,
                          // height: 25.0,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   width: 60,
                  //   height: 60,
                  //   decoration: ShapeDecoration(
                  //     color: Colors.red,
                  //     shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(40)),
                  //   ),
                  //   child: Image.asset(
                  //     'assets/images/Vector.png',
                  //     fit: BoxFit.fitHeight,
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Looking for something specific?",
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16,
                            )),
                        const SizedBox(height: 8.0),
                        Text(
                          "Add More Filters",
                          style:
                              TextStyle(color: Color(0xFF000000), fontSize: 15),
                        ),
                        const SizedBox(height: 8.0),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
