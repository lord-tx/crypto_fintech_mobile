import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';

class OptiBottomNavBar extends StatefulWidget {
  final Function(int index)? onSelected;
  const OptiBottomNavBar({super.key, this.onSelected});

  @override
  State<OptiBottomNavBar> createState() => _OptiBottomNavBarState();
}

class _OptiBottomNavBarState extends State<OptiBottomNavBar> {
  int currentlySelected = 0;
  Map<String, int> navBarItems = {
    "home" : 0,
    "card" : 1,
    "transfer": 2,
    "swap": 3,
    "account": 4,
  };

  TextStyle activeItemTextStyle = const TextStyle(
      color: Color(0xFF1C1C1C),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: "Rogerex"
  );

  TextStyle inactiveItemTextStyle = const TextStyle(
      color: Color(0xFFA7A7A7),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: "Rogerex"
  );

  Color activeIconColor = const Color(0xFF1C1C1C);
  Color inactiveIconColor = const Color(0xFFA7A7A7);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        color: Colors.transparent,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: MediaQuery.of(context).size.height * 0.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 11),
                    blurRadius: 19,
                    color: Color.fromRGBO(109, 110, 124, 0.09)
                  )
                ],
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: (){
                          setState(() {
                            currentlySelected = navBarItems["home"] ?? 0;
                          });
                          if (widget.onSelected != null){
                            widget.onSelected!(0);
                          }
                        },
                        icon: Icon(
                          IconlyBold.home,
                          size: 35,
                          color: currentlySelected == navBarItems["home"]
                              ? activeIconColor
                              : inactiveIconColor,
                        )
                      ),
                      Text("Home", style: currentlySelected == navBarItems["home"]
                          ? activeItemTextStyle
                          : inactiveItemTextStyle,),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: (){
                            setState(() {
                              currentlySelected = navBarItems["card"] ?? 0;
                            });
                            if (widget.onSelected != null){
                              widget.onSelected!(1);
                            }
                          },
                          icon: Icon(Icons.credit_card, size: 35,color: currentlySelected == navBarItems["card"]
                              ? activeIconColor
                              : inactiveIconColor,)),
                      Text("Card", style: currentlySelected == navBarItems["card"]
                          ? activeItemTextStyle
                          : inactiveItemTextStyle,),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: (){
                            setState(() {
                              currentlySelected = navBarItems["transfer"] ?? 0;
                            });
                            if (widget.onSelected != null){
                              widget.onSelected!(2);
                            }
                          },
                          icon: const SizedBox.shrink()
                      ),
                      Text("Transfer", style: currentlySelected == navBarItems["transfer"]
                          ? activeItemTextStyle
                          : inactiveItemTextStyle,)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: (){
                            setState(() {
                              currentlySelected = navBarItems["swap"] ?? 0;
                            });
                            if (widget.onSelected != null){
                              widget.onSelected!(3);
                            }
                          },
                          icon: Icon(IconlyBold.swap, size: 35,color: currentlySelected == navBarItems["swap"]
                              ? activeIconColor
                              : inactiveIconColor,)),
                      Text("Swap", style: currentlySelected == navBarItems["swap"]
                          ? activeItemTextStyle
                          : inactiveItemTextStyle,),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: (){
                            setState(() {
                              currentlySelected = navBarItems["account"] ?? 0;
                            });
                            if (widget.onSelected != null){
                              widget.onSelected!(4);
                            }
                          },
                          icon: Icon(IconlyBold.setting, size: 35,color: currentlySelected == navBarItems["account"]
                              ? activeIconColor
                              : inactiveIconColor,)),
                      Text("Account", style: currentlySelected == navBarItems["account"]
                          ? activeItemTextStyle
                          : inactiveItemTextStyle,),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 65,
                width: 65,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xFF2C3E02),
                ),
                child: IconButton(
                  onPressed: (){
                    setState(() {
                      currentlySelected = navBarItems["transfer"] ?? 0;
                    });
                    if (widget.onSelected != null){
                      widget.onSelected!(2);
                    }
                  },
                  icon: Image.asset(kaOptiLogo,)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
