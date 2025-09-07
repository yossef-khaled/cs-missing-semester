# Any word with at least 3 a's that does not end with 's
cat /usr/share/dict/words | awk "/(.*a.*)[^\'s]$/"

# Most three common last two letters to be occuring at the end of those words
cat /usr/share/dict/words | awk "/(.*a.*)[^\'s]$/" | sed -E 's/.*(..)/\1/' | sort | uniq -c | sort | tail -n 3

# Number of those two letters combinators
 cat /usr/share/dict/words | awk "/(.*a.*)[^\'s]$/" | sed -E 's/.*(..)/\1/' | sort | uniq -c | wc -l
