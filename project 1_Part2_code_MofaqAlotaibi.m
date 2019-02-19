clc
clear 
close all
D2x2 = [0,2;3,1]*(1/4)*255; % dither matrix 2x2
D4x4 = [0,8,2,10;12,4,14,6;3,11,1,9;15,7,13,5]*(1/16)*255; % dither matrix 4x4
N1 = 2; % matrix 2x2
N2 = 4; % matrix 4x4
%--------------------------------------------------------------------------
algray = imread('al_gray.jpg'); % original gray_cale image 
figure (1); % in order
imshow(algray); % display original gray_cale image 
title('original graycale image') % comment on original gray_cale image
dith2x2 = algray; % hold for place for output 
[Rows, Cols, Channels] = size (algray); % number of Rows,columns,and color channels
for C1 = 1:Channels % number of color channels 
    for Y1 = 1:Cols % number get over columns 
        for X1 = 1:Rows % number get over Rows
            I1 = mod (X1, N1)+1; % +1 to change and prevent index from 0
            J1 = mod (Y1, N1)+1;  % +1 to change and prevent index from 0
            if algray(X1, Y1, C1) > D2x2(I1, J1) % if pixel of gray_cale image 
                dith2x2(X1, Y1, C1) = 255; % it is pixel becomes white
            else 
                dith2x2(X1, Y1, C1) = 0;% it is pixel becomes black 
            end
        end
    end
end
figure (2); % in order 
imshow(dith2x2); % display new image (2x2 dithered image)
imwrite(dith2x2,'MofaqAlotaibi_HW1_part2_algray_dith2x2.png');
title('algray 2x2') % comment on 2x2 dithered image 
%--------------------------------------------------------------------------
algray2 = imread('al_gray.jpg'); % original gray_cale image 
figure (3); % in order
imshow(algray2);% display original gray_cale image 
title('original graycale image') % comment on original gray_cale image
dith4x4 = algray2; % hold for place for output 
[Rows, Cols, Channels] = size (algray2); % number of Rows,columns,and color channels
for C1 = 1:Channels % number of color channels
    for Y1 = 1:Cols % number get over columns 
        for X1 = 1:Rows % number get over Rows
            I1 = mod (X1, N2)+1; % +1 to change and prevent index from 0
            J1 = mod (Y1, N2)+1; % +1 to change and prevent index from 0
            if algray2(X1, Y1, C1) > D4x4(I1, J1) % if pixel of gray_cale image 
                dith4x4(X1, Y1, C1) = 255; % it is pixel becomes white
            else 
                dith4x4(X1, Y1, C1) = 0; % it is pixel becomes black
            end
        end
    end
end
figure(4); % in order 
imshow(dith4x4); % display new image (4x4 dithered image)
imwrite(dith4x4,'MofaqAlotaibi_HW1_part2_algray_dith4x4.png');
title('algray2 4x4') % comment on 4x4 dithered image 
%--------------------------------------------------------------------------
huntsvillegray = imread('huntsville_gray.jpg'); % original gray_cale image
figure (5); % in order
imshow(huntsvillegray); % display original gray_cale image
title('original graycale image') % comment on original gray_cale image
dith2x2 = huntsvillegray; % hold for place for output 
[Rows, Cols, Channels] = size (huntsvillegray); % number of Rows,columns,and color channels
for C1 = 1:Channels % number of color channels
    for Y1 = 1:Cols % number get over columns
        for X1 = 1:Rows % number get over Rows
            I1 = mod (X1, N1)+1; % +1 to change and prevent index from 0
            J1 = mod (Y1, N1)+1; % +1 to change and prevent index from 0
            if huntsvillegray(X1, Y1, C1) > D2x2(I1, J1) % if pixel of gray_cale image
                dith2x2(X1, Y1, C1) = 255; % it is pixel becomes white
            else 
                dith2x2(X1, Y1, C1) = 0; % it is pixel becomes black
            end
        end
    end
