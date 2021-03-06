public void setup() {
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw(){
}


public boolean findVowel(char sLetter){
	if (sLetter == 'a' || sLetter == 'e' || sLetter == 'i' || sLetter == 'o' || sLetter == 'u') {
		return true;
	} 
	return false;
}

public int findFirstVowel(String sWord) {
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
	if (sWord.length() > 0) {
	}
	for (int i = 0;  i < sWord.length(); i++){
		if (findVowel(sWord.charAt(i))) {
			return i;
		}
	}
	return -1;
}

public String pigLatin(String sWord) {
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
	int test = findFirstVowel(sWord);
	if(test == -1) {
		return sWord + "ay";
	}
	else if (test == 0) {
		return sWord+ "way";
	}
	else if (test >= 1) {
		
		String vowelSegment = sWord.substring(test, sWord.length());
		String initialSegment = sWord.substring(0, test);
		return vowelSegment + initialSegment + "ay";
	}
	
	else {
		return "ERROR!";
	}
}
