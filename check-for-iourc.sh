#! /bin/bash
#2016-04-28
#check the iourc file, if the iourc do not contain a correct hostname, use keygen to make a new iourc
host=`hostname`
iourc=`cat /opt/iou/bin/iourc |awk 'NR>1'|cut -d "=" -f 1`
if [ "$iourc" != "$host" ]
then
	echo "iourc is not ok, making a new iou license..."
	python /opt/iou/bin/CiscoIOUKeygen.py | sed -n '7,8p'>/opt/iou/bin/iourc
	echo "done"
else
	echo "iourc is ok"
fi
