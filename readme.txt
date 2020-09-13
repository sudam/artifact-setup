
1.Environment SetUp

The script setup.sh is configured to set up the environment appropriate for experiments. It will mainly create scripts/src/resources folder where all raw and training data is stored and download all datasets and extract and move dataset files to scripts/src/resources.

For example run the following command to configure the execution environment:
./setup.sh 

2.Generating Training Data

The script datapreparator.sh is configured to execute the Data Preprocessing and Data Transformation phases in our experimental methodology, in which the downloaded raw data is cleaned and converted into data formats suitable for different learning types. 

It requires two arguments: 
-l with either abl (for attribute-based learning) or dll (for description logic learning) specifying the learning type intended for experimentation
-d with either GHTraffic, Twitter, GoogleTasks or Slack specifying the type of dataset

Depending on the dataset and learning type specified, the training data (e.g., ARFF or OWL) will be generated and stored in the resources folder. Note that it can take quite some time to generate training data.

For example to perform experiments on attribute-based learning algorithms with GoogleTasks dataset, cd into scripts folder and run the following command:
./datapreparator.sh -l abl -d GoogleTasks

3.Training Classifiers

The script modellearner.sh is configured to execute the Model Construction step in which the model artefacts are generated from training data created by datapreparator.sh.

It requires three arguments: 
-a with either C4.5, RIPPER, PART or OCEL specifying the learning algorithm intended for experimentation
-d with either GHTraffic, Twitter, GoogleTasks or Slack specifying the type of dataset
-i with the target index to train in attribute-based learning or -c with the name of target class to train in description logic learning

For example run the following command to generate a classification model by C4.5 for the ResponseStatusCode target attribute (with index 1) of the GoogleTasks dataset:
./modellearner.sh -a C4.5 -d GoogleTasks -i 1

The script also contains options -ilist and -clist with the **dataset type** as the value for retrieving the full list of target attribute indexes or target class names that are optimal for predictions in each dataset. By referring to these lists, you can identify the target attribute index or the target class name that you want to learn.

For example run the following command to access the target attribute list for the GoogleTasks dataset:
./modellearner.sh -ilist GoogleTasks

4.Testing Classifiers

The script modelevaluator.sh is configured to execute the Model Evaluation step in which the generated model artefacts are tested using the cross validation technique.

It requires the same input arguments as modellearner.sh.

Depending on the specified algorithm and the target, the model will be evaluated and the results will be output to the terminal. Note that the evaluation results can slightly differ in each execution as cross validation randomly generates folds.

For example run the following command to cross validate the C4.5 model for the ResponseStatusCode target attribute (with index 1) of the GoogleTasks dataset:
./modelevaluator.sh -a C4.5 -d GoogleTasks -i 1