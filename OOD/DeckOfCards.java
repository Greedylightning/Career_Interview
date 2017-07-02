public class Suit{

    int type;
    Suit(int type){this.type = type;}
    void getType(){return this.type;}
}

public class Card{
    private boolean available;
    private int value;
    private Suit suit;

    Card(int value, Suit suit){
        this.available = true;
        this.value = value;
        this.suit = suit;
    }

    int getValue(){}
    boolean isAvailable(){}
    boolean setAvailable(){}
    boolean setUnavailable(){}

    Suit getSuit(){}
}

public class Deck{
    private ArrayList<Card> cards;
    private int availableCards = 54;

    public void setDeckOfCards(ArrayList<Card> cards){}
    public void shuffle(){}
    public void getAvailaleCards(){}
    public void dealCards(){}
}

public class Hand{
    private ArrayList<Card> hand = new ArrayList<Card>();

    void getCard(Card card){hand.add(card);}
    int score(){}

}