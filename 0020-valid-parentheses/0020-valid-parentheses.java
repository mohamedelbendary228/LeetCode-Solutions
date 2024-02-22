class Solution {
    public boolean isValid(String s) {
        Stack<Character> stack = new Stack<>();
        for (int i = 0; i < s.length(); i++) {
            char x = s.charAt(i);
            if (x == '{' || x == '(' || x == '[') {
                stack.push(x);
                continue;
            }
            if (stack.empty()) {
                return false;
            }
            char top;
            switch (x) {
                case ')':
                    top = stack.pop(); // (
                    if (top == '{' || top == '[')
                        return false;
                    break;
                case '}':
                    top = stack.pop(); // (
                    if (top == '(' || top == '[')
                        return false;
                    break;
                case ']':
                    top = stack.pop(); // (
                    if (top == '{' || top == '(')
                        return false;
                    break;
            }
        }

        return (stack.isEmpty());
    }
}