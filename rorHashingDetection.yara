rule CobaltStrike_Ror_Hashing
{
	//Yara rule for detecting ror based hashing used incobalt strike and msfvenom shellcode
	meta:
		author = "Huntress ThreatOps Team"
		source = ""
	strings:
		
		//Detect "ToUpper" function
		$toUpper = {ac 3c 61 7c ?? 2c 20} 
		
		//Detect 64-bit ROR sequence
		$rorX64 = {41 c1 c9 ?? 41 01 c1 e2 ?? }
		
		//Detect 32-bit ROR Sequence
		$rorX86 = { c1 cf ?? 01 c7 e2 ??}
		
		
	condition:
		(filesize < 100KB) and
		$toUpper and
		1 of ($ror*)
		
}
