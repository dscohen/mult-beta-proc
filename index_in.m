doclengths = csvread('lengths',0,1);
disp('finished reading in doclength')
index = uint32(load ('postings_m'));
disp('finished reading in index')
names = read_mixed_csv('names',',',[]);
names = names(:,2);
disp('finished reading in names')

% while ischar(textLine)
% 	% get into numbers array.
% 	spltTextLine = strsplit(textLine,',');
% 	% Put numbers into a cell array IF and only if
% 	% you need them after the loop has exited.
% 	% First method - each number in one cell.
% 	% ALternate way where the whole array is in one cell.
% 	
% 	% Read the next line.
%     textLine = fgets(fid);
% 	lineCounter = lineCounter + 1;
% end
% fclose(fid);
% % Display the cell arrays in the command line.
% ca
% ca2