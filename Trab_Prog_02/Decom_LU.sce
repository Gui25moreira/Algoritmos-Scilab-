clear;
clc;
n = input("Tamanho da matriz A:");
if n == 0  then
    printf("\nDigite um tamanho válido\n")
return;
end
for i = 1:n
    for j = 1:n
            printf("Digite o elemento A(%d,%d)\n",i,j)
            U(i,j)=input("")
            end
end
printf("--->Matriz A");
disp(U);
if sum(U)==0 then
    printf("\nImpossível realizar a eliminação de gauss em uma matriz nula:(\n");
    return;
end
for i = 1:n
    printf("Digite os elementos do vertor solução(%d)",i);
    b(i)=input("") 
end
printf("->Vetor solução");
disp(b);
tip = input("Digite 1 para obter o passo a passo ou 2 caso não queira-->");
select tip
case 1
function x = LU(U,b)
for i= 1:n
    for j=1:n
        L(i,j) = 0 
        if i==j then
            L(i,j) = 1
        end
    end
end
for k = 1:(n-1)
    for i = k+1:n
        c=-U(i,k)/U(k,k);
        L(i,k)= -c;
        U(i,k)= 0;
        for j =(k+1) : (n)
            U(i,j)= U(i,j) + (c*U(k,j));
        end
    end
    printf("passo %d \n",k);
    printf("matriz U:")
    disp(U);
    printf("matriz L")
    disp(L);
end
for i = 1 : n 
    s=0
    for j= 1 : i-1
        s= s + L(i,j)*y(j)
    end
    y(i) = b(i) - s 
end
for i = 1:n
    printf("y%d-->%.3f\n",i, y(i));
end

for i = n:-1:1
    s = 0
    for j = i+1:n 
        s = s + U(i,j)*x(j)
    end
    x(i) = (y(i)-s)/(U(i,i))
end
printf("\n");
for i = 1:n
    printf("x%d-->%.3f\n",i, x(i));
end
endfunction
LU(U,b);
case 2
    function x = LU(U,b)
for i= 1:n
    for j=1:n
        L(i,j) = 0 
        if i==j then
            L(i,j) = 1
        end
    end
end

for k = 1:(n-1)
    for i = k+1:n
        c=-U(i,k)/U(k,k);
        L(i,k)= -c;
        U(i,k)= 0;
        for j =(k+1) : (n)
            U(i,j)= U(i,j) + (c*U(k,j));
        end
    end
end

for i = 1 : n 
    s=0
    for j= 1 : i-1
        s= s + L(i,j)*y(j)
    end
    y(i) = b(i) - s 
end
for i = 1:n
    printf("y%d-->%.3f\n",i, y(i));
end
for i = n:-1:1
    s = 0
    for j = i+1:n 
        s = s + U(i,j)*x(j)
    end
    x(i) = (y(i)-s)/(U(i,i))
end
printf("\n");
for i = 1:n
    printf("x%d-->%.3f\n",i, x(i));
end
endfunction
LU(U,b);
else
    printf("Digite uma opção válida:(");
    return;
end

