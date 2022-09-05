clear;
clc;
x = 0;
n = input("Tamanho da matiz A:");
if n == 0  then
    printf("\nDigite um tamanho válido\n")
return;
end
for i= 1:n
    for j=1:n
        printf("digite o elementendo A(%d,%d)",i,j)
        A(i,j) = input("  ");
    end
end
if sum(A)==0 then
    printf("\nImpossível realizar a operação em uma matriz nula:(\n");
    return;
end
disp(A);
for i = 1:n
    for j = 1:n
        I(i,j) = 0;
        if i==j then
            I(i,j) = 1
        end 
end
end
for i = 1:n
    printf("Digite os elementos do vertor solução(%d)",i);
    b(i)=input("") 
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
 for i=1:n
    for s=1:n
        AA(i,s) = A(i,s)/A(i,i);
    end
    be(i) = b(i)/A(i, i);
end
AB= AA-I
in = 0;
p = 10;
s = 0;
tip = input("Digite 1 caso queira obter o passo a passo e 2 caso não queira!");
select tip 
case 1
    function  seidel(x,AB,x0,it,p,be,e,n,s,in)
while p > e & in<=it
    for i=1:n
        for j=1:n
            s(i)= AB(i,:)*x0
            x(j)=(be(i) - s(i))
             
end
      printf("Passo %d x%d-->%.6f\n",in+1,in,x(i));
    
     printf("\n");

        x0(i) = x(i)
    end
    in = in + 1;
end

for i = 1:n
    printf("x%d-->%.6f\n",i, x0(i));
end
endfunction 
seidel(x,AB,x0,it,p,be,e,n,s,in);
case 2 
    function seidel(x,AB,x0,it,p,be,e,n,s,in)

while p > e & in<=it
    for i=1:n
        for j=1:n
            s(i)= AB(i,:)*x0
            x(j)=(be(i) - s(i))
        end
        x0(i) = x(i)
    end
    in = in + 1;
end
for i = 1:n
    printf("x%d-->%.6f\n",i, x0(i));
end
endfunction 
seidel(x,AB,x0,it,p,be,e,n,s,in);
else
    printf("Escolha uma opção válida:(");
    return;
end


