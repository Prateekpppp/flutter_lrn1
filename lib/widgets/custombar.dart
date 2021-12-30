import 'package:flutter/material.dart';
class CustomAppbar extends StatelessWidget {
  final IconData lefticon;
  final IconData righticon;
  final Function? leftCallback;
  CustomAppbar(this.lefticon,this.righticon, {this.leftCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25, right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftCallback!= null ? () => leftCallback!() : null,
            child: Container(
              padding: EdgeInsets.fromLTRB(16,8,8,8,),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                ),
              child: Icon(lefticon),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(righticon),
          )
        ],
      ),
    );
  }
}
