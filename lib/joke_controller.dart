import 'joke.dart';

class JokeController {
  int _jokeNumber = 0;
  List<Joke> _jokeData = [
    Joke(
        jokeTitle:
            "    A child asked his father, \"How were people born?\" So his father said, \"Adam and Eve made babies, then their babies became adults and made babies, and so on.\""),
    Joke(
        jokeTitle:
            "The child then went to his mother, asked her the same question and she told him, \"We were monkeys then we evolved to become like we are now.\""),
    Joke(
        jokeTitle:
            "The child ran back to his father and said, \"You lied to me!\" His father replied, \"No, your mom was talking about her side of the family.\""),
    Joke(
        jokeTitle:
            "Teacher: \"Kids,what does the chicken give you?\" Student: \"Meat!\" Teacher: \"Very good! Now what does the pig give you?\" Student: \"Bacon!\" Teacher: \"Great! And what does the fat cow give you?\" Student: \"Homework!\""),
    Joke(
        jokeTitle:
            "The teacher asked Jimmy, \"Why is your cat at school today Jimmy?\" Jimmy replied crying, \"Because I heard my daddy tell my mommy, 'I am going to eat that pussy once Jimmy leaves for school today!'\""),
    Joke(
        jokeTitle:
            "A housewife, an accountant and a lawyer were asked \"How much is 2+2?\" The housewife replies: \"Four!\". The accountant says: \"I think it's either 3 or 4. Let me run those figures through my spreadsheet one more time.\" The lawyer pulls the drapes, dims the lights and asks in a hushed voice, \"How much do you want it to be?\""),
    Joke(jokeTitle: "That's all the jokes for today! Come back another day!"),
  ];

  String getJoke() {
    return _jokeData[_jokeNumber].jokeTitle;
  }

  String getButton(int number) {
    if (number == 1 && _jokeNumber <= 5) {
      return "This is funny";
    } else if (number == 2) {
      return "This is not funny";
    } else {
      return "Restart";
    }
  }

  void nextJoke() {
    if (_jokeNumber <= 5) {
      _jokeNumber++;
    } else {
      restart();
    }
  }

  void restart() {
    _jokeNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_jokeNumber <= 5) return true;
    return false;
  }
}
