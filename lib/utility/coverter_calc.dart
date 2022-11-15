class CoverterCalc {
  static double convert(double m, String from, String to) {
    late double result;
    switch (from) {
      case 'milimeter':
        switch (to) {
          case 'centimeter':
            result = m / 10;
            break;
          case 'meter':
            result = m / 1000;
            break;
          case 'kilometer':
            result = m / 1000000;
            break;
          default:
            result = m;
        } // end inner switch
        break; // milimeter
    } // end outer switch

    return result;
  }
}
