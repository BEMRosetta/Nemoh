#include <time.h>
#include <stdio.h>

#ifdef __GNUC__
void printcreditsc_(char *str) {
#else
void PRINTCREDITSC(char *str) {
#endif // GNU_C
    char *end = str;
    while (*end != '.')
        end++;
    *end = '\0';
    printf("NEMOH V1.0 - January 2014. Copyright 2014 Ecole Centrale de Nantes");
    printf("\nNemoh Mercurial v115 compiled by the BEMRosetta project. %s", str);
}

time_t t0;
int total;

#ifdef __GNUC__
void progressinit_(char *str) {
#else
void PROGRESSINIT() {
#endif
    t0 = time(NULL);
    struct tm tm = *localtime(&t0);
    printf("\n%d/%02d/%02d %02d:%02d\n", tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday, tm.tm_hour, tm.tm_min);
}

#ifdef __GNUC__
void progresstotal_(float val) {
#else
void PROGRESSTOTAL(float val) {
#endif
    total = (int)val;
}

#ifdef __GNUC__
void progress_(float val) {
#else
void PROGRESS(float val) {
#endif
    if ((int)val >= total) {
        time_t t = time(NULL);
        double diff_t = difftime(t, t0);
        int hours = (int)(diff_t/(60*60));
        diff_t -= hours*(60*60);
        int mins = (int)(diff_t/60);
        diff_t -= mins*60;

        printf("\nTotal elapsed time: %d:%02d", hours, mins);
    } else {
        time_t t = time(NULL);
        double diff_t = difftime(t, t0);
        double est_t = diff_t*total/val;
        t = (time_t)(t0 + est_t);
        struct tm tm = *localtime(&t);
        printf(". Done !. ET: %d/%02d/%02d %02d:%02d\n", tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday, tm.tm_hour, tm.tm_min);
    }
}
