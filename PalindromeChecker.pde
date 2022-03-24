String illegalChars = "!@#$%^&*()-_=+]}[{\\|?/>.<,:;\" '";
public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String betterWord = "";
  for(int i = 0; i < word.length(); i ++)
  {
    boolean currCharBad = false;
    for(int j = 0; j < illegalChars.length(); j ++)
    {
      if(word.charAt(i) == illegalChars.charAt(j))
      {
        currCharBad = true;
      }
    }
    if(!currCharBad)
    {
      betterWord += Character.toLowerCase(word.charAt(i));
    }
  }
  return betterWord.equals(Strutil.reverse(betterWord));
}
