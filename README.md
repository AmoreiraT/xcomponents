# xcomponents

Detecta a plataforma e desenha a UI de acordo com os parametros nativos de Cupertino ou Material

## Getting Started

```

abstract class DetectPlataform<A extends Widget, I extends Widget,
    W extends Widget> extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return createAndroidWidget(context);
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return createIosWidget(context);
    } else {
      return createWebWidget(context);
    }
  }

  I createIosWidget(BuildContext context);
  A createAndroidWidget(BuildContext context);
  W createWebWidget(BuildContext context);
}


```

![' '](./assets/images/screenshot.png)
