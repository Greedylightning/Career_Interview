import java.util.Set;

public class Solution{

    public boolean SamePoint(String str){
        Set<String> set = new HashSet<String>();
        int x = 0, y = 0;
        for(char s : str.toCharArray()){
            if(s == 'N') y++;
            else if(s == 'S') y--;
            else if(s == 'W') x--;
            else if(s == 'E') x++;
            if(set.contains("" + x + y)){
                direction = 1;
            }
            else set.add("" + x + y);
        }
    }

    public static void main(String[] args){
        Solution test = new Solution();
        boolean result = test.SamePoint("NNS");
        System.out.println(result);
    }
}