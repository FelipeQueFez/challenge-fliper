import 'package:challenge_fliper/app_colors.dart';
import 'package:challenge_fliper/views/shared/spacer_box.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Text title;
  final IconData icon;
  final Color backgroundColor;
  final Function iconOnPressed;

  const CustomCard(
      {Key key,
      this.title,
      this.icon,
      this.backgroundColor,
      this.iconOnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 20,
            color: Color.fromRGBO(0, 0, 0, .05),
          ),
        ],
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Card(
        color: backgroundColor,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: IconButton(
                  icon: Icon(
                    icon,
                    size: 30,
                    color: AppColors.primary,
                  ),
                  onPressed: () {
                    iconOnPressed();
                  },
                ),
              ),
              SpacerBox.h10,
              title
            ],
          ),
        ),
      ),
    );
  }
}
