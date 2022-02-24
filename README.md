# APIHashReplace

This repository hosts the hashing replacement script and yara rule detailed in the huntress blog. 
https://www.huntress.com/blog/hackers-no-hashing-randomizing-api-hashes-to-evade-cobalt-strike-shellcode-detection



 ## To use the script simply run
> python apihashreplace.py \<32 or 64\> \<name of your shellcode\>


*Eg*
*for 32-bit/x86 payloads*

> python apihashreplace.py 32 shellcode.bin

*for 64-bit/x64 payloads*

> python apihashreplace.py 64 shellcode.bin

This is primarily intended as a proof of concept. And hence has known issues. 
### Comments
- The list of API names and libraries are currently hardcoded. This could could be improved with code to load and parse the exports from a given dll file. 
- Only (dnsapi.dll,ws2_32.dll,kernel32.dll,wininet.dll) are supported in the provided script. Your shellcode will break if you run this script on a file that utilises any other library. 
- For any given export, Hash values will "cycle" upon multiples of 32. Eg a ror value of 1,33 and 65 will produce the same hash value. 
- Much of the logic relies on crude search-and-replace logic, which may accidentally replace the wrong value and break your code. 
