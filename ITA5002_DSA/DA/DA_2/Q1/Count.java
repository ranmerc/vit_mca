public class Count {
    public int value;
    public int count;

    public Count(int value) {
        this.value = value;
        this.count = 1;
    }

    @Override
    public String toString() {
        return this.value + " has been present " + this.count + " times";
    }
}
