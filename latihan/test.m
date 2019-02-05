clc;
clear all;
close all;

data = readtable('test.csv','ReadRowNames',true);
    
%% if you want to know the data variable
% please uncomment the syntax below
% summary(data)

%% plotting the data inside the table
% define iteration, fill the detail with how many row
% This just iterate the case number 1

HorizontalIteration = 2;
VerticalIteration = 4;
dimension = 100;

for i = 1:1:VerticalIteration
    for j= 1:1:HorizontalIteration
        VALUE_X{j} = data{i,j}
    end       
    hold on
    grid on
    
    % Here you put the marker design
    marker = {'s','d','o','h'};

    scatter(VALUE_X{j},VALUE_X{j-1}, dimension, marker{i},'filled')
    xlim([0 0.05]);
    ylim([0 1.5]); 
    i = i + 2;
    VerticalIteration = VerticalIteration + 2;
;

end

%% The code above should follow this rule

%Case 1
%Iteration 1
% A{1} = data{1,1}; 
% B{1} = data{1,2};
% scatter(B,A)

%Iteration 2
% A{2} = data{2,1}; 
% B{1} = data{2,2};

% dstnya

%% After we finish with case 1
% this iteration continue to case 2