import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/models/globals.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({super.key});

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: (Globals.isdark==true)?Colors.black:Colors.white,
      child: ListView.builder(
        itemCount: country.length,
        itemBuilder: (context, i) {
          return Card(
            elevation: 6,
            color: (Globals.isdark==true)?Colors.grey: Colors.grey.shade200,
            child: ListTile(
              focusColor: Colors.amber,
              leading: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Image.network(
                    country[i]["flag"],
                    fit: BoxFit.cover,
                  )),
              title: Text(country[i]["Country"]),
              subtitle: Text(country[i]["from"]),
              trailing: GestureDetector(
                  onTap: () {
                    setState(() {
                      // if (country[i]["islike" == false]) {
                      //   country[i]["islike"] = true;
                      //   favouritecountry.add(country[i]);
                      // } else {
                      //   country[i]["islike"] = false;
                      //   favouritecountry.remove(country[i]);
                      // }
                      if (favouritecountry.contains(country[i])) {
                        favouritecountry.remove(country[i]);
                        print(favouritecountry);
                      } else {
                        favouritecountry.add(country[i]);
                      }
                    });
                  },
                  child: (favouritecountry.contains(country[i]))
                      ? Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.red,
                        )
                      : Icon(CupertinoIcons.heart)),
            ),
          );
        },
      ),
    );
  }
}
