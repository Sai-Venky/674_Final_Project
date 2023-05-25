# 674_Final_Project



To run code properly you need to ensure following things:
1. Ubuntu 20  (else opendr will not work)
2. need to git clone Meshgraphormer library (for Mano layers - manopth) Please read and follow exact steps required to build it.
3. copy all the datasets
4. Maintain project structure as present in our repository




To test our model
1. run python train.py

To Train our model
1. Either edit the options in argparse function run_eval_only to default = "False"
2. OR run python train.py --run_eval_only False

Note that our trained Model is only checkpoint-1.0.2

Also note we faced a lot of issues in opendr because of which we really lost track of changes required for getting it installed
Finally we had to dual boot Ubuntu in one of our systems as opendr was not working on colab as well.



Following parts of code has been written by :

1. Atharva :

    a. renderer.py - took help from mesh graphormer but restructured it to fit out purpose (259-299)

    b. graphormer.py - 23 to 118 - Instead of using an hour gass or Auto-decoder-encoder network we replaced initial embeddings using Attention layers
    
    c. train.py -  updated the loss functions and argparse to fit our model needs. (38-64  )
    
    d. config.json - trained all the networks  -In all 3 networks 1. Original MeshGraphormer 2. Pruned MeshGraphormer 3. Pruned Graphormer with Huber's loss
    
    e. gcnn.py (105 to 154)
    
    

2. Sai Venkatesh:
    
    a. train.py - implemented major chunk (135-296 and a lot of other functions)
    
    b. graphormer.py - implemented major chunk of it The GCNN part

    c. gcnn.py (55 to 103)

    d. e2e_network.py (44 to 72)

3. Shreya:
    
    a. train.py - helped in implementing data loader part (67-132 297-316 )  hand_mesh_tsv.py (311-335)
    
    b. evaluated all models
    
    c. Helped in preparing report and presentation - major part of it.


Link of meshgraphormer: https://github.com/microsoft/MeshGraphormer

Link of check point : https://drive.google.com/drive/folders/1I3ysBf1hZLAXN2F66xQShR1bXIRnmCwS?usp=share_link

Link of Google drive folder: https://drive.google.com/drive/folders/1KoTjvdSwIc34kbpLB9ouUU5sj_SqYH6Y?usp=share_link

Please refer to project structure as present in the github repository: https://github.com/Sai-Venky/674_Final_Project.git

If you are trying to run the code put the check points in exact same project structure as present in the picture on Google drive.
In case of any issue do contact us, we will push the installation instructions back in this same file on git.

