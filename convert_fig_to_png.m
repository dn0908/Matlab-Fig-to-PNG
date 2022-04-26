% converting all the fig files to png (in a folder) %

function [  ] = fig_to_png_convert(  ) 

cd c:\FILENAME % Enter your file path here

currentFolder = pwd

fig=dir(fullfile(pwd,'\*.fig')); 

for n=1:1:length(fig)
  open(fig(n).name);

  % change -r500 for resolution %
  print('-dpng', '-r500', strcat(fig(n).name(1:end-4),'.png')); 
  
  close all; 
end 
 
end 