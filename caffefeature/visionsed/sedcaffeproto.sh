cp /home/ubuntu/zhangkeyuan/visonfeature/caffe_folder/models/VGG_FACE_deploy.prototxt1  /home/ubuntu/zhangkeyuan/visonfeature/caffe_folder/models/VGG_FACE_deploy.prototxt 

 reg=s\#source\:\"important_files\/image.lst\"\#source\:\"$1\"#
echo $reg > sedscriptfile
cat sedscriptfile
 sed -f sedscriptfile /home/ubuntu/zhangkeyuan/visonfeature/caffe_folder/models/VGG_FACE_deploy.prototxt >  /home/ubuntu/zhangkeyuan/visonfeature/caffe_folder/models/VGG_FACE_deploy.prototxt2
mv    /home/ubuntu/zhangkeyuan/visonfeature/caffe_folder/models/VGG_FACE_deploy.prototxt2   /home/ubuntu/zhangkeyuan/visonfeature/caffe_folder/models/VGG_FACE_deploy.prototxt


reg=s\#root_folder\:\"test_image_SceneCategorization\/\"\#root_folder\:\"$2\/\"#

echo $reg > sedscriptfile
cat sedscriptfile

sed -f sedscriptfile  /home/ubuntu/zhangkeyuan/visonfeature/caffe_folder/models/VGG_FACE_deploy.prototxt >  /home/ubuntu/zhangkeyuan/visonfeature/caffe_folder/models/VGG_FACE_deploy.prototxt2

mv    /home/ubuntu/zhangkeyuan/visonfeature/caffe_folder/models/VGG_FACE_deploy.prototxt2   /home/ubuntu/zhangkeyuan/visonfeature/caffe_folder/models/VGG_FACE_deploy.prototxt

diff   /home/ubuntu/zhangkeyuan/visonfeature/caffe_folder/models/VGG_FACE_deploy.prototxt   /home/ubuntu/zhangkeyuan/visonfeature/caffe_folder/models/VGG_FACE_deploy.prototxt1

