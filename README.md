# Flutter Icon Shadow

Drop a shadow below your icons. Customizable color, blur sigma, and offset.

Forked from [icon_shadow](https://github.com/mehrtarh/flutter_icon_shadow) package for adding null
safety, and more features.

![sample](https://github.com/chenasraf/flutter_icon_shadow/blob/master/sample.PNG?raw=true)

## How to use

### 1. Add dependencies to pubspec.yaml

```shell
flutter pub add flutter_icon_shadow
```

### 2. Add icons

Simply wrap your icon with `IconShadow`, which accepts an `Icon` widget as the first argument.

More arguments are available: `Color? shadowColor`, `double shadowBlurSigma = 0.9`, and
`Offset shadowOffset = Offset.zero`.

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    IconShadow(
      Icon(
        Icons.lightbulb_outline,
        color: Colors.lightBlueAccent,
        size: 36,
      ),
    ),
    IconShadow(
      Icon(
        Icons.lightbulb_outline,
        color: Colors.lightBlueAccent,
        size: 36,
      ),
      shadowColor: Colors.lightBlueAccent.shadow100,
    ),
    IconShadow(
      Icon(
        Icons.lightbulb_outline,
        color: Colors.lightBlueAccent,
        size: 36,
      ),
      showShadow: false,
    ),
  ],
)
```
