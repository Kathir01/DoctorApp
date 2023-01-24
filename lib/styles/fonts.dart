part of styles;

class AppFonts {
  static TextStyle getAppFont({
    FontWeight? fontWeight,
    double? fontSize,
    Color? color,
  }) {
    return GoogleFonts.inter(
        textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ));
  }
}

class TitleFonts{
    static final primaryText= AppFonts.getAppFont(
      fontSize: 20,
    fontWeight: FontWeight.bold,
    color:Colors.black,
    );
     static final secondaryText= AppFonts.getAppFont(fontSize: 30, fontWeight: FontWeight.bold,color:Colors.black);
      static final teritaryText= AppFonts.getAppFont(fontSize: 30, fontWeight: FontWeight.bold,color:Colors.black);
}
