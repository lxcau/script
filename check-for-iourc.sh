#! /bin/bash

#check the iourc file, if the iourc do not contain a correct hostname, use keygen to make a new iourc
#change the "cut -d '=' -f1" to "cut -d ' ' -f1"
#recent change 20160504
host=`hostname`
iourc=`tail -1 /opt/iou/bin/iourc | cut -d " " -f 1`
if [ "$iourc" != "$host" ]
then
	echo "iourc is not ok, making a new iou license..."
	python /opt/iou/bin/CiscoIOUKeygen.py | sed -n '7,8p'>/opt/iou/bin/iourc
	echo "done"
else
	echo "iourc is ok"
fi
