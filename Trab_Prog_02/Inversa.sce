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
function Lu(U,n)                      
    for i=1:n                             
        for j=1:n
            if i==j then
                L(i,j)=1
            end
        end
    end
    
    for k=1:n-1                                
        for i=k+1:n
            c=(-(U(i,k)))/(U(k,k))
            C(i,k)=((U(i,k)))/(U(k,k))           
            C(i,n)=0;
            for j=(k+1):n
                U(i,j)=U(i,j)+(c*(U(k,j)))                
            end
        end
    end
    for i=1:n           
        for j=1:n
            I(i,j)=L(i,j)+C(i,j);
        end
    end
    for  k=1:n
        b=L(:,k)
        ly=[I,b];
        y(1)=(b(1))/ly(1,1)
        for i=2:n
            s=0;
            for j=1:(i-1)
                s=s+ly(i,j)*y(j);
            end
            y(i)=((b(i)-s)/ly(i,i))
        end
        ux=[U,y]
        for o=1:n
        for i=n:-1:1
            s=0
            for j=i+1:n
                s=s+ux(i,j)*x(j)
            end
            x(i)=((ux(i,n+1)-(s))/ux(i,i))
        end
        end
        disp(x)
    end
endfunction
Lu(U,n)
