# WordleHelp
PowerShell script to help with clues for Wordle https://www.nytimes.com/games/wordle/index.html 

### Usage 
```
WordleHelp.ps1 -with XXXXX -without XXXXX -exactposition S__A_
```

- Invoke without any paramters for getting few handful of words to begin with. 
- As you progress, based on green, yellow or gray color coding, feed the characters into respective parameters

Thanks to https://github.com/dwyl/english-words for list of words, using which I created the subset list of words having exactly 5 characters.
