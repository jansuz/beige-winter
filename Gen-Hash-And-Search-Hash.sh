# This is not open for discussion or questions.
#
#!/bin/bash
#
# I'm assuming you aready have a basic understanding of JTR.
# I'm assuming you already have a basic understanding of salting.
# I'm assuming you already have the shadow file.
#
# If the salt you have is EGGPLANT
# If the hash you're trying to crack starts with P00...
#
while read line; do echo $(mkpasswd -S EGGPLANT -m sha-512  $line) - $line; done < wordlist.lst | grep -e '$P00'
