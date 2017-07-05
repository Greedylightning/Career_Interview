public enum VehicleSize{Motorcycle, Compact, Large}

public abstract class Vecicle{
    ArrayList<ParkingSpot> parkingSpots = new ArrayList<>();
    VehicleSize size;
    int spotNeeded;

    void parkInSpot(ParkingSpot s){
        parkingSpots.add(s);
    }

    abstract boolean canFitInSpot(ParkingSpot spot){}

}

public class Bus extends Vehicle{
    Bus(){
        this.spotNeeded = 5;
        this.size = Vehicle.Large;
    }
}

public class Car extends Vehicle{
    Car(){
        this.spotNeeded = 1;
        this.size = Vehicle.Compact;
    }
}

public class Motorcycle extends Vehicle{
    MotorCycle(){
        this.spotNeeded = 1;
        this.size = Vehicle.Motorcycle;
    }
}

public class ParkingLot{
    Level[] levels;
    
    ParkingLot(){}
    public parkVehicle(){}
}

class Level{
    int floor;
    ParkingSpot[] spots;
    int availableSpots;

    public Level(){}

    boolean parkVehicle(){}

    int findAvailableSpot(){}

    void spotFreed(){}
}

class ParkingSpot{
    Vehicle vehicle;
    VehicleSize size;
    int row;
    int spotNumber;
    Level level;

    ParkingSpot(){}

    boolean isAvailable(){}

    boolean canFitVehicle(){}

    boolean park(){}

    void removeVehicle(){}

    
}

