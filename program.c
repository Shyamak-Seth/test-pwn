#include <stdio.h>

void mock() {
    char buffer[130];
    printf("Oh, you wanted a flag? Guess what, it's on the remote machine and there's no way to get it! (...or is there?)\n");
    fflush(stdout);
    gets(buffer);
    return;
}

int main ()
{
    mock();
    return 0;
}