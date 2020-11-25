# Social Pepper
## Task: Object Detection

### How to run the project:

>Wake up Pepper with
```sh
roslaunch pepper_bringup pepper_full.py nao_ip:=10.0.1.???
```
***

>Run the launch file **pepper.launch** in the package **object_detection_speech**
```sh
roslaunch object_detection_speech pepper.launch ip:=10.0.1.???
```
The parameter **_ip_** is set to **_"10.0.1.230"_** by default.
This command will run three nodes: 
- *stream_capture* for the acquisition of the images of the camera;
- *animated_speech* to let pepper talk;
- *object_detection* for the object detection task on every images it receives.
The latter will load the model, so please wait a bit (first time only)
***

>Run the **head_movement** node
```sh
rosrun object_detection_speech head_movement
```
This node wasn't included into the launch file because it manages the whole cycle of detections:
after the cycle, this node will stop its execution, so if you want to re-start the detections, 
just restart this only one node.
***

### Output
Pepper will talk after looking to its left, right and center, and will say something like:
>"These are the object that I detected:
>On the left I saw: ...
>In the center I saw: ...
>On the right I saw: ..."

Moreover, on the console, the same string will be printed out.
***


### Credits:
>Group 11
>De Simone Giuseppe
>Giaquinto Gennaro
>Marino Christian
>Serritiello Simone
