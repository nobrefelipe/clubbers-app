
# **Bottom Sheet**

- Class: `CLBottomSheet`

Use this class when you want to display a bottom sheet.

Set `floatted: false` if you want to disable the floatted effect (have margin all around it, like some iOS bottom sheets). 

You can also have a `trailing` widget that can be useful for a close button when you have `enableDrag` set to false.


## **Arguments**


| Argument              | Type              |           |
| --------------------- | ----------------- |-----------|
|  context              |  BuildContext     | required  |
|  content              |  Widget           | required  |
|  trailing             |  Widget?          |           |  
|  floatted             |  bool             | defaults to true |
|  enableDrag           |  bool             | defaults to true |



## **How to use**
Set up the bottom sheet

```dart
Future<void> _openBottomSheet(BuildContext context) async {
  await CLBottomSheet.show(
    context: context,
    content: Container(
      height: 400,
      child: Center(
        child: CLText.heading(
          'Bottom Sheet',
          heading: 2,
        ),
      ),
    ),
  );
}
```
Open it when you need
```dart
CLButton.solid(
    label: 'Open Botton Sheet',
    onPressed: () async {
        
        await _openBottomSheet(context);
        
        // Will be called after the bottom sheet is closed
        print('Bottom sheet closed');
    },
),
```


## **Example**
![alt text](preview/preview.jpg)