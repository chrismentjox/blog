helm delete `helm list -n avi-system|grep ako|awk '{print $1}'` -n avi-system
