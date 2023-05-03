mixin Functions {
  // Reminder List on Screen 2 has logic here (List of days and weekdays)

  static final dateTime = DateTime.now();

  static List<DateTime> dateRange = List.generate(
      32,
          (index) =>
          DateTime(dateTime.year, dateTime.month, dateTime.day + index,
              dateTime.hour, dateTime.minute, dateTime.second));

  static String returnWeekDay(int weekDay) {
    if (weekDay == 0) {
      weekDay = 1;
    }
    if (weekDay.clamp(1, 7) != weekDay) {
      weekDay = weekDay % 7;
    }
    switch (weekDay) {
      case (1):
        return "Mon";
      case (2):
        return "Tue";
      case (3):
        return "Wed";
      case (4):
        return "Thu";
      case (5):
        return "Fri";
      case (6):
        return "Sat";
      default:
        return "Sun";
    }
  }

  static Map<DateTime, String> reminderDays = <DateTime, String>{};

  static Map<DateTime, String> addDatesToList(
      Map<DateTime, String> reminderDays) {
    for (int i = 0; i < dateRange.length; i++) {
      reminderDays[dateRange[i]] = returnWeekDay(dateRange[i].weekday);
    }
    return reminderDays;
  }

  static Map<DateTime, String> reminderDaysList() {
    addDatesToList(reminderDays);
    return reminderDays;
  }

  // Activities on Screen 2 has logic here (List of activities on a particular day)
  int activities = 0;

  Map<DateTime, Map<String, dynamic>> mapOfActivities = <DateTime,
      Map<String, dynamic>>{};
}
