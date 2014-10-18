
1. 安装MPICH2
sudo apttitude install libmpich-dev mpich2 libmpich10 mpich

3.开启mpi服务器并且进行编译执行mpi文件
3.1 编译mpi文件(-o Hello 指定输出文件的名称)：
mpicc -o Hello Hello.c
或者
g++ Hello.c -lmpi -o Hello

3.2 执行生成的二进制文件(-np 4:表示用4个进程)：mpirun -np 4 ./Hello
运行结果如下:
> user@ubuntu:~/test_mpi_examples$ mpirun -np 4 ./Hello
Hello world! Processor 0 of 4 on ubuntu
Hello world! Processor 1 of 4 on ubuntu
Hello world! Processor 3 of 4 on ubuntu
Hello world! Processor 2 of 4 on ubuntu

4.关闭mpi服务器
运行命令：mpdcleanup

附加测试文件（Hello.c）：

```cc

#include "mpi.h"
#include <stdio.h>
#include <math.h>

int main(int argc, char **argv)
{
int myid, numprocs;
int namelen;
char processor_name[MPI_MAX_PROCESSOR_NAME];

MPI_Init(&argc, &argv);
MPI_Comm_rank(MPI_COMM_WORLD, &myid);
MPI_Comm_size(MPI_COMM_WORLD, &numprocs);
MPI_Get_processor_name(processor_name, &namelen);

fprintf(stderr, "Hello world! Processor %d of %d on %s\n", myid, numprocs, processor_name);

MPI_Finalize();
return 0;
}
```
