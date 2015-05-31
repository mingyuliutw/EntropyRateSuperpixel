from erspy import *
import cv2
import numpy as np

def colormap(input,colors):
	height = input.shape[0]
	width  = input.shape[1]
	output = np.zeros([height,width,3],np.uint8)
	for y in range(0,height):
		for x in range(0,width):			
			id = int(input[y,x])
			for k in range(0,3):
				output[y,x,k] = colors[id,k]
	return output

nC = 100
img = cv2.imread("148089.jpg")
grayImg = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
# print grayImg.shape
seg = ers()
segmentation = seg.ComputeSegmentation(np.uint8(grayImg),nC)[0]

colors = np.uint8(np.random.rand(nC,3)*255)
output = colormap(segmentation,colors)
cv2.imshow("img",img)
cv2.imshow("segmentation",output)
cv2.waitKey()
cv2.destroyAllWindows()
