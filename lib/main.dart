import 'package:educational_web/screens/Global.dart';
import 'package:educational_web/screens/web.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home_page(),
        'web': (context) => Web(),
      },
    ),
  );
}

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mirror Wall",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.bottomRight,
                  height: size.height * 0.3,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://play-lh.googleusercontent.com/htBUaqvBQR9UQ3b1-ouSHFhDGttQkH-eWetEErspYXVa8hOsfmOmj5ZanGg9GF7XAGc"),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Current = Global.Website[0];
                      });
                      Navigator.of(context)
                          .pushNamed("web", arguments: Global.Website[0]);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white.withOpacity(0.3),
                      ),
                      side: MaterialStateProperty.all(
                        const BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    child: const Text(
                      "Wikipedia Web",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.bottomRight,
                  height: size.height * 0.28,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://yt3.googleusercontent.com/dW6to0x5Crmeh7yi-YPLcQRqVrBtx2BSh8eoKTJbE8NbjloQ0sqlmdszIlxokJU_97-ndOt_=s900-c-k-c0x00ffffff-no-rj"),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Current = Global.Website[1];
                      });
                      Navigator.of(context)
                          .pushNamed("web", arguments: Global.Website[1]);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white.withOpacity(0.3),
                      ),
                      side: MaterialStateProperty.all(
                        const BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    child: const Text(
                      "W3Schools",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.bottomRight,
                  height: size.height * 0.3,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://store-images.s-microsoft.com/image/apps.2366.9007199266518672.0607cbef-4e96-49c1-b02c-2432d9fc4826.e2043c6d-d6c4-49ed-8199-cc06665e9e9f?mode=scale&q=90&h=300&w=300"),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Current = Global.Website[2];
                      });
                      Navigator.of(context)
                          .pushNamed("web", arguments: Global.Website[2]);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white.withOpacity(0.3),
                      ),
                      side: MaterialStateProperty.all(
                        const BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    child: const Text(
                      "TutorialsPoint",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.bottomRight,
                  height: size.height * 0.3,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://media.licdn.com/dms/image/C4D0BAQEwg5FK93uumQ/company-logo_200_200/0/1519923012279?e=2147483647&v=beta&t=63CNoS8OTR4lHjPhHSO7eFFqwLGwYunWfyDBV3tdc0c"),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Current = Global.Website[3];
                      });
                      Navigator.of(context)
                          .pushNamed("web", arguments: Global.Website[3]);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white.withOpacity(0.3),
                      ),
                      side: MaterialStateProperty.all(
                        const BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                    child: const Text(
                      "JavatPoint",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
