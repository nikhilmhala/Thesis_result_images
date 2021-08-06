srcFiles = dir('D:\NIKHIL\PHD\MAtlabProjects\MAtlabProjects\nitkdir1\MILK\*.jpg');  % the folder in which ur images exists
fileID = fopen('MILK11.txt','w');
  fprintf(fileID,'%30s  %10s  %10s  \r\n','Name','SSIM','PSNR');
  fclose(fileID);
fileID = fopen('MILK11.txt','a');
for index = 19 : 19%length(srcFiles)
 ff=[];
    filename = strcat('D:\NIKHIL\PHD\MAtlabProjects\MAtlabProjects\nitkdir1\MILK\',srcFiles(index).name);
    filename2= strcat('D:\NIKHIL\PHD\MAtlabProjects\MAtlabProjects\TURBID 3D\Milk\',srcFiles(index).name);
 Image=imread(filename);
 [a,b,c] =size(Image);
 im=im2double(imread(filename2));
 im=imresize(im,[a,b]);
 Image=im2double(Image);
  AA=ssim(im,Image);
    fprintf('the ssim for image %d is %f \n',index,AA);
     
  fprintf(fileID,'%30s  %10.4f  %10.4f\r\n',srcFiles(index).name,AA,psnr(im,Image));
end