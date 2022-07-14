class Story {
  final String _storyTitle;
  final String _choise1;
  final String _choise2;

  Story(
    this._storyTitle,
    this._choise1,
    this._choise2,
  );

  String getStory() {
    return _storyTitle;
  }

  String getChoise1() {
    return _choise1;
  }

  String getChoise2() {
    return _choise2;
  }
}
