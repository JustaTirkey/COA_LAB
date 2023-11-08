# Computer Architecture and Organization
This repositories is dedicated to the Computer Architecture and Organizational lab work done by IIT bhubaneshwar student. Lab work done during fifth semester year 2023. Separate branch are present for different Assignment work.
group Members :
1. Justa Tirkey
2. Siri Chandana
3. Jeeshita
4. Lakshmi


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
Refer run file for successful execution.

# End Sem Project 
| Benchmark  | scheduler type | cycle  |        | ipc       |           |
|------------|----------------|--------|--------|-----------|-----------|
|            |                | w ws   | w/o ws | w ws      | w/o ws    |
| Pathfinder | KAWS           | 291545 | 291303 | 2140.3367 | 2142.1147 |
|            | gto            | 299632 | 298896 | 2085.0759 | 2089.6978 |
|            | lrr            | 328182 | 334646 | 1901.3976 | 1864.6704 |
| BFS        | KAWS           | 299271 | 299121 | 102.796   | 102.8475  |
|            | gto            | 299641 | 303491 | 102.6691  | 101.366   |
|            | lrr            | 311202 | 314481 | 98.8549   | 97.8242   |
| NN         | KAWS           | 7362   | 7316   | 163.1421  | 164.1678  |
|            | gto            | 7348   | 7376   | 163.4529  | 162.8324  |
|            | lrr            | 7539   | 7528   | 159.3118  | 159.5446  |
| HS         | KAWS           | 35102  | 37133  | 2544.4165 | 2423.4314 |
|            | gto            | 37069  | 37016  | 2427.6155 | 2431.0913 |
|            | lrr            | 41726  | 41823  | 2156.6716 | 2151.6697 |


| Benchmark  | scheduler type | Pipeline stall | Idle    | scoreboard stall |
|------------|----------------|----------------|---------|------------------|
|            |                |                |         |                  |
| Pathfinder | KAWS           | 3879472        | 114167  | 4995204          |
|            | gto            | 3903814        | 122440  | 5257365          |
|            | lrr            | 5067290        | 131043  | 3658339          |
| bfs        | KAWS           | 3052888        | 1567489 | 9785493          |
|            | gto            | 3240806        | 1661796 | 9665624          |
|            | lrr            | 3568550        | 1837033 | 9573071          |
|            | KAWS           | 53352          | 21557   | 138163           |
|            | gto            | 55433          | 19049   | 139944           |
|            | lrr            | 46009          | 42409   | 147668           |
| HS         | KAWS           | 407784         | 18005   | 139395           |
|            | gto            | 400321         | 17869   | 147123           |
|            | lrr            | 682462         | 19074   | 319408           |
