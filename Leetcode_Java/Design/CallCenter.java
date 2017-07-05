class CallCenter{
    List<List<Employee>> employees;
    List<List<Call>> callqueue;

    CallCenter(){}
    public void dispatchCall(Caller caller){
        Call call = new Call(calller);
        dispatchCall(call);
    }

    public void dispatchCall(Call call){
        Employee emp = getHandlerForCall(call);
        if(emp != null){
            emp.receiveCall(call);
            call.setHandler(emp);
        }
        else{
            call.reply("sorry");
            callqueue.get(call.getRank() + 1).add(call);
        }
    }
}

class Call{
    private int rank;
    private Caller caller;
    private Employee handler;

    Call(Caller caller){
        this.caller = caller;
        this.rank = 0;
    }

    String reply(){}
    void setHandler(){}
    void setRank(){}
    void getRank(){}
    void disconnect(){}
}

abstract class Employee{

    private int rank;

    void Employee(){}

    void receiveCall(){}

    void isFree(){}

    void handlerCall(){}

    void escalteCall(){}

    int getRank(){}
}

class Director extends Employee{
    Director(){
        rank = 2;
    }
}