end
figure(6); % in order
imshow(dith2x2); % display new image (2x2 dithered image)
imwrite(dith2x2,'MofaqAlotaibi_HW1_part2_huntsvillegray_dith2x2.png');
title('huntsvillegray 2x2') % comment on 2x2 dithered image
%--------------------------------------------------------------------------
huntsvillegray2 = imread('huntsville_gray.jpg'); % original gray_cale image
figure (7); % in order
imshow(huntsvillegray); % display original gray_cale image
title('original graycale image') % comment on original gray_cale image
dith4x4 = huntsvillegray2; % hold for place for output
[Rows, Cols, Channels] = size (huntsvillegray2); % number of Rows,columns,and color channels
for C1 = 1:Channels % number of color channels
    for Y1 = 1:Cols % number get over columns
        for X1 = 1:Rows % number get over Rows
            I1 = mod (X1, N2)+1; % +1 to change and prevent index from 0
            J1 = mod (Y1, N2)+1; % +1 to change and prevent index from 0
            if huntsvillegray2(X1, Y1, C1) > D4x4(I1, J1) % if pixel of gray_cale image
                dith4x4(X1, Y1, C1) = 255; % it is pixel becomes white
            else 
               dith4x4(X1, Y1, C1) = 0; % it is pixel becomes black
            end
        end
    end
end
figure(8); % in order
imshow(dith4x4); % display new image (4x4 dithered image)
imwrite(dith4x4,'MofaqAlotaibi_HW1_part2_huntsvillegray_dith4x4.png');
title('huntsvillegray2 4x4') % comment on 4x4 dithered image

%--------------------------------------------------------------------------
uahgray = imread('uah_gray.jpg'); % original gray_cale image
figure (9); % in order
imshow(uahgray); % display original gray_cale image
title('original graycale image') % comment on original gray_cale image
dith2x2 = uahgray; % hold for place for output
[Rows, Cols, Channels] = size (uahgray); % number of Rows,columns,and color channels
for C1 = 1:Channels % number of color channels
    for Y1 = 1:Cols % number get over columns
        for X1 = 1:Rows % number get over Rows
            I1 = mod (X1, N1)+1; % +1 to change and prevent index from 0
            J1 = mod (Y1, N1)+1; % +1 to change and prevent index from 0
            if uahgray(X1, Y1, C1) > D2x2(I1, J1) % if pixel of gray_cale image
               dith2x2(X1, Y1, C1) = 255; % it is pixel becomes white
            else 
                dith2x2(X1, Y1, C1) = 0; % it is pixel becomes black
            end
        end
    end
end
figure(10) % in order
imshow(dith2x2); % display new image (2x2 dithered image)
imwrite(dith2x2,'MofaqAlotaibi_HW1_part2_uahgray_dith2x2.png');
title('uahgray 2x2') % comment on 2x2 dithered image

%--------------------------------------------------------------------------
uahgray2 = imread('uah_gray.jpg'); % original gray_cale image
figure (11); % in order
imshow(uahgray2); % display original gray_cale image
title('original graycale image') % comment on original gray_cale image
dith4x4 = uahgray2; % hold for place for output
[Rows, Cols, Channels] = size (uahgray2); % number of Rows,columns,and color channels
for C1 = 1:Channels % number of color channels
    for Y1 = 1:Cols % number get over columns
        for X1 = 1:Rows % number get over Rows
            I1 = mod (X1, N2)+1; % +1 to change and prevent index from 0
            J1 = mod (Y1, N2)+1; % +1 to change and prevent index from 0
            if uahgray2(X1, Y1, C1) > D4x4(I1, J1) % if pixel of gray_cale image
                dith4x4(X1, Y1, C1) = 255; % it is pixel becomes white
            else 
               dith4x4(X1, Y1, C1) = 0; % it is pixel becomes black
            end
        end
    end
end
figure(12); % in order
imshow(dith4x4); % display new image (4x4 dithered image)
imwrite(dith4x4,'MofaqAlotaibi_HW1_part2_uahgray_dith4x4.png');
title('uahgray2 4x4') % comment on 4x4 dithered image
%--------------------------------------------------------------------------