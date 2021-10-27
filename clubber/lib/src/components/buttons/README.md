### **Buttons**

- Class: `SUIButton`

There are two kind of buttons we can choose from:

```dart
CLButton.solid()
CLButton.withShadow()
CLButton.outlined()
```


## **Arguments**

| Argument              | Type              |           |
| --------------------- | ----------------- |-----------|
|  label                |  String           | required  |
|  onPressed            |  Function         | required  |
|  suffix               |  Widget?          |           |
|  widthFator           |  double?          |           |
|  color                |  Color?           |           |
|  shadow               |  BoxShadow?       | defaults to `CLShadows.coloredShadow`  |


## **How to use**

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

#### Solid Button
![alt text](preview/solid_button.png)

![alt text](preview/solid_secondary_button.png)


#### Outlined Button
![alt text](preview/outlined_button.png)

![alt text](preview/outlined_secondary_button.png)
