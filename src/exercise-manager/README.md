We created a exercise tracker which will also solve the problem of cheating as if someone just click their picture and upload it into Helsena app without completing his workout. We identified this backlog from Helsena app and solved it using openpose library which  will check all poses in Real-Time by monitoring our postures and track their progress. In future we will add more functionality like if an incorrect posture or deviation from the actual posture is observed, the user will receive a text or audio reminder(alarm). The text messages will be accompanied by images of correct posture and users’ incorrect posture. 




Step 1: Create a new virtual environment
conda create — name AIMachine

Step 2: Activate your virtual environment
conda activate AIMachine

Step 3: Install Python
conda install python==3.7.6

Step 4: Install the latest version of Tensorflow
conda install tensorflow
Optional reading: https://docs.anaconda.com/anaconda/user-guide/tasks/tensorflow/

Step 5: Create a new working directory and go into the folder.
mkdir myWorkspace
cd myWorkspace

Step 6: Clone the pose estimation repository.

git clone https://github.com/deepeshgrover/Fitness_Freak.git

Step 7: Enter the folder and install the requirements.

cd src/exercise-manager
cd tf-pose-estimation
pip install -r requirements.txt

Step 8: Install SWIG

conda install swig

Step 9: Build C++ library for post-processing.

cd tf_pose/pafprocessswig -python -c++ pafprocess.i && python3 setup.py build_ext --inplace

Step 10: Install OpenCV.

pip install opencv-python

Step 11: Install tf-slim library.

pip install git+https://github.com/adrianc-a/tf-slim.git@remove_contrib

Step 12: Download Tensorflow Graph File(pb file).

cd models/graph/cmubash download.shcd ../../..

Step 13: Run a quick test!

python run_webcam.py --camera my_planks_video.py 

