import 'dart:collection';
import 'dart:math';

class LetterImageMap{
  List<String> letters = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
  List<List<String>> listOfImages = [
    ['apple.jpg','axe.jpg','arrow.png','aeroplane.png','ant.png'],
    ['ball.jpg','bat.jpg','bag.jpg','bed.jpg','belt.jpg','boat.png','bug.jpg','bus.png','balloon.png'],
    ['cat.jpg','cow.jpg','camel.jpg','crocodile.jpg','crow.png','caterpillar.jpg','clown.png'],
    ['dog.jpg','doll.jpg','den.png','donkey.png','door.png','dinosaur.png'],
    ['elephant.jpg', 'egg.jpg','elevator.png','envelop.jpeg','eagle.jpg','earth.jpg'],
    ['fox.png', 'fan.png','frog.png','fruits.jpg','fish.png','flower.jpg','frock.jpg'],
    ['goat.png', 'girl.jpg','giraffe.png','gift.jpg','gloves.png','glass.jpg'],
    ['home.png','hippopotamus.png','heart.jpg','hammer.jpg'],
    ['igloo.png','icecream.png','iron.png','ice.jpg','india.png','iceberg.jpg'],
    ['jellyfish.jpg','jug.jpg','jeep.png','jail.png'],
    ['keys.png','king.jpg','knife.png','kiwi.jpg','keyboard.jpg'],
    ['lion.jpg','leaves.jpg','log.png','legs.jpg','ladder.jpg'],
    ['mango.jpg','magnet.png','mushroom.png','moon.jpg','mask.png','map.jpg'],
    ['nest.jpg','needle.jpg','necklace.jpg','nurse.png','nine.png','night.jpg','nails.jpg'],
    ['owl.jpg','ostrich.jpg','orange.jpg','ox.jpg'],
    ['parrot.jpg','pigeon.png','pot.png','popcorn.jpg','panda.jpg','peacock.jpg','penguin.png'],
    ['queen.jpg','question_mark.png','quiver.jpg','quiet.png'],
    ['rainbow.jpg','rose.jpg','rabbit.jpg','river.jpg','rocket.png','robot.png','run.jpg'],
    ['snail.png','socks.png','snowman.jpg','snake.png','santa_claus.png','sun.png','sandwich.png','shark.jpg','shower.jpg'],
    ['television.png','tongue.jpg','train.png','teeth.jpg','toe.jpg','table.png','tiger.png'],
    ['umbrella.png','unicorn.jpg','utensils.jpg','uniform.png','unlock.jpg'],
    ['vegetables.jpg','violin.png','vase.jpg','volcano.jpg'],
    ['whale.png','watch.png','window.jpg','waterfall.png','wheel.png'],
    ['xylophone.jpg','xray.jpg'],
    ['yak.png','yawn.jpg','yellow.png','yoyo.jpg','yolk.png'],
    ['zebra.png','zip.jpg','zoo.jpg'],
  ];

  Map<String, List<String>> letterImageMap;

  LetterImageMap() {
    letterImageMap = HashMap.fromIterables(letters, listOfImages);
  }

  String getLetter(){
    return letterImageMap.keys.elementAt(new Random().nextInt(letterImageMap.length));
  }

  Map<String, bool> getFourImages(String letter){
    var imagesToDisplay = HashMap<String, bool>();

    if(letterImageMap.containsKey(letter)){
      List<String> imagesWithGivenLetter = letterImageMap[letter];
      imagesToDisplay[imagesWithGivenLetter.elementAt(new Random().nextInt(imagesWithGivenLetter.length)).toString()] = true;
    }
    var imagesNotWithTheGivenLetter = List<String>();
    (letterImageMap.values).forEach((list) {
      if(!list.elementAt(0).startsWith(letter.toLowerCase())) {
        imagesNotWithTheGivenLetter.addAll(list);
      }
    });
    while(imagesToDisplay.length != 4){
      imagesToDisplay[imagesNotWithTheGivenLetter.elementAt(new Random().nextInt(imagesNotWithTheGivenLetter.length))] = false;
    }
    return imagesToDisplay;
  }
}
