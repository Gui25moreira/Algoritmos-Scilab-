clear;
clc;
function y = f(x)
        y = evstr(func);
    endfunction
    
function t = trapezio(h,y)
    soma_y = sum(y)-(y(1)+y($))
    t = (h/2)*(y(1)+ (2*soma_y) + y($))
endfunction 

function d = romberg1(k,A,limI,limS,e)
for i=1:k
    n = 2^(i-1) +1;
    h = (limS-limI)/(n-1);
    x(1) = limI;
    x(n) = limS;
    for r =2:n-1
        x(r) = x(r-1) + h
    end
    for s =1:n
        y(s) = f(x(s));
    end
    for j=1:i
        if j==1 then
            A(i,j) = trapezio(h,y)
        else
            A(i,j) = A(i,j-1) + (1/(4^(j-1)-1))*(A(i,j-1)-A(i-1,j-1));
    end
    if j==1 then
        continue;
         end
   if abs(A(i,j)-A(i-1,j-1))<=e then
            break;
        end
end
end
d = A($,$);
disp(A);

endfunction
function d = romberg2(k,A,limI,limS,e)
for i=1:k
    n = 2^(i-1) +1;
    h = (limS-limI)/(n-1);
    x(1) = limI;
    x(n) = limS;
    for r =2:n-1
        x(r) = x(r-1) + h
    end
    for s =1:n
        y(s) = f(x(s));
    end
    for j=1:i
        if j==1 then
            A(i,j) = trapezio(h,y)
        else
            A(i,j) = A(i,j-1) + (1/(4^(j-1)-1))*(A(i,j-1)-A(i-1,j-1));
    end
    if j==1 then
        continue;
         end
   if abs(A(i,j)-A(i-1,j-1))<=e then
            break;
        end
end
end
d = A($,$);
endfunction;

A = [];
func = input("Insira a função que deseja integrar: ","s");
limI = input("Insira o valor a do intervalo que deseja integrar: ");
limS = input("Insira o valor b do intervalo que deseja integrar: ");

e   = input("Tolerância opcional! Digite 1 caso queira estabelecer uma tolerância e 2 caso não queira! ->>");
select e
   case 1
    e = input("Digite o valor do erro -> ");    
    case 2
    e = 10^(-6);
    else 
    printf("Escolha uma opção válida :(");
    return;
end

k = input("Número de iterações opcional! Digite 1 caso queira estabelecer um limite e 2 caso não queira! ->>");
select k
    case 1 
    k = input("Digite o valor de interações! ->>");
    case 2    
    k = 5;
    else
    printf("Digite uma opção válida :(");
    return;
end

tip = input("Digite 1 para obter a tabela de passos ou 2 caso não queira!");
select tip
case 1
printf("Tabela de passos!\n");
printf("O valor da integral no intervalo de %.4f a %.4f é = %4.f\n", limI, limS,romberg1(k,A,limI,limS,e));

case 2
printf("O valor da integral no intervalo de %.4f a %.4f é = %4.f\n", limI, limS,romberg2(k,A,limI,limS,e));
    else 
    printf("Escolha uma opção válida :(");
    return;
end












