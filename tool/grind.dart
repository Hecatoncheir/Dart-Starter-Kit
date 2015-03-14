import 'package:grinder/grinder.dart';
import 'dart:io';

main(args) => grind(args);

@Task('Initialize stuff.')
init(GrinderContext context) {

  Process.run('pub',['get']).then((results){
      print(results.stdout);
      print('Pub is ready'); 
    });

  Process.run('bundle',[]).then((results){
      print(results.stdout);
      print('Bundle ready');
    });

  Process.run('compass', ['init']).then((ProcessResult results) {
      print('Compass Initialize');
    });

}

@Task('Make build')
@Depends(compileStyles)
  build(GrinderContext context){
  
    print('Make build');
  
    Process.run('compass', ['compile']).then((ProcessResult results) {
        print(results.stdout);
        print('Styles compiled');
      });
       
  }


@Task('Compiled styles')
compileStyles(context){

  Process.run('pub',['build']).then((results){
      print(results.stdout);
      print('Build ready');
    });

}

