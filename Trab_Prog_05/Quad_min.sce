clear;
clc;

function y=f(g,x)
y = evstr(g);
endfunction

function [A,b] = quad_min(x,y,f)
        for i=1:m
            for j=1:m
              s=0;
                 for k=1:n
                s = s + f(g(i),x(k))*f(g(j),x(k));
        end
        A(i,j) = s;
    end
end

for i=1:m
    s = 0;
    for k=1:n
        s = s + f(g(i),x(k))*y(k);
    end
    b(i)=s;
end

endfunction

function D = gauss(A,b,m)
    D = [A,b];
    for k=1:m-1
    for i = k+1:m
        c = -D(i,k)/D(k,k);
        D(i,k)=0
        for j = k+1:m+1
            D(i,j) = D(i,j) + c*D(k,j);
        end
    end
end
endfunction

function u = sub(h,m)
for i = m:-1:1
    u(i) = h(i,m)/h(i,i);
s = 0
    for j = i+1:m
        s = s + h(i,j)*u(j);
    end
    u(i)=(h(i,m+1)-s)/h(i,i);
end
endfunction



n = input("Digite a quantidade de pontos!-->");
        if n == 0 then
            printf("Digite um número diferente de 0 :(");
                return;
                    end
for i=1:n
            printf("Digite o vetor x e o vetor y");
                x(i) = input("x--->");
                y(i) = input("y--->");
            end
m = input("Digite a quantidade de funções bases-->");
        if m == 0 then
            printf("Digite um número diferente de 0 :(");
                return;
                    end

        for i = 1:m
            g(i) = input("Digite as funções bases em função de x-->","s");
                end

p = input("Digite o x cujo qual se quer achar o valor aproximado de f(x)");
s = 0;

[A,b]=quad_min(x,y,f)            
E = gauss(A,b,m);
u = sub(E,m);
tip = input("Digite 1 caso queira ver os alphas ou 2 casou não queira!");
select tip 
case 1
    for i = 1:m
printf("Alpha%d-->%.4f\n",i, u(i));
end

for i=1:m
    s = s + f(g(i),p)*u(i);
end

fx = s
printf("Valor de f(x) aproximado para %.4f: ", p);
disp(fx);
case 2 
    
s=0;

for i=1:m
    s = s + f(g(i),p)*u(i);
end

fx = s
printf("Valor de f(x) aproximado para %.4f: ", p);
disp(fx);
else 
    printf("Digite uma opção válida:(");
    return;
end
