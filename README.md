# FLUTTER CATALOG TASK:


## Screenshots
                                                   Product Screen                                                   
:-----------------------------------------------------------------------------------------------------------------: |
![](https://github.com/ahmedfyala/ProductCatalogRout/blob/357363b7d77e820fb9e93b5d6ca0b374dc9ec9a6/screen%20shots/product_screen.jpg)

## Directory Structure
<details>
     <summary> Click to expand </summary>
lib
├── core
│   └── errors
│       └── failure.dart
├── utils
│   └── service_locator
│       ├── service_locator.dart
│       ├── api_constants.dart
│       ├── app_assets.dart
│       └── app_color.dart
├── features
│   └── products
│       ├── data
│       │   ├── models
│       │   │   └── product.dart
│       │   └── repos
│       │       ├── product_repo_impl.dart
│       │       └── product_repo.dart
│       └── services
│           └── api_service.dart
└── ui
    ├── manager_product_cubit
    │   ├── products_cubit.dart
    │   └── products_state.dart
    └── view
        ├── widgets
        │   ├── custom_error_widget.dart
        │   ├── loading_widget.dart
        │   ├── product_list_view.dart
        │   └── products_widget.dart
        └── main.dart
</details>


- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
