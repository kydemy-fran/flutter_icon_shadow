# Flutter Icon Shade

Flutter Icon shadow

Forked from [flutter_flutter_icon_shade](https://github.com/chenasraf/flutter_flutter_icon_shade) for
null safety.

![sample](https://github.com/chenasraf/flutter_flutter_icon_shade/blob/master/sample.PNG?raw=true)

## How to use

### 1. Add dependencies to pubspec.yaml

```yaml
flutter_icon_shade: ^1.0.1
```

### 2. Add icons

```dart
Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconShadowWidget(Icon(Icons.lightbulb_outline,
                    color: Colors.lightBlueAccent, size: 36)),
                IconShadowWidget(Icon(Icons.lightbulb_outline,
                    color: Colors.lightBlueAccent, size: 36),shadowColor: Colors.lightBlueAccent.shade100,),
                IconShadowWidget(Icon(Icons.lightbulb_outline,
                    color: Colors.lightBlueAccent, size: 36),showShadow: false,)
              ],
            )
```
