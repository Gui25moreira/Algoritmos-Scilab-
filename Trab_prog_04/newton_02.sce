clear; 
clc;
function newton(n,s,y,x,f,o)
for j=1:n
    for i=1:n-j
        d(i)=(y(i+1)-y(i))/(x(i+j)-x(i))
        M(i,j)=d(i)
        y(i)=d(i)
        r(j)=y(1)
    end
end

    for i=1:n-1
        printf("     Ordem %d ",i)
    end

disp(M);
for i=1:o
    p=1
    for j=1:i
        p=p*(f-(x(j)))
end
                s = s + (p*r(i)) 

end

printf("O valor da interpolação no ponto %.4f é igual a =",f);
disp(s)
endfunction

function newton2(n,s,y,x,f,o)
for j=1:n
    for i=1:n-j    
        d(i)=(y(i+1)-y(i))/(x(i+j)-x(i))
        y(i)=d(i)
        r(j)=y(1)
    end
end

    for i=1:n-1
        printf("      Ordem%d ",i)
    end

for i=1:o
    p=1
    for j=1:i
        p=p*(f-(x(j)))
end
                s = s + (p*r(i)) 

end

printf("O valor da interpolação no ponto %.4f é igual a =",f);
disp(s)    
endfunction

printf("--------------Método de Newton---------------");
n=input("Digite o número de pontos :");
o=input("Digite 1 caso queira escolher o grau do polinômio e 2 caso não queira!");
select o 
case 1
     o = input("Digite o grau do polinômio de newton!");
case 2 
    o = n-1;
else 
    printf("Escolha uma opção válida:(");
    return;
end

for i=1:n
        printf("Digite o vetor x e o vetor y");
        x(i) =input("x--->");
        y(i) =input("y--->");
end

s=y(1);
f=input("Digite o x qual se deve achar f(x):");
while f<x(1) | f>x(n)
    f=input("Digite o x qual se deve achar f(x):");
end

tip = input("Digite 1 caso queira obter a matriz dk ou 2 caso não queira!");
select tip 
case 1 
    newton(n,s,y,x,f,o);
case 2 
    newton2(n,s,y,x,f,o);
else 
    printf("Digite uma opção válida:(");
    return;
end
