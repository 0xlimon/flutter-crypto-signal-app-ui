class Language {
  String name;
  String flag;
  String code;

  Language(this.name, this.flag, this.code);

  static List<Language> LanguageList() {
    return <Language>[
      Language("English", "\u{1f1fa}\u{1f1f8}", "en"),
      Language("فارسی", "\u{1f1ee}\u{1f1f7}", "fa"),
    ];
  }
}
