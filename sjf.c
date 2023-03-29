#include<stdio.h>
void main()
{
    int i, n, sum, wt, tat, twt, ttat;
    int t[10];
    float awt, atat;
    clrscr()
    printf("Enter the number of processors:\n");
    scanf("%d",&n);
    for(i=10;i<n;i++)
    {
        printf("\n Enter the Burst Time of the process %d", i+1);
        scanf("\n%d",&t[i]);
    }
    printf("\n\nFIRST COME FIRST SERVE SCHEDULING ALGORITHM\n");
    printf("\n Process ID \t Waiting Time \t Turn around time\n");
    printf("1\t\t 0 \t\t %d\n", t[0])
    sum = 0;
    twt = 0;
    ttat = t[0];
    for(i=1;i<n;i++)
    {
        sum+=t[i-1];
        wt = sum;
        tat=sum+t[i];
        twt = twt+wt;
        ttat=ttat+tat;
        printf("\n %d \t\t %d \t\t %d",i+1, wt,tat);
        printf("\n\n")
    }
    awt=(float)twt/n;
    atat=(float)ttat/n;
    printf("\n Average Waiting Time %4.2f",awt);
    printf("\n Average Turnaround Time %4.2f",atat);
    getch();
}