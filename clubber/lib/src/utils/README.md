## Utils

## CLDatetime
This class is a wrapper for the Jiffy package. 

We shoudl always be dependet on `CLDatetime` for datetime instead of Jiffy directly.

### **mmm**
Returs a short form month. 

Eg.: jan, feb, mar, etc...
```dart
final CLDatetime date = CLDatetime('21-10-2021');

final String shortMonth = date.mmm; // Oct
```

### **dd**
Returs the calendar day. 

Eg.: 20, 25, 30, etc....
```dart
final CLDatetime date = CLDatetime('21-10-2021');

final String day = date.dd; // 21
```

### **time**
Returs the time based on a given format. 

Defaults to 'hh:mm'. Eg.: 20:18 or 8:18pm

```dart
final CLDatetime date = CLDatetime('21-10-2021 20:18:04Z');

final String time24 = date.time(); // 20:18

final String time = date.time(format: 'hh:mm a'); // 8:18pm
```

### **fullDate**
Returns a date based on a given format. 

Defaults to 'EEEE do MMMM yyyy'. Eg.: Tuesday 26th June 2021
```dart
final CLDatetime date = CLDatetime('26-10-2021 20:18:04Z');

final String time24 = date.fullDate(); // Tuesday 26th June 2021

final String time24 = date.fullDate(format: 'do MMMM yyyy'); // 26th June 2021
```

### **shortDate**
Returns a date like 26/10/2021
```dart
final CLDatetime date = CLDatetime('26-10-2021 20:18:04Z');

final String time24 = date.shortDate(); // 21/10/2021

```