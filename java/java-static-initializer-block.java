static int B;
static int H;
static boolean flag;

static {
        Scanner scanner = new Scanner(System.in);
        B = scanner.nextInt();
        H = scanner.nextInt();
        if (B <= 0 || H <= 0) {
        System.out.println("java.lang.Exception: Breadth and height must be positive");
        } else {
        flag = true;
        }
        scanner.close();
}