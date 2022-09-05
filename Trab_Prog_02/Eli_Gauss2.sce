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
            A(i,j)=input("")
            end
end
printf("--->Matriz A");
disp(A);
if sum(A)==0 then
    printf("\nImpossível realizar a eliminação de gauss em uma matriz nula:(\n");
    return;
end

for i = 1:n

    printf("Digite os elementos do vertor solução(%d)",i);
    b(i)=input("") 
end
printf("->Vetor solução");
disp(b);
Ab = [A b];
tip = input("Digite 1 para obter o passo a passo ou 2 caso não queira-->");
select tip 
case 1 
function x = gauss(Ab,n)
    disp(Ab);
    for i = 1:n
        [pivot, pos] = max(abs(Ab(i:n,i)));
         pos = pos + (i-1);
         pivot = Ab(pos,i);
         Ab([i, pos],:) = Ab([pos,i],:);
        end
        for j = 1:i-1
        Ab(j,:) = Ab(j,:)
         - Ab(i,:)*(Ab(j,i)/pivot);
        end
for k = 1:(n-1)
    for i = k+1:n
        c = -Ab(i,k)/Ab(k,k);
        Ab(i,k) = 0;
        for j = (k+1) : (n+1)
            Ab(i,j) = Ab(i,j) + c*Ab(k,j);
               
        end 
    end
    printf("passo %d\n",k);
            disp(Ab); 
end
for i = n:-1:1
    s = 0;
    for j = i+1:n
        s = s+(Ab(i,j)*x(j));
    end
   
    x(i+1) = (Ab(i,n+1) - s)/Ab(i,i);
    
end 
for i = 1:n
    printf("x%d-->%.6f\n",i, x(i));
end
endfunction
gauss(Ab,n)

case 2 
function x = gauss(Ab,n)
    disp(Ab);
    for i = 1:n
        [pivot, pos] = max(abs(Ab(i:n,i)));
         pos = pos + (i-1);
         pivot = Ab(pos,i);
         Ab([i, pos],:) = Ab([pos,i],:);
        end
        for j = 1:i-1
        Ab(j,:) = Ab(j,:)
         - Ab(i,:)*(Ab(j,i)/pivot);
        end
for k = 1:(n-1)
    for i = k+1:n
        c = -Ab(i,k)/Ab(k,k);
        Ab(i,k) = 0;
        for j = (k+1) : (n+1)
            Ab(i,j) = Ab(i,j) + c*Ab(k,j);
        end 
    end
end 
for i = n:-1:1
    s = 0;
    for j = i+1:n
        s = s+(Ab(i,j)*x(j));
    end 
    x(i) = (Ab(i,n+1) - s)/Ab(i,i);
end 
for i = 1:n
    printf("x%d-->%.6f\n",i, x(i));
end
endfunction
gauss(Ab,n); 
else
    printf("Escolha uma opção válida:(");
    return;
end
