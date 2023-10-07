// this program computed matrix multipication on the gpu using cuda
#include <cstdlib>
#include <cassert>
#include <bits/stdc++.h>
using namespace std;

__global__ void matMult(int *a, int *b, int *c,int N){
    // calculate the global row and column for each thread
    int row = blockIdx.y * blockDim.y + threadIdx.y;
    int col = blockIdx.x * blockDim.x + threadIdx.x;

    // boundary check for our matrix
    if(row<N && col<N){
        int tmp =0;
        for(int i=0;i<N;i++){
            tmp +=a[row*N+i]* b[i*N+col];
        }
        // write back the result
        c[row*N+ col]= tmp;
        // cout<<tmp<<" ";
    }
}


// verify the result in cpu
void verify(int *a, int *b, int *c,int N){
    for(int i=0;i<N;i++){
        for(int j=0;j<N;j++){
            int sum=0;
            for(int k=0;k<N;k++){
                sum+=a[i*N+k]*b[k*N+j];
            }
            // verify the tmp is correct
            // assert(sum == c[i*N + j]);
            // assert(sum == c[i * N + j]);
            // cout<<sum<<" ";
        }
    }
}

int main()
{
    //set our square matrix dimension (2^10 * 2^10 default)
    int N = 1<<10;
    size_t bytes = N*N * sizeof(int);

    // allocate memory for the matrices
    int * a, *b, *c;
    cudaMallocHost(&a, bytes);
    cudaMallocHost(&b, bytes);
    cudaMallocHost(&c, bytes);

    // input the matrices for random number
    for(int i=0;i<N*N;i++){
        a[i]= rand() % 10;
        cout<<a[i]<<" ";
    }
    for(int i=0;i<N*N;i++){
        b[i]= rand() % 10;
    }

    // set our block and grid dimensions
    int threads = 16; // 16 threads per thread block
    int blocks = (N * threads - 1) / threads;

    // setup our kernel launch parameters
    // dim3 is just a structure designed for storing block and grid dimensions.
    dim3 THREADS(threads , threads);
    dim3 BLOCKS(blocks, blocks);

    // launch our kernel
    matMult<<<BLOCKS, THREADS>>>(a,b,c,N);
    cudaDeviceSynchronize();
    // cudaThreadSynchronize();
    
    // verify the result
    verify(a,b,c,N);
    cout<<"Program completed successfully\n";
    return 0;
}