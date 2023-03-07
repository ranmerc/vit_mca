package Q2;

public class Line {
    private Point x;
    private Point y;

    public Line(double x1, double y1, double x2, double y2) {
        x = new Point(x1, y1);
        y = new Point(x2, y2);
    }

    public double getLengthOfLine() {
        return Math.sqrt(
            Math.pow((y.getX() - x.getX()), 2) + 
            Math.pow((y.getY() - x.getY()), 2)
            );
    }
}