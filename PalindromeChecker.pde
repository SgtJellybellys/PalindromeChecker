public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String a=new String();
  word=word.toLowerCase();
  String b=new String();
  for (int i=0; i<word.length(); i++)
  {
    char c=word.charAt(i);
    if(Character.isLetter(c)==true)
    {
      b=b+word.substring(i, i+1);
    }
  }
  for (int i=b.length()-1; i>=0; i--)
  {
    a=a+b.substring(i, i+1);
  }
  if(a.equals(b))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i=str.length(); i>0; i--)
    sNew=sNew+str.substring(i-1,i);
    return sNew;
}

