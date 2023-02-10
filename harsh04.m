x1=[0,0,1,1];
x2=[0,1,0,1];
[m,n]=size(x1);
w1=0;w2=0;b=0;
t=[0,0,0,1];
for j=1:3
    for i=1:n
    net=w1*x1(i)+w2*x2(i)+b;
    if net<2
        y=0
        w1=w1+0.2*(t(i)-y)*x1(i);
        w2=w2+0.2*(t(i)-y)*x2(i);
        b=b+0.2*(t(i)-y);
    else
        y=1
        w1=w1+0.2*(t(i)-y)*x1(i);
        w2=w2+0.2*(t(i)-y)*x2(i);
        b=b+0.2*(t(i)-y);
    end
end
end


w1
w2
b