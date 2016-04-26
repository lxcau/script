#! /bin/bash

#开机自动检查iourc文件是否正确，若不正确，重新生成iourc

host=`hostname`
iourc=`cat /opt/iou/bin/iourc |awk 'NR>1'|cut -d "=" -f 1`
if [ $iourc != $host ]
then
	echo "iourc is not ok, making a new iou license..."
	python /opt/iou/bin/CiscoIOUKeygen.py | sed -n '7,8p'>/opt/iou/bin/iourc
	echo "done"
else
	echo "iourc is ok"
fi
