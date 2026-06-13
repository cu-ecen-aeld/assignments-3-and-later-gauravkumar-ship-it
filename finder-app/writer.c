#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<stdio.h>
#include<errno.h>
#include<unistd.h>
#include<string.h>

int main(int argc, char *argv[])
{
    
    if(argc < 3)
    {
        
        if(argc ==1 )
        {
            printf("Error: Missing arguments\n");
            printf("No Valid File Path\n");
        }
        else
        {
            printf("Error: Missing arguments\n");
            printf("No Valid String to be Written\n");
        }
        return 1;
    }

    char path[256];
    char str[256];

    strcpy(path, argv[1]);
    strcpy(str, argv[2]);


    int fd = open(path, O_RDWR, S_IRUSR|S_IRGRP|S_IROTH);
    if(fd == -1)
    {
        
            printf("\nFailed to open file - Error No %d\n", errno);
            perror("ERROR: ");
            return 1;       
    }
    else
    {
        
        printf("File opened successfully with file descriptor: %d\n", fd);
        printf("Writing to file...  %s\n", str);

        
        int sz = write(fd, str, strlen(str));

        char buf[256];
        lseek(fd, 0, SEEK_SET);
        read(fd, buf, sz+1 );
        printf("File Written Successfully !!  File Contents:: %s\n", buf);

        close(fd);
        
    }
    return 0;
}