import 'package:jiffy/jiffy.dart';

// ignore: avoid_classes_with_only_static_members
///
/// This class should be used to format date and time
/// instead of formatting with Jiffy or DateTime  directly
///
class CLDatetime {
  final DateTime dateTime;

  CLDatetime(this.dateTime);

  ///
  /// returns: jan, feb, mar ...
  ///
  String get mmm => jiffyTime().format('MMM');

  ///
  /// DD returns 01, 21, 30 etc...
  ///
  String get dd => jiffyTime().format('dd');

  ///
  /// Time Format
  /// Will output a time like eather '10:00 PM/AM' or '22:00'
  ///
  String time({String? format = 'HH:mm'}) {
    ///
    /// Will come from settings
    /// outputFormat can be 'hh:mm a' (AM/PM)  or 'HH:mm' (24h)
    ///

    return jiffyTime().format(format);
  }

  ///
  /// Full date Format
  /// will output a date like 'Wednesday 23rd June 2021'
  ///
  String fullDate({String? format = 'EEEE do MMMM yyyy'}) {
    return jiffyTime().format(format);
  }

  ///
  /// Short date Format
  /// will output a date like '23/06/21'
  ///
  String shortDate() {
    const String defaultFormat = 'dd/MM/yy';

    return jiffyTime().format(defaultFormat);
  }

  Jiffy jiffyTime() => Jiffy(dateTime);
}
