function [out] = random_color(img,labels,nC)
% function [out] = random_color(img,labels,nC)
%
% From a superpixel segmentation, color each pixel randomly.
%
% INPUTS
%	img	    : the input image.
%   labels  : the labeled image.
%   nC      : the number of labels in the image;
% OUTPUTS
%	out     : the colored image.
%
% Copyright 2011, Ming-Yu Liu <mingyliu@umiacs.umd.edu>
%
[height width dim] = size(img);
rimg = zeros(height,width);
gimg = zeros(height,width);
bimg = zeros(height,width);
for i=0:(nC-1)
    idx = find(labels==i);
    rimg(idx) = rand(1);
    gimg(idx) = rand(1);
    bimg(idx) = rand(1);
end
out = img;
out(:,:,1) = rimg;
out(:,:,2) = gimg;
out(:,:,3) = bimg;