clear;
clc;
function fx = Regre_Linear1(n,p,x,y)

somaX = sum(x);
somaY = sum(y);
for i = 1:n
    XY(i) = x(i)*y(i);
end

somaXY = sum(XY);

for i = 1:n
    x2(i) = x(i)*x(i);
end

somaX2 = sum(x2);
alpha2 = ((n*somaXY)-(somaX*somaY))/((n*somaX2)-(somaX^2))
alpha1 = (somaY-(alpha2*somaX))/n
fx = alpha1 +(alpha2*p)
printf("O valor d f(%.4f) é -->\n", p);
disp(fx)
printf("\nO valor de alpha1 é --> %.6f", alpha1);
printf("\nO valor de alpha2 é --> %.6f", alpha2);
endfunction
function fx = Regre_Linear2(n,p,x,y)

somaX = sum(x);
somaY = sum(y);
for i = 1:n
    XY(i) = x(i)*y(i);
end

somaXY = sum(XY);

for i = 1:n
    x2(i) = x(i)*x(i);
end

somaX2 = sum(x2);
alpha2 = ((n*somaXY)-(somaX*somaY))/((n*somaX2)-(somaX^2))
alpha1 = (somaY-(alpha2*somaX))/n
fx = alpha1 +(alpha2*p)
printf("O valor d f(%.4f) é -->\n", p);
disp(fx)
endfunction

n = input("Digite o número de pontos-->");
if n == 0 then
printf("Digite um número diferente de 0 :(");
return;
end
p = input("Digite o x cujo qual se quer achar o valor aproximado de f(x)-->");
for i=1:n
        printf("Digite o vetor x e o vetor y");
        x(i) = input("x--->");
        y(i) = input("y--->");
end
tip = input("Digite 1 caso queira os valores das constantes e 2 caso não queira!");
select tip 
case 1 
    Regre_Linear1(n,p); 
case 2 
    Regre_Linear2(n,p);
else 
    printf("Ecolha uma opção válida:(");
    return;
end


