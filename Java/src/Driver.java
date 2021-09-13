import java.util.Scanner;

public class Driver {

    public static void main (String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("how many conventions?");
        int rows = scanner.nextInt();
        System.out.println();
        String [] [] conventions = new String [rows] [5];
        for(int i = 0; i < rows; i++) {
            for(int j = 0; j < 5; j++) {
                conventions[i][j] = scanner.next();
            }
            System.out.println();
        }

        if(rows <= 1) {
            System.out.println("#T");
            System.exit(1);
        }

        String [] startTimes = new String[rows];
        String [] endTimes = new String[rows];
        String [] days = new String[rows];
        for(int i = 0; i < rows; i++) {
            startTimes[i] = conventions[i][3];
            endTimes[i] = conventions[i][4];
            days[i] = conventions[i][1];
        }

        int sum = 0;
        for (int i = 0; i < conventions.length; i++) {
            sum += Integer.parseInt(conventions[i][2]);
            int startA = Integer.parseInt(startTimes[i]);
            int endA = Integer.parseInt(endTimes[i]);
            int startB = Integer.parseInt(startTimes[(i+1) % conventions.length]);
            int endB = Integer.parseInt(endTimes[(i+1) % conventions.length]);
            if ((startA <= endB) && (startB <= endA)) {
                System.out.println(startA + " " + endA + " " + startB + " " + endB);
                if (days[i].equals(days[i==days.length - 1 ? 0 : (i+1)])) {
                    System.out.println(days[i] + " "  + days[i==days.length ? 0 : (i+1)]);
                    System.out.println("#F");
                    System.exit(1);
                }
            }

        }

        if (sum < 5) {
            System.out.println("#F Sum Conflict");
            System.exit(1);
        }

        System.out.println("#T");
    }

}
