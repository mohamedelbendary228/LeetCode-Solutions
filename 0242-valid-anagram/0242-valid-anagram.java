class Solution {
    public boolean isAnagram(String s, String t) {
        if(s.length() == t.length()) {
            char[] charsS = s.toCharArray();
            char[] charsT = t.toCharArray();
            Arrays.sort(charsS);
            Arrays.sort(charsT);
            return Arrays.equals(charsS, charsT);
        }
        return false;
    }
}