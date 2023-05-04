import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/models/globals.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: (Globals.isdark == true) ? Colors.black : Colors.white,
      child: ListView.builder(
        itemCount: favouritecountry.length,
        itemBuilder: (context, i) {
          return Card(
            elevation: 3,
            color:
                (Globals.isdark == true) ? Colors.grey : Colors.grey.shade200,
            child: ListTile(
              leading: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Image.network(
                    favouritecountry[i]["flag"],
                    fit: BoxFit.cover,
                  )),
              title: Text(favouritecountry[i]["Country"]),
              subtitle: Text(favouritecountry[i]["from"]),
              trailing: GestureDetector(
                  onTap: () {
                    setState(() {
                       favouritecountry.remove(favouritecountry[i]);
                      // if (country[i]["islike" == false]) {
                      //   country[i]["islike"] = true;
                      //   favouritecountry.add(country[i]);
                      // } else {
                      //   country[i]["islike"] = false;
                      //   favouritecountry.remove(country[i]);
                      // }
                      // if (favouritecountry.contains(country[i])) {
                       
                      // } else {
                      //   favouritecountry.add(country[i]);
                      // }
                    });
                  },
                  child: Icon(CupertinoIcons.heart_fill,color: Colors.red,)),
            ),
          );
        },
      ),
    );
  }
}