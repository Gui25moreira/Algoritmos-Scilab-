clear;
clc;
function lagrange1(n,x,p,y,ln,L)
    for j=1:n
    l(1,j)=1
    for i=1:n
        if i<>j then
        l(1,j)=l(1,j)*((p-(x(i)))/(x(j)-x(i)));
end
end

L = l(1,j)*y(j);
printf("Polinômio de lagrange L%dY%d = %.4f\n",j,j,L);
ln = ((l(1,j)*y(j)) + ln);
end

printf("O valor da interpolação no ponto %.4f é igual a =",p);
disp(ln);
endfunction

function lagrange2(n,x,p,y,ln)
    for j=1:n
    l(1,j)=1
    for i=1:n
        if i<>j then
        l(1,j)=l(1,j)*((p-(x(i)))/(x(j)-x(i)));
end
end
ln = ((l(1,j)*y(j)) + ln);
end

printf("O valor da interpolação no ponto %.4f é igual a =",p);
disp(ln);
endfunction

L = 0;
ln = 0;
printf("-----------Método de lagrange-------------");
n=input("Digite o número de pontos :")
for i=1:n
        printf("Digite o vetor x e o vetor y");
        x(i) =input("x--->");
        y(i) =input("y--->");
end

p=input("Digite o x qual se deve achar f(x):")
tip = input("Digite 1 caso queira obter cada polinômio e 2 caso queira só o resultado!");
select tip
case 1 
      lagrange1(n,x,p,y,ln);
case 2 
    lagrange2(n,x,p,y,ln);
else
    printf("Escolha uma opção válida:(");
    return;
end

