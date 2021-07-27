# autoscaling_launch_config_gabage_collect

Gabage Collect shell scripts for AWS EC2 AutoScaling Launch Configuration

# How to use

Listup all EC2 AutoScaling Launch Configurations.

```
$ ./autoscaling_all_launch_conf.sh > ~/all_items.txt
```

Listup running EC2 AutoScaling Launch Configurations.

```
$ ./autoscaling_running_launch_conf.sh > ~/running_items.txt
```

Listup unused EC2 AutoScaling Launch Configurations.

```
$ ./autoscaling_list_unused_launch_conf.sh ~/all_items.txt ~/running_items.txt > ~/unused_items.txt
```

Deregister EC2 AutoScaling Launch Configurations.

```
$ ./autoscaling_delete_launch_conf.sh ~/unused_items.txt
```

# Pre require

* AWS CLI v1 or v2.
* jq
* generic shell commands
    * bash
    * cat
    * sort
    * join
