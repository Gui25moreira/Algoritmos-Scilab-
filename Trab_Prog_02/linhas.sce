clear;
clc;
n=input("Digite o tamanho da matiz A :");
if n == 0  then
    printf("\nDigite um tamanho válido\n")
return 0
end
                for i= 1:n
             for j=1:n
         printf("Digite o elemento A(%d,%d)",i,j)
         AX(i,j) = input("  ");
        end
       end
       AB = AX;
       for i = 1:n
           for j = 1:n
               if i==j then
                   AB(i,j) = 0
       end
   end
end
AC = AX;
for i=1:n
    for j=1:n
        if i <> j then
        AX(i,j) = 0
   end
    end
end
AA = AX;
t = 0;
function linhas(AA,AB,t,n,AC)
    for i = 1:n
    if sum(AA(i,:)) >= sum(AB(i,:)) then
        t = t+1;  
end
if sum(AA(i,:)) <= sum(AB(i,:)) then
    printf(" A linha %d não passou no critério das linhas! :(", i);
    printf("\n--Linha correspondente--");
disp(AC(i,:));   
end
end
 if t == n then
          printf("\nConverge\n"); 
      elseif t <> n then 
          printf("\n A matriz não passou no critério das linhas! :(");
      end
endfunction
linhas(AA,AB,t,n,AC)




