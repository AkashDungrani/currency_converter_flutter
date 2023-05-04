import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flag/flag.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:practice/view/component/countrypage.dart';
import 'package:practice/view/component/favouritepage.dart';
// import 'package:flutter_svg/svg.dart';

import '../../hepler/apihelper.dart';
import '../../models/currency.dart';
import '../../models/globals.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  TextEditingController amountcontroller = TextEditingController();
  String? countrydata;
  late Future<Currency?> getdata;
  String from = "USD";
  String to = "inr";
  int amount = 1;
  int pageindex = 0;
  PageController pageController = PageController();
  String? currency;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata = Apihelper.apihelper.fetchData(from: "USD", to: "inr", amount: 1);
    amountcontroller.text = '1';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: (Globals.isdark == true) ? Colors.black : Colors.white,
        title: Text("Currency Converter",style: TextStyle(color:(Globals.isdark==true)?Colors.white:Colors.black),),
        actions: [
          Switch(
              activeColor: Colors.grey,
              activeTrackColor: Colors.grey.shade200,
              inactiveTrackColor: Colors.grey,
              value: Globals.isdark,
              onChanged: (val) {
                setState(() {
                  Globals.isdark = val;
                });
              })
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            pageindex = value;
          });
        },
        children: [
          // CountryPage(),
          CountryPage(),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(),
            child: FutureBuilder(
              future: getdata,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasError) {
                  return Text("Error:${snapshot.error}");
                } else if (snapshot.hasData) {
                  Currency? data = snapshot.data;
                  int amount1 = int.parse(amountcontroller.text);

                  if (data != null) {
                    return Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: (Globals.isdark == true)
                                ? Colors.black
                                : Colors.white
                            // image: DecorationImage(
                            //     // image: NetworkImage(
                            //     //     "https://i.pinimg.com/564x/e0/ab/56/e0ab56b35a85b2f15f8f6aacf1e66150.jpg"),
                            //     // fit: BoxFit.cover
                            //     )
                            ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              // (Globals.isdark == false)
                              //     ?
                              SizedBox(
                                height: 30,
                              ),
                              // : SizedBox(
                              //     height: 1,
                              //   ),
                              // (Globals.isdark == false)
                              //     ?
                              DropdownButtonFormField(
                                hint: Text("Select Country From"),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    fillColor: (Globals.isdark == true)
                                        ? Colors.white
                                        : Colors.grey.shade300,
                                    filled: true),
                                value: from,
                                elevation: 4,
                                isDense: true,
                                iconSize: 20,
                                focusColor: Colors.black54,
                                autofocus: true,
                                iconDisabledColor: Colors.black,
                                iconEnabledColor: (Globals.isdark == true)
                                    ? Colors.black
                                    : Colors.black,
                                icon: Icon(Icons.arrow_drop_down_circle),
                                isExpanded: true,
                                dropdownColor: Colors.white,
                                items: country
                                    .map((e) => DropdownMenuItem(
                                          child: Row(
                                            children: [
                                              Container(
                                                  height: 30,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.white)),
                                                  child: Image.network(
                                                    e["flag"],
                                                    fit: BoxFit.cover,
                                                  )),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(e["Country"]),
                                            ],
                                          ),
                                          value: "${e["from"]}",
                                        ))
                                    .toList(),
                                onChanged: (val) {
                                  setState(() {
                                    // getdata = Apihelper.apihelper.fetchData(from: from);
                                    // print(from);
                                    // print(getdata)
                                    from = val.toString();
                                    print(from);
                                  });
                                },
                              ),
                              // ? SelectableList(
                              //     items: country,
                              //     itemBuilder: (context, item, selected, onTap) =>
                              //         Card(
                              //             child: ListTile(
                              //       title: Text(item["from"]),
                              //       selected: selected,
                              //       onTap: onTap,
                              //     )),
                              //     onItemDeselected: (item) {
                              //       setState(() {
                              //         Globals.from = "INR";
                              //       });
                              //     },
                              //     valueSelector: (item) => item["from"],
                              //     selectedValue: Globals.from,
                              //     onItemSelected: (item) {
                              //       setState(() {
                              //         item["from"] = Globals.from;
                              //       });
                              //     },
                              //   )
                              // : GestureDetector(
                              //     onTap: () {
                              //       showCupertinoModalPopup(
                              //         context: context,
                              //         builder: (context) => Column(
                              //           children: [
                              //             Expanded(
                              //               flex: 3,
                              //               child: GestureDetector(
                              //                 onTap: () {
                              //                   Navigator.pop(context);
                              //                 },
                              //                 child: Container(
                              //                   color: Colors.black26,
                              //                 ),
                              //               ),
                              //             ),
                              //             Expanded(
                              //               child: Container(
                              //                 child: CupertinoPicker(
                              //                   backgroundColor:
                              //                       Colors.white,
                              //                   itemExtent: 30,
                              //                   children: country.map((e) {
                              //                     return Text(
                              //                       e["from"],
                              //                       style: TextStyle(
                              //                         color: Colors.black
                              //                             .withOpacity(0.5),
                              //                         fontSize: 18,
                              //                         fontWeight:
                              //                             FontWeight.bold,
                              //                       ),
                              //                     );
                              //                   }).toList(),
                              //                   onSelectedItemChanged:
                              //                       (value) {
                              //                     setState(() {
                              //                       int i = value;
                              //                       from = country[i]
                              //                               ["from"]
                              //                           .toString();
                              //                       print(from);
                              //                     });
                              //                   },
                              //                 ),
                              //               ),
                              //             ),
                              //           ],
                              //         ),
                              //       );
                              //     },
                              //     child: Container(
                              //       height: 50,
                              //       width:
                              //           MediaQuery.of(context).size.width,
                              //       decoration: BoxDecoration(
                              //           border:
                              //               Border.all(color: Colors.blue),
                              //           borderRadius:
                              //               BorderRadius.circular(10),
                              //           color: Colors.grey.shade100),
                              //       child: Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.start,
                              //         children: [
                              //           SizedBox(
                              //             width: 20,
                              //           ),
                              //           Text(
                              //             "$from".toString(),
                              //             style: TextStyle(
                              //                 fontSize: 18,
                              //                 fontWeight: FontWeight.w600),
                              //           ),
                              //           Spacer(),
                              //           const Icon(
                              //             Icons.arrow_drop_down,
                              //             size: 30,
                              //             color: Colors.black,
                              //           ),
                              //         ],
                              //       ),
                              //     ),
                              //   ),
                              SizedBox(
                                height: 30,
                              ),
                              // (Globals.isdark == false)
                              //     ?
                              DropdownButtonFormField(
                                hint: Text("Select Country"),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    fillColor: (Globals.isdark==true)?Colors.white:Colors.grey.shade300,
                                    filled: true),
                                value: to,
                                iconSize: 20,
                                iconDisabledColor: Colors.black,
                                iconEnabledColor: Colors.black,
                                icon: Icon(Icons.arrow_drop_down_circle),
                                isExpanded: true,
                                dropdownColor: Colors.white,
                                items: country
                                    .map((e) => DropdownMenuItem(
                                          child: Row(
                                            children: [
                                              Container(
                                                  height: 30,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.white)),
                                                  child: Image.network(
                                                    e["flag"],
                                                    fit: BoxFit.cover,
                                                  )),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(e["Country"]),
                                            ],
                                          ),
                                          value: "${e["to"]}",
                                        ))
                                    .toList(),
                                onChanged: (val) {
                                  setState(() {
                                    // getdata = Apihelper.apihelper.fetchData(to: to);
                                    // print(to);
                                    to = val.toString();
                                    print(to);
                                  });
                                },
                              ),
                              // : GestureDetector(
                              //     onTap: () {
                              //       showCupertinoModalPopup(
                              //         context: context,
                              //         builder: (context) => Column(
                              //           children: [
                              //             Expanded(
                              //               flex: 3,
                              //               child: GestureDetector(
                              //                 onTap: () {
                              //                   Navigator.pop(context);
                              //                 },
                              //                 child: Container(
                              //                   color: Colors.black26,
                              //                 ),
                              //               ),
                              //             ),
                              //             Expanded(
                              //               child: Container(
                              //                 child: CupertinoPicker(
                              //                   backgroundColor:
                              //                       Colors.white,
                              //                   itemExtent: 30,
                              //                   children: country.map((e) {
                              //                     return Text(
                              //                       e["to"],
                              //                       style: TextStyle(
                              //                         color: Colors.black
                              //                             .withOpacity(0.5),
                              //                         fontSize: 18,
                              //                         fontWeight:
                              //                             FontWeight.bold,
                              //                       ),
                              //                     );
                              //                   }).toList(),
                              //                   onSelectedItemChanged:
                              //                       (value) {
                              //                     setState(() {
                              //                       int i = value;
                              //                       to = country[i]["to"]
                              //                           .toString();
                              //                       print(to);
                              //                     });
                              //                   },
                              //                 ),
                              //               ),
                              //             ),
                              //           ],
                              //         ),
                              //       );
                              //     },
                              //     child: Container(
                              //       height: 50,
                              //       width:
                              //           MediaQuery.of(context).size.width,
                              //       decoration: BoxDecoration(
                              //           border:
                              //               Border.all(color: Colors.blue),
                              //           borderRadius:
                              //               BorderRadius.circular(10),
                              //           color: Colors.grey.shade100),
                              //       child: Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.start,
                              //         children: [
                              //           SizedBox(
                              //             width: 20,
                              //           ),
                              //           Text(
                              //             "$to".toString(),
                              //             style: TextStyle(
                              //                 fontSize: 18,
                              //                 fontWeight: FontWeight.w600),
                              //           ),
                              //           Spacer(),
                              //           const Icon(
                              //             Icons.arrow_drop_down,
                              //             size: 30,
                              //             color: Colors.black,
                              //           ),
                              //         ],
                              //       ),
                              //     ),
                              //   ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please Enter Amount ";
                                  }
                                },
                                keyboardType: TextInputType.number,
                                onSaved: (val) {
                                  setState(() {
                                    amount = int.parse(val!);
                                  });
                                },
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                controller: amountcontroller,
                                decoration: InputDecoration(
                                  enabled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                  hintText: "Enter Amount",
                                  hintStyle:
                                      TextStyle(color: Colors.grey.shade600),
                                  filled: true,
                                  fillColor: (Globals.isdark == true)
                                        ? Colors.white
                                        : Colors.grey
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    getdata = Apihelper.apihelper.fetchData(
                                        from: from, to: to, amount: amount1);
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: MediaQuery.of(context).size.width / 2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color:(Globals.isdark==true)?Colors.grey:Colors.black),
                                  child: Text(
                                    "Calculate",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Icon(
                                Icons.arrow_downward_sharp,
                                size: 30,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GlassContainer.frostedGlass(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                // gradient: LinearGradient(
                                //   colors: [
                                //     Colors.amber.withOpacity(0.60),
                                //     Colors.blue.withOpacity(0.80)
                                //   ],
                                //   begin: Alignment.topLeft,
                                //   end: Alignment.bottomRight,
                                // ),
                                color: Colors.red,
                                blur: 15.0,
                                borderWidth: 1.5,
                                elevation: 3.0,
                                shadowColor: Colors.black.withOpacity(0.20),
                                alignment: Alignment.center,
                                frostedOpacity: 0.12,
                                margin: EdgeInsets.all(8.0),
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "$amount1",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 190,
                                      ),
                                      Text(
                                        "${data.from}",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  height: 110,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "${data.result}",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "${data.to}",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ));
                  } else {
                    Text("No Data Found!!!");
                  }
                }
                return Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      // FadeShimmer.round(
                      //   size: 60,
                      //   fadeTheme: FadeTheme.light,
                      //   millisecondsDelay: 20,
                      // ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                          ),
                          FadeShimmer(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.9,
                            radius: 10,
                            millisecondsDelay: 2000,
                            fadeTheme: FadeTheme.light,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          FadeShimmer(
                            height: 60,
                            millisecondsDelay: 20,
                            width: MediaQuery.of(context).size.width * 0.9,
                            radius: 4,
                            fadeTheme: FadeTheme.light,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FadeShimmer(
                            height: 60,
                            millisecondsDelay: 20,
                            width: MediaQuery.of(context).size.width * 0.9,
                            radius: 4,
                            fadeTheme: FadeTheme.light,
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          FadeShimmer(
                            height: 60,
                            millisecondsDelay: 20,
                            width: MediaQuery.of(context).size.width * 0.9,
                            radius: 4,
                            fadeTheme: FadeTheme.light,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          FadeShimmer(
                            height: 140,
                            millisecondsDelay: 20,
                            width: MediaQuery.of(context).size.width * 0.9,
                            radius: 4,
                            fadeTheme: FadeTheme.light,
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          FavouritePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageindex,
          onTap: (value) {
            setState(() {
              pageindex = value;
              pageController.animateToPage(pageindex,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
            });
          },
          backgroundColor:
              (Globals.isdark == true) ? Colors.black : Colors.white,
          selectedItemColor: (Globals.isdark == true) ? Colors.white : Colors.black,
          unselectedItemColor: (Globals.isdark == true) ? Colors.white : Colors.black,
          iconSize: 30,
          selectedFontSize: 16,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate), label: "Calculate"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart), label: "Favoutite")
          ]),
    );
  }
}
