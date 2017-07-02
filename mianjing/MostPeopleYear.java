public class Solution{

    class Interval{
        int begin;
        int end;

        Interval(){begin = Integer.MIN_VALUE; end = Integer.MAX_VALUE;}
    }

    public void findYear(int[][] people){
        Map<Interval, Integer> map = new HashMap();
        Interval result = new Interval();
        for(int i = 0; i < people.length; i++){
            for(int j = 0; j < people[0].length; j++){
                if(people[0] > result.begin) result.begin = people[0];
                if(people[1] < result.end) result.end = people[1];
            }
        }
        return result[0];
    }
}