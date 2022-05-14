# Project Development GUIDE

## Assets

Add all the assets in the <Projects>/assets/.

Then run the following command in the terminal.

```sh
flutter packages pub run build_runner build
```

It will generate a **assets/assets.gen.dart** file in the **lib** folder

now you can use the assets as **Assets.<foldername>.<filename>**

for more information you can go to [Flutter Assets Gen](https://pub.dev/packages/flutter_gen_runner)


## App Font
To define the Default font for the project 
- Go to **lib > app > ui > theme > text_theme.dart**
-  change the font to **GoogleFonts.fontName** ```   var AppTextStyle = GoogleFonts.lexendDeca ```
