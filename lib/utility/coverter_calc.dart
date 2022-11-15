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
        } // end milimeter inner switch
        break; // milimeter

      case 'centimeter':
        switch (to) {
          case 'milimeter':
            result = m * 10;
            break;
          case 'meter':
            result = m / 100;
            break;
          case 'kilometer':
            result = m / 100000;
            break;
          default:
            result = m;
        } // end centimeter switch
        break; // centimeter

      case 'meter':
        switch (to) {
          case 'milimeter':
            result = m * 1000;
            break;
          case 'centimeter':
            result = m * 100;
            break;
          case 'kilometer':
            result = m / 1000;
            break;
          default:
            result = m;
        } // end meter switch
        break; // meter

      case 'kilometer':
        switch (to) {
          case 'milimeter':
            result = m * 1000000;
            break;
          case 'centimeter':
            result = m * 1000000;
            break;
          case 'meter':
            result = m * 1000;
            break;
          default:
            result = m;
        } // end kilometer switch
        break; // kilometer

      default:
        result = m;
    } // end outer switch

    return result;
  }
}
