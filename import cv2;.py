import cv2;
print(cv2.__version__)
import numpy as np 

img = cv2.imread('C:\Users\aylla\OneDrive\Imagens\teste', cv2.IMREAD_COLOR)

cv2.namedWindow('hello world')
cv2.imshow('hello world', img)

