# Robot Framework Demo

---

### Robot framework is an Open Source Robot Processing Automation (RPA) Tool. Its capabilities can be extended by libraries implemented with Python, Java or many other programming languages.

In this Repository, we'll be covering basics and advance concepts of Robot Framework.

The various topics are divided into modules

| Sr No. | Topic Name |
| ------ | ---------- |
|    1   |  [Variables](https://github.com/r4rajat/robot-framework-demo/tree/master/1.%20Variables)     |




#### In order to Install robot framework, follow the steps mentioned


- Install Python
- Install Pip

```
pip3 install -r requirements.txt
```

In Order to automate browser related activites we need drivers for those browsers. For linux systems feel free to run below command


```
webdrivermanager firefox chrome --linkpath /usr/local/bin 
```

To test the installation, run the below command

```
python3 -m robot appraisal.robot
```

or

```
robot appraisal.bot
```

You could check the detailed execution of the test cases in the default generated ```log.html``` file
