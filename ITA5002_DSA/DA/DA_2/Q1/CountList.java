public class CountList {
    private Count[] list;
    private int size;
    private int length;

    public CountList(int size) {
        this.size = size;
        list = new Count[this.size];
        length = 0;
    }

    public void incrementCount(int value) {
        for (int i = 0; i < length; i++) {
            if (list[i].value == value) {
                list[i].count++;
                return;
            }
        }

        list[length] = new Count(value);
        length++;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < length; i++) {
            if (list[i].count >= 2) {
                sb.append(list[i].toString() + "\n");
            }
        }

        return sb.toString();
    }
}
