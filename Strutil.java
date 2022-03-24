public class Strutil
{
  public static String reverse(String str)
  {
    String sNew = "";
    for(int i = str.length()-1; i >=0; i --)
    {
      sNew += str.charAt(i);
    }
    return sNew;
  }
}
