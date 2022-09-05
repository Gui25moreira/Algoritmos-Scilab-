clear;
clc; 
u = 0;
n=input("Digite o tamanho da matiz A :");
if n == 0  then
    printf("\nDigite um tamanho válido\n")
return;
end
                for i= 1:n
             for j=1:n
         printf("Digite o elemento A(%d,%d)",i,j)
         A(i,j) = input("  ");
          if i==j & A(i,j)==0 then
            printf("\nA diagonal principal não pode conter elementos nulos:(\n");
            return;
            end
        end
       end
printf("---Matriz A---");
disp(A);

              for i = 1:n
    printf("Digite os elementos do vertor solução(%d)",i);
    b(i)=input("") 
end
printf("Matriz solução");
disp(b);
e   = input("Tolerância opcional! Digite 1 caso não queira estabelecer uma tolerância e 2 caso queira-->");
select e
    case 1
    e = 10^(-2);
    case 2
    e = input("Digite o valor do erro --> ");    
    else 
    printf("Escolha uma opção válida :(");
    return;
end
it  = input("Número de iterações opcional! Digite 1 caso não queira estabelecer um limite e 2 caso queira-->");
select it
    case  1  
    it = 10;
    case  2  
    it = input("Digite o valor de interações-->");
else 
    printf("Digite uma opção válida:(");
    return;
end
x0 = input("Chute inicial opcional! Digite 1 caso não queira e 2 caso queira escolher um chute inicial-->");
select x0
case 1 
    for i = 1:n
        x0(i) = 0;
        end
case 2 
    for i =1:n
    x0(i) = input("Digite o chute inical-->");
    end
else 
    printf("Escolha uma opção válida :(");
    return;         
end
for i = 1:n
    for j = 1:n
        I(i,j) = 0;
        if i==j then
            I(i,j) = 1
        end 
end
end
p = 10;
x = x0;
tip = input("Digite 1 para obter o passo a passo e 2 caso não queira-->");
select tip 
case 1 
    function jacobi(A,b,e,it,I,x0,u)
    for i=1:n
    for j=1:n
        AA(i,j) = A(i,j)/A(i,i);
    end;
    be(i) = b(i)/A(i, i);
end;
AB = AA;
bc = be;
while p > e & u<it
    x = bc - ((AB-I)*x);
    for i = 1:n
    printf("x%d-->%.6f\n",u,x(i));
end
    printf("\n");
    p = norm((AB*x)-bc);
    u = u+1;
end
  for i = 1:n
    printf("x%d-->%.6f\n",i, x(i));
end
endfunction
jacobi(A,b,e,it,I,x0,u);
case 2
    function jacobi(A,b,e,it,I,x0,u)
    for i=1:n
    for j=1:n
        AA(i,j) = A(i,j)/A(i,i);
    end;
    be(i) = b(i)/A(i, i);
end;
AB = AA;
bc = be;
while p > e & u<it
    x = bc - ((AB-I)*x);
    p = norm((AB*x)-bc);
    u = u+1;
end

  for i = 1:n
    printf("x%d-->%.6f\n",i, x(i));
end
endfunction
jacobi(A,b,e,it,I,x0,u);
else 
    printf("Escolha uma opção válida:(");
    return;
end



