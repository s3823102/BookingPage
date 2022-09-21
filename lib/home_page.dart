import 'package:flutter/material.dart';


class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomePage>
{
  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;
    return Scaffold
      (
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar
        (
        elevation: 25.0,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        leading: const Icon
          (Icons.menu,
          color: Colors.white,
        ),
        actions:
        [
          GestureDetector
            (
            child: Container
              (
              margin: const EdgeInsets.only(right: 10),
              child: const Icon
                (
                Icons.notifications_rounded,
                color: Colors.white,
              ),
            )
          )
        ],
      ),
      body: Container
        (
        decoration: BoxDecoration
          (
          color: Colors.grey[100],
          borderRadius: const BorderRadius.only
            (
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          )
        ),
        child: Column
          (
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
          children:
          [
            Container
              (
              margin: const EdgeInsets.only(top:20, left: 20),
              child: const Text
                (
                "Hi User",
                style: TextStyle
                  (
                  color: Colors.black87,
                  fontSize: 28,
                ),
              ),
            ),
            Container
              (
              margin: const EdgeInsets.only(top:4, left: 20),
              child: const Text
                (
                "Welcome",
                style: TextStyle
                  (
                  color: Colors.black87,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'
                ),
              ),
            ),
             Container
               (
               margin:  const EdgeInsets.only(top:25, left: 20, right: 20),
               decoration: BoxDecoration
                 (
                 color: Colors.white60,
                 borderRadius: BorderRadius.circular(5),
                 boxShadow:
                 const [
                     BoxShadow
                       (
                       color: Color(0x14000000),
                       offset: Offset(0,10),
                       blurRadius: 15,
                       spreadRadius: 0,
                     )
                   ]
               ),

               height: 60,
               width: size.width,
               child: Row
                 (
                 children:
                 [
                   Expanded
                     (
                     flex: 5,
                     child: Container
                       (
                       margin: const EdgeInsets.only(left: 10, right: 10,),
                       child: const TextField
                         (
                         maxLines: 1,
                         autofocus: false,
                         style: TextStyle
                           (
                           color: Color(0xff107163),
                           fontSize: 22,

                         ),
                         decoration: InputDecoration
                           (
                           border: InputBorder.none,
                           hintText: "Search",
                         ),
                       ),
                     ),
                   ),

                   Expanded
                     (
                     flex: 1,
                     child: Container
                       (
                       decoration: BoxDecoration
                         (
                         color: const Color(0xff053F5E),
                         borderRadius: BorderRadius.circular(5),
                       ),
                       child: const Center
                         (
                         child: Icon
                           (
                           Icons.search,
                           color: Colors.black,
                           size: 26,
                         ),
                       ),
                     ),
                   )
                 ],
               ),
             ),
            Container
              (
              width: size.width,
              child: Stack
                (
                fit: StackFit.loose,
                children:
                [
                  Container
                    (
                    child: const Text
                      (
                      "Category",
                      style: TextStyle
                        (
                        color: Color(0xff363636),
                        fontSize: 21,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
  
}
