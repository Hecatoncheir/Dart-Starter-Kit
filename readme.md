# Dart Starter Kit

Designed to create the application structure

[![ScreenShot](https://raw.githubusercontent.com/Rasarts/Dart-Starter-Kit/preview/2015-03-14%2001_10_42.gif)](http://youtu.be/sSlGonSMSuM)

Need Compass, CssComb, Sass, LiveReload, Dart

install 
gem guard-livereload <br>
gem guard-compass <br>
gem install guard-ctags-bundler // if you want 
<br>
pip install livereload <br>

For worck whith:

```
pub get // for get dependencies
```

```
grinder init // for init compass, run pub get and bundle
```

```
guard -i // for run LiveReload server
```

and 

```
grind build -for make build and compile styles
```

------
<pre>
.
├── Gemfile
├── Guardfile
├── bin
├── config.rb
├── pubspec.yaml
├── readme.md
└── web
    ├── assets
    │   ├── fonts
    │   ├── images
    │   ├── scripts
    │   │   └── main.dart
    │   └── styles
    │       ├── components
    │       ├── main.scss
    │       ├── modules
    │       ├── print.scss
    │       └── screen.scss
    ├── components
    └── index.html

10 directories, 10 files
</pre>
