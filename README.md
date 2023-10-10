
# GPGPU-sim states of wraps
This is my mid sem project done in my third year of Dual degree(B.Tech and M.Tech in Computer Science and Engineering) for the course Computer Organisation and Architecture. 

In this project we need to modify the GPGPU-sim source code to introduce the counters which would capture the states of wraps for a particular application. Then we need to plot the graph for warp state breakdown corresponding to different applications.  

## Steps to run the code 
Assuming that gpgpu-sim_distribution is already build in your system.To run the applictaion and check for the states of the warps, run the following commands from the home directory of the codes.

```
cp -r ~/gpgpu-sim_distribution/configs/tested-cfgs/SM2_GTX480/* ./ 
```
Run the cuda file for the application. Example for nw is provided.
```
nvcc -lcudart needle.cu
./a.out 2048 10 

```
Refer run file for succesful execution.
