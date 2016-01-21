public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("There are " + lines.length + " lines.");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String cleaned = clean(word);
  String reversed = reverse(clean(word));
  if(cleaned.equalsIgnoreCase(reversed))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String sNew = new String();
  int nLast = str.length()-1;
  for(int nI=nLast; nI>=0; nI--)
  {
    sNew = sNew + str.substring(nI,nI+1);
  }
  return sNew;
}
public String clean(String str)
{
  String clean = "";
  for(int i = 0; i < str.length(); i++)
  {
    if((!str.substring(i,i+1).equals(" "))&&(!str.substring(i,i+1).equals("!"))&&(!str.substring(i,i+1).equals("'"))&&(!str.substring(i,i+1).equals(","))&&(!str.substring(i,i+1).equals(".")))
    {
      clean = clean + str.substring(i,i+1);
    }
  }
  return clean;
}


