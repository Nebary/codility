// you can write to stdout for debugging purposes, e.g.
// printf("this is a debug message\n");

int solution(int N) {
    int flag = 0;
    int counter = 0;
    int gap = 0;
    while (N) {
        int digit = (N & 1) ? 1 : 0;
        N >>= 1;
        if (!digit && flag) {
            counter++;
        } else if (digit && !flag) {
            flag = 1;
        } else {
            if (counter > gap) gap = counter;
            counter = 0;
        }
    }
    return gap;
}
