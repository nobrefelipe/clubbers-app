### Buttons

- Class: `SUIButton`

There are two kind of buttons you can choose from:

```dart
CLButton.solid()
CLButton.outlined()
```


## Arguments

| Argument              | Type              |           |
| --------------------- | ----------------- |-----------|
|  label                |  String           | required  |
|  onPressed            |  Function         | required  |
|  icon                 |  IconData?        |           |
|  suffix               |  Widget?          |           |
|  widthFator           |  double?          |           |
|  color                |  Color?           |           |


## How to use

```dart{11,18,19,23}
// Primary button
CLButton.solid(
    label: 'Button',
    onPressed: () {},
),

// Primary button with icon 
CLButton.solid(
    label: 'Button with icon',
    onPressed: () {},
    icon: Icons.arrow_forward_ios_rounded,
),

// Custom color and size
CLButton.solid(
    label: 'Half Blue Button',
    onPressed: () {},
    color: CLPalette.darkGrey,
    widthFactor: 0.5,
),

// Outlined Button
CLButton.outlined(
    label: 'Secondary Half Width',
    onPressed: () {},
),
```

### **Examples**

#### Solid Primary Button
![alt text](solid_button.png)

![alt text](solid_button.png)


#### Outlined Button
![alt text](outlined_button.png)

![alt text](outlined_secondary_button.png)
