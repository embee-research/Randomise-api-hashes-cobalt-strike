# APIHashReplace

This repository hosts the hashing replacement script and yara rule detailed in the huntress blog. 
https://www.huntress.com/blog/hackers-no-hashing-randomizing-api-hashes-to-evade-cobalt-strike-shellcode-detection

*To use the script simply run*
python apihashreplace.py <32 or 64> <name of your shellcode> 


*Eg*
python apihashreplace.py 32 shellcode.bin
