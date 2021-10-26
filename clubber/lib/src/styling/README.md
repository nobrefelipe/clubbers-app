
## **Fonts**
- Class: `CLFonts`

```dart{2,3}
class CLFonts {
  static String pulpDisplay = 'PulpDisplay';
}
```
And this is how we use it:
```dart{2}
Textstyle(
    fontFamily: CLFonts.pulpDisplay,
),
```


## **Color Palette**

- Class: `CLPalette`

Always use `CLPalette` class when you need to set a color (text, background, border, etc...).

These are the colors on the Brand Guidelines.


``` dart
class CLPalette {
   static Color primary = const Color(0xFF7B61FF);

  static Color darkGrey = const Color(0xFF1C222B);
  static Color grey = const Color(0xFF2E3A4B);
  static Color lightGrey = const Color(0xFFB5B5B5);

  static Color lightRed = const Color(0xFFFB7B7B);
}
```

And this is how we use it:
```dart{2}
Container(
    color: CLPalette.primary,
),
```


## **Spacing**

- Class: `CLSpacing`

For general spacing (margin and padding) always use the `CLSpacing` class.

Check the full class down below for all attributes of `CLSpacing`.

### Individual values:
```dart{3}
// Adds 16 pixels top padding
Padding(
    padding: EdgetInsets.only(top: CLSpacing.s16),
),
```


### Horizontal spacing
```dart{3}
// Adds 16 pixel horizontal padding
Padding(
    padding: CLSpacing.horizintalSpacing16, 
),
```

### Vertical spacing
```dart{3}
// Adds 16 pixel vertical padding
Padding(
    padding: CLSpacing.verticalSpacing16, 
),
```

### All around spacing
```dart{3}
// Adds 16 pixel horizontal and vertical padding
Padding(
    padding: CLSpacing.spacing16, 
),
```

### `CLSpacing`

``` dart
class CLSpacing {
    ///
    /// CONST VALUES
    ///
    static const s8 = 8.0;
    static const s16 = 16.0;
    static const s24 = 24.0;
    static const s34 = 34.0;
    static const s52 = 52.0;

    ///
    /// DEFAULT SPACING
    ///
    static const EdgeInsets defaultSpacing = EdgeInsets.symmetric(
    vertical: s16,
    horizontal: s24,
    );

    ///
    /// HORIZONTAL SPACING
    ///
    static const EdgeInsets horizintalSpacing8 = EdgeInsets.symmetric(horizontal: s8);
    static const EdgeInsets horizintalSpacing16 = EdgeInsets.symmetric(horizontal: s16);
    static const EdgeInsets horizintalSpacing24 = EdgeInsets.symmetric(horizontal: s24);
    static const EdgeInsets horizintalSpacing34 = EdgeInsets.symmetric(horizontal: s34);
    static const EdgeInsets horizintalSpacing52 = EdgeInsets.symmetric(horizontal: s52);

    ///
    /// VERTICAL SPACING
    ///
    static const EdgeInsets verticalSpacing8 = EdgeInsets.symmetric(vertical: s8);
    static const EdgeInsets verticalSpacing16 = EdgeInsets.symmetric(vertical: s16);
    static const EdgeInsets verticalSpacing24 = EdgeInsets.symmetric(vertical: s24);
    static const EdgeInsets verticalSpacing34 = EdgeInsets.symmetric(vertical: s34);

    ///
    /// HORIZONTAL & VERTICAL SPACING
    ///
    static const EdgeInsets spacing8 = EdgeInsets.all(s8);
    static const EdgeInsets spacing16 = EdgeInsets.all(s16);
    static const EdgeInsets spacing24 = EdgeInsets.all(s24);
    static const EdgeInsets spacing34 = EdgeInsets.all(s34);
}

```

## **Border Radius**

- Class: `CLBorderRadius`

Aways use `CLBorderRadius` class  when you need to set a border radius.


```dart
class CLBorderRadius {

    static BorderRadius r6 = const BorderRadius.all(Radius.circular(6));
    static BorderRadius r12 = const BorderRadius.all(Radius.circular(12));
    static BorderRadius r18 = const BorderRadius.all(Radius.circular(18));
    static BorderRadius r24 = const BorderRadius.all(Radius.circular(24));
    static BorderRadius r48 = const BorderRadius.all(Radius.circular(48));

    // For the cases where we need a bigget radius
    static BorderRadius borderRadius(double radius) => BorderRadius.all(Radius.circular(radius));

}
```

Use it like this:
```dart{3}
Container(
    decoration: BoxDecoration(
        borderRadius: CLBorderRadius.r20,
    )
),
```

## **Box Shadows **

- Class: `CLShadows`

Always use `CLShadows` class when you need to add a shadow

```dart
class CLShadows {
    ///
    /// DEFAULT SHADOW
    ///
    static BoxShadow defaultShadow = BoxShadow(
        color: CLPalette.primary.withOpacity(0.38),
        blurRadius: 15,
    );

    ///
    /// ACTIVE SHADOW
    ///
    static BoxShadow activeShadow = BoxShadow(
        color: CLPalette.primary.withOpacity(0.5),
        blurRadius: 16,
    );
}
```

Use it like this:
```dart{3}
Container(
    decoration: BoxDecoration(
        boxShadow: CLShadows.defaultShadow,
    )
),
```
