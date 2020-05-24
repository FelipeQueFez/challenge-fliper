import 'package:challenge_fliper/app_colors.dart';
import 'package:challenge_fliper/views/shared/spacer_box.dart';
import 'package:challenge_fliper/views/shared/extensions.dart';
import 'package:flutter/material.dart';

class ResumeCard extends StatelessWidget {
  const ResumeCard({
    Key key,
  }) : super(key: key);

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
      ),
      child: Card(
        color: AppColors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 22, left: 22, right: 22, bottom: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _buildTitle(context),
              SpacerBox.v20,
              _buildSubTitle(context),
              SpacerBox.v40,
              _buildInformations(context),
              SpacerBox.v30,
              _buildDivider(),
              SpacerBox.v10,
              _buildViewMore(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildViewMore(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          color: AppColors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: AppColors.primary, width: 1),
            borderRadius: BorderRadius.circular(40),
          ),
          child: "VER MAIS".bodyText2(context),
        )
      ],
    );
  }

  Widget _buildInformations(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildLine1(context),
        SpacerBox.v10,
        _buildLine2(context),
        SpacerBox.v10,
        _buildLine3(context),
      ],
    );
  }

  Widget _buildDivider() {
    return Divider(
      color: AppColors.gray,
      height: 4,
    );
  }

  Widget _buildLine3(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        "Ganho/mês".bodyText1(context),
        "R\$1833,23".bodyText2(context),
      ],
    );
  }

  Widget _buildLine2(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        "CDI".bodyText1(context),
        "3,45%".bodyText2(context),
      ],
    );
  }

  Widget _buildLine1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        "Rentabilidade/mês".bodyText1(context),
        "2,767%".bodyText2(context),
      ],
    );
  }

  Widget _buildSubTitle(BuildContext context) {
    return Column(
      children: <Widget>[
        "Valor Investido".bodyText1(context),
        SpacerBox.v10,
        "R\$3.200.876,00".bodyText2(context),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        "Seu resumo".headline6(context),
        SpacerBox.h10,
        IconButton(
          icon: Icon(
            Icons.more_vert,
            size: 30,
            color: AppColors.primary,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
