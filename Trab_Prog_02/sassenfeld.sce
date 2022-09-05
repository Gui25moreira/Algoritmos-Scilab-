clear;
clc;
n=input("tamanho da matiz A :");
for i= 1:n
    for j=1:n
        printf("digite o elementendo A(%d,%d)",i,j)
        A(i,j) = input("  ");
    end
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

for i=1:n
    for s=1:n
        AA(i,s) = A(i,s)/A(i,i);
    end;
end;

AB= AA-I
for i = 1:n
    b(i) = 1 
end
function sassenfeld(n,b,AB)
for i = 1:n
b(i) = AB(i,:)*b 
end

 if  max(abs(b)) < 1 then
     printf("Converge com qualquer chute inicial!")
 else 
     printf("Não passou no critéiro de sanssenfeld:(");
     end
endfunction
sassenfeld(n,b,AB)

