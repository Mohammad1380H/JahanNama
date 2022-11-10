import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:jahan_nama/Model/CityModel.dart';
import 'dart:developer' as dev;
import 'package:jahan_nama/animatedClass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // ignore: prefer_const_literals_to_create_immutables
      supportedLocales: [
        const Locale('fa', ''),
      ],

      title: "سفر نما",
      theme: ThemeData(
          // ignore: prefer_const_constructors
          textTheme: TextTheme(
        // ignore: prefer_const_constructors
        headline1: TextStyle(
            fontFamily: "sansArabic",
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w900),
        bodyText1: const TextStyle(
            fontFamily: "sansArabic",
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.w300),
        bodyText2: const TextStyle(
            fontFamily: "sansArabic",
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w300),
        headline2: const TextStyle(
            fontFamily: "sansArabic",
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w900),
      )),
      debugShowCheckedModeBanner: false,

      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            color: const Color.fromARGB(255, 236, 233, 233),
            child: BodyColumn()));
  }
}

class BodyColumn extends StatefulWidget {
  BodyColumn({Key? key}) : super(key: key);

  @override
  State<BodyColumn> createState() => _BodyColumnState();
}

class _BodyColumnState extends State<BodyColumn> {
  int mainIndex = 0;
  List<myModel> myList = [];
  void getList() {
    myList.add(myModel(
        "tehran", "تهران", "برج میلاد", "600", "31", "3.5", "150000", """
تهران نصف جهان است بيا تا برويم/ شهري از شور و صفا است بيا تا برويم. اين شهر در زمان قاجار پايختخت ايران بوده است و فتحعلیشاه در اين شهر شاهي مي كرده است. از جمله آثار تاريخي مي توان به کاخ گلستان و برج آزادی اشاره كرد """));
    myList.add(myModel(
        "tabriz", "تبریز", "شهر تبریز", "800", "28", "4.5", "190000", """
تبریز نصف جهان است بيا تا برويم/ شهري از شور و صفا است بيا تا برويم. اين شهر در زمان صفويه پايختخت ايران بوده است و شاه  در اين شهر شاهي مي كرده است. از جمله آثار تاريخي مي توان به کاخ ها اشاره كرد """));

    myList.add(myModel(
        "isfahan", "اصفهان", "سی و سه پل", "120", "32", "3.5", "20000", """
اصفهان نصف جهان است بيا تا برويم/ شهري از شور و صفا است بيا تا برويم. اين شهر در زمان صفويه پايختخت ايران بوده است و شاه عباس در اين شهر شاهي مي كرده است. از جمله آثار تاريخي مي توان به پل خواجو كاخ عالي قاپو و سي و سه پل اشاره كرد """));
    myList.add(myModel(
        "mashhad", "مشهد", "حرم مطهر رضوی", "600", "35", "5.5", "250000", """
مشهد نصف جهان است بيا تا برويم/ شهري از شور و صفا است بيا تا برويم. اين شهر در زمان افشاریه پايختخت ايران بوده است و نادر قلیشاه در اين شهر شاهي مي كرده است. از جمله آثار تاريخي و زیارتی مي توان به حرم مطهر رضوی و آرامگاه فردوسی اشاره كرد """));
    myList.add(myModel(
        "shiraz", "شیراز", "آرامگاه حافظ", "450", "30", "5.5", "140000", """
شیراز نصف جهان است بيا تا برويم/ شهري از شور و صفا است بيا تا برويم. اين شهر در زمان زندیه پايختخت ايران بوده است و کریمخان زند  در اين شهر شاهي مي كرده است. از جمله آثار تاريخي مي توان به آرامگاه سعدی و حافظ  اشاره كرد """));
  }

