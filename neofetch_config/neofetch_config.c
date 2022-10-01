#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(void) {

	char *str = (char *) malloc(sizeof(char) * 2);
    char *ptr;
    int x, temp;

	TOP:
	printf("Neofetch Conifg:\n[1] Standard\n[2] Full\n[3] Alternative\n>: ");

    scanf("%1s", str);
    while ((temp = getchar() != '\n') && temp != EOF);

    x = (int) strtol(str, &ptr, 10);

	if (x == 1) {
		printf("\nStandard neofetch config loaded!\n\n");
	} else if (x == 2) {
		printf("\nFull neofetch config loaded!\n\n");
		system("cp ~/.config/neofetch/config_full.conf ~/.config/neofetch/config.conf");
	} else if (x == 3) {
		printf("\nAlternative neofetch config loaded!\n\n");
		system("cp ~/.config/neofetch/config_alt.conf ~/.config/neofetch/config.conf");
	} else {
		printf("\nBad input! Retrying...\n\n");
		goto TOP;
	}

	system("neofetch");

	free(str);
	return 0;
}
