#coding=utf-8

import os
import sys
import string
import commands
import glob

caffe_exe_folder       = "/home/ubuntu/zhangkeyuan/caffe/build/tools"
caffe_model_prototxt   = "caffe_folder/models/VGG_FACE_deploy.prototxt"
caffe_model_caffemodel = "caffe_folder/models/VGG_FACE.caffemodel"
tmp_folder            = "image-feature8new"

def SceneCategorization_CaffeCNN(image_folder):
    ### data preparation process
    global caffe_exe_folder
    global caffe_model_prototxt
    global caffe_model_caffemodel
    ###
    os.system( 'mkdir {0}'.format(tmp_folder)  )
    if( os.path.isdir(tmp_folder) ):
        os.system( 'rm -r {0}'.format(tmp_folder) )
        os.system( 'mkdir {0}'.format(tmp_folder)  )

    for root, directories, filenames in os.walk(image_folder):
      for onepersdir1 in directories:
	onepersdir=os.path.join(root,onepersdir1)
        test_images_list = glob.glob( onepersdir + "/*.jpg")
        caffe_iterations = len(test_images_list)
	print caffe_iterations
	print "---1---------------------"
	print onepersdir	

        if caffe_iterations > 3:
	    featureoutfile= tmp_folder + '/' + onepersdir1 + '_feature' 
	    filelist=tmp_folder + '/' + onepersdir1 + '.list'
	    
	    os.system( 'for inputfile in `ls {0}/ | grep .jpg`; do echo "$inputfile 1" >> {1}; done'.format(onepersdir, filelist ) )
            os.system( ' sh sedcaffeproto.sh  {0} {1}'.format(filelist,onepersdir )     )

	    os.system('{0}/caffe test -model={1} -weights={2} -iterations={3}  -responses1={4} -feature_layer1=prob '.format(caffe_exe_folder, caffe_model_prototxt, caffe_model_caffemodel, caffe_iterations,  featureoutfile ))
	    os.system('cat {0} >> {1}'.format(filelist ,featureoutfile ))

    ##### END
###      ###
### MAIN ###
###      ###
if __name__=="__main__":
    ###
    image_folder        = sys.argv[1]
    assert( os.path.isdir(image_folder) )
    SceneCategorization_CaffeCNN(image_folder)

##### END