  @override
  void initState() {
    super.initState();
    getList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          //include stack
          Container(
            height: MediaQuery.of(context).size.height / 1.8,
            color: Color.fromRGBO(238, 232, 232, 1),
            child: Stack(
              children: [
                //bg image
                NewWidget(myList: myList, mainIndex: mainIndex),
                // customized appBar
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(50, 50),
                            backgroundColor:
                                const Color.fromARGB(210, 219, 217, 203),
                            shape: const CircleBorder(),
                          ),
                          // ignore: prefer_const_constructors
                          child: Icon(
                            Icons.favorite_outline,
                            color: Colors.black,
                          )),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(50, 50),
                            backgroundColor:
                                const Color.fromARGB(210, 219, 217, 203),
                            shape: const CircleBorder(),
                          ),
                          // ignore: prefer_const_constructors
                          child: Icon(
                            size: 21,
                            Icons.arrow_back_ios_new,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),
                //listView
                Positioned(
                  right: MediaQuery.of(context).size.width / 30,
                  top: MediaQuery.of(context).size.height / 12,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: MediaQuery.of(context).size.height / 2.2,
                    child: ListView.builder(
                      itemCount: myList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return newAnimated(
                          myList: myList,
                          mainIndex: mainIndex,
                          index: index,
                          onTap: () {
                            setState(() {
                              mainIndex = index;
                            });
                          },
                        );
                      },
                    ),
                  ),
                ),
                //name and loc
                Positioned(
                  left: MediaQuery.of(context).size.height / 16,
                  bottom: MediaQuery.of(context).size.height / 9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        myList[mainIndex].namel!,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Row(
                        children: [
                          Text(
                            myList[mainIndex].loc!,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          const Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          //space
          SizedBox(
            height: MediaQuery.of(context).size.width / 50,
          ),
          //three rects
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox.shrink(),
              Container(
                  width: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 199, 191, 191),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25)),
                  padding: const EdgeInsets.all(20),
                  child: Column(children: [
                    Text(
                      "رطوبت",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Text(
                      replaceFarsiNumber(myList[mainIndex].rating!),
                      style: Theme.of(context).textTheme.bodyText2,
                    )
                  ])),
              Container(
                  width: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 199, 191, 191),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25)),
                  padding: const EdgeInsets.all(20),
                  child: Column(children: [
                    Text(
                      "دما",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Text(
                      replaceFarsiNumber("${myList[mainIndex].temp!}C"),
                      style: Theme.of(context).textTheme.bodyText2,
                    )
                  ])),
              Container(
                  width: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 199, 191, 191),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25)),
                  padding: const EdgeInsets.all(20),
                  child: Column(children: [
                    Text(
                      "فاصله",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Text(
                      replaceFarsiNumber("${myList[mainIndex].distance!}km"),
                      style: Theme.of(context).textTheme.bodyText2,
                    )
                  ])),
              const SizedBox.shrink()
            ],
          ),
          //space
          SizedBox(
            height: MediaQuery.of(context).size.width / 150,
          ),
          //details
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "توضیحات",
                  style: Theme.of(context).textTheme.headline2,
                )),
          ),
          //expanded text
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 1),
            child: ExpandableText(
              myList[mainIndex].discribe!,
              expandText: 'بيشتر ',
              collapseText: 'كمتر',
              maxLines: 2,
              linkColor: Colors.blue,
              animation: true,
              
            ),
          ),
          //price and pay button
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  // ignore: sort_child_properties_last
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 40,
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(0, 60),
                      shape: const CircleBorder()),
                ),
                Column(children: [
                  Text(
                    "قيمت كل",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    "${replaceFarsiNumber(myList[mainIndex].price!)} تومان",
                    style: Theme.of(context).textTheme.headline2,
                  )
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// class _BodyColumnState extends State<BodyColumn> {

//   // AnimatedScale newMethod(int index, BuildContext context) {
//   //   return
//   // }

//   // ClipRRect imageView(BuildContext context) {
//   //   return
//   // }

// }

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.myList,
    required this.mainIndex,
  }) : super(key: key);

  final List<myModel> myList;
  final int mainIndex;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
        child: SizedBox(
            height: MediaQuery.of(context).size.height / 2.05,
            child: Image.asset(
                fit: BoxFit.fill,
                "assets/images/${myList[mainIndex].url}.jpg",
                opacity: const AlwaysStoppedAnimation(0.99))));
  }
}

String replaceFarsiNumber(String input) {
  const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const farsi = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

  for (int i = 0; i < english.length; i++) {
    input = input.replaceAll(english[i], farsi[i]);
  }

  return input;
}
