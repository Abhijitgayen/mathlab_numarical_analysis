clc;
clear all;
x=input('enter value');
class(x);%use to print data type
isa(x,'double');%it will retuen the boolean
% if x is double then it will return 1.otherwise it will return 0
%now we analysis about data cusing in mathlab
y=cast(x,'single');
% data type in mathlab
%'double','single','int32','int64','int8','int16','unit8',unit32','unit64'
%'logical','char'
% we all know that the characters are store in the memory as ASCII valus
%when we conver this in number it alway give us the charter respect to this
%ASCII value.Maximum ASCII value is here 65535.if we want to change any big
%number more than 65535, it will cahnge to corrosponding character of the
%ASCII value 65535



