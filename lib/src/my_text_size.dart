import 'package:flutter/cupertino.dart';

class MyTextSize{
  final BuildContext context;

  MyTextSize(this.context);

  double get normal => ((MediaQuery.of(context).size.height+MediaQuery.of(context).size.width)/2)*0.03;

  double get h7 => ((MediaQuery.of(context).size.height+MediaQuery.of(context).size.width)/2)*0.035;

  double get h6 => ((MediaQuery.of(context).size.height+MediaQuery.of(context).size.width)/2)*0.04;

  double get h5 => ((MediaQuery.of(context).size.height+MediaQuery.of(context).size.width)/2)*0.045;

  double get h4 => ((MediaQuery.of(context).size.height+MediaQuery.of(context).size.width)/2)*0.055;

  double get h3 => ((MediaQuery.of(context).size.height+MediaQuery.of(context).size.width)/2)*0.07;

  double get h2 => ((MediaQuery.of(context).size.height+MediaQuery.of(context).size.width)/2)*0.08;

  double get h1 => ((MediaQuery.of(context).size.height+MediaQuery.of(context).size.width)/2)*0.09;
}