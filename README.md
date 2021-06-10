# jtr-assets
John The Ripper assets

## Introduction
I made this repo mostly for personal use and to keep things organized. Some rules and/or configurations you may find here could have been obtained from the Internet (references are always given in these cases).

By now, my contributions are:
  - Monk rules composed by the following files:
    - [A set of rules](rules/monk.conf)
    - [Some filters I find useful](external/monk.conf)

## Disclaimer
Some of the content in this repository was just pulled from somewhere else. This means that the original license should be applied instead of the present [license](LICENSE). Also, all the credits go to the original authors. References are given below:
  - [KoreLogic](rules/korelogic.conf): [go to original](https://contest-2010.korelogic.com/rules.html) (please note that KoreLogic is already included at John default config).

## Instructions
A great HOWTO was already written by the people from KoreLogic, which you can access [here](https://contest-2010.korelogic.com/rules.html). The process for other rules should be very similar.

If you prefer something more organized though, you can include the desired configurations at your local settings by changing `john-local.conf`. See the [john-local.conf](john-local.conf) file included in this repository for an example.

In fact, if you run `john` inside this repo, it should work out-of-the-box since it reads local files after the default ones.

### Examples

Given a wordlist containing the word **contoso**, you can capitalise and append common symbols followed by some years.

```
$ john --wordlist=words.txt --rules=MonkRulesAppendCommonSpecialYear --stdout

Contoso@2021
Contoso#2021
Contoso!2021
Contoso$2021
Contoso%2021
Contoso.2021
contoso@2021
contoso#2021
contoso!2021
contoso$2021
contoso%2021
contoso.2021
Contoso@2020
Contoso#2020
Contoso!2020
Contoso$2020
...
```

You can run a nice subset of the implemented rules easily as follows:

```
$ john --wordlist=words.txt --rules=MonkRulesQuick --stdout

Contoso@2021
Contoso#2021
Contoso!2021
...
contoso%123
contoso.123
Contoso@1234
Contoso#1234
...
```

Also, you can run all the Monk rules and show only complex passwords containing at least 8 characters:

```
$ john --wordlist=words.txt --rules=MonkRulesAll --external=Filter_ComplexMin8 --stdout

Contoso@2021
Contoso#2021
Contoso!2021
...
Contoso69<
Contoso69>
Contoso69?
Contoso69`
Contoso69~
Contoso69*
...
```

For a complete list of rules and filters, please see [Monk rules](rules.lst) and [Monk filters](filters.lst).
I think their names are self-explanatory, but you can always consult the source code for a better understanding.

## Resources
  - [Wordlist rules syntax](https://www.openwall.com/john/doc/RULES.shtml)
  - [JTR Cheat Sheet](https://countuponsecurity.files.wordpress.com/2016/09/jtr-cheat-sheet.pdf)
  - [John the Ripper/Rules](https://charlesreid1.com/wiki/John_the_Ripper/Rules)
  - [Comprehensive Guide to John the Ripper. Part 5: Rule-based attack](https://miloserdov.org/?p=5477)

## License
This project is licensed under **Creative Commons Zero v1.0 Universal**. See [LICENSE](LICENSE) for more information.
