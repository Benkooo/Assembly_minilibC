#include <stdio.h>
#include <string.h>

size_t strlen(const char *s);
void *memset(void *s, int c, size_t n);
int strcmp(const char *s1, const char *s2);
int strncmp(const char *s1, const char *s2, size_t n);
void *memcpy(void *dest, const void *src, size_t n);
int strcasecmp(const char *s1, const char *s2);
char *rindex(const char *s, int c);
size_t strcspn(const char *str1, const char *str2);
char *strpbrk(const char *str1, const char *str2);
char *strstr(const char *sta, const char *need);

int main (int ac, char **av) {

   int len = strlen(av[1]);
   int cmp = strcmp(av[1], av[2]);

   printf("STRLEN: %d\n", len);

   printf("STRCMP: %d\n", cmp);

   printf("BEFORE MEMSET: %s\n", av[1]);
   char *new_str = memset(av[1], '0', strlen(av[1]));
   printf("AFTER MEMSET: %s\n", new_str);

   return(0);
}