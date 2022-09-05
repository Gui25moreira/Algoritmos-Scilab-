clear ;
clc;
fun = input("digite uma função em x :","s");
deri = input("Digite a derivada da função x:","s");
e   = input("Tolerância opcional! Digite 1 caso queira estabelecer uma tolerância e 2 caso não queira! ->>");
select e
   case 1
    e = input("Digite o valor do erro -> ");    
    case 2
    e = 10^(-2);
    else 
    printf("Escolha uma opção válida :(");
    return;
end
function j = f2(x)
    j = evstr(deri)
endfunction
function y  = f(x)
y = evstr(fun)
endfunction
   tab = input("Para obter a tabela de passos digite 1, caso não queira, digite 2!->>");
    select tab 
    case 1  
        for i = -50 : 50 
  f(i);
if f(i) * f(i + 1) < 0 then
    printf("%f --> %f\n", i , (i + 1) );
end
end
printf("Escolha um numero que esteja dentro de um dos intervalos!");
x = input("Digite o chute inicial ->> ");
printf(" k ----- x  ----- f(x)  ---- f2(x)  ------ x1 ----- |(x1-x)\n");  
function x1 =  newton(x,e)
    i = 0;
    j = 0;
while abs((x - (f(x)/f2(x)))-x) > e | abs(f(x)) > e 
    printf(" %d | %.6f | %.6f | %.6f | %.6f | %.6f \n", j, x, f(x), f2(x), x - f(x)/f2(x) ,((x - (f(x)/f2(x)))-x));
    x =  x - (f(x)/f2(x));
    i = i + 1;
    if i == 10 then 
        break;
    end
    x1 = x;
    j = j+1;

end

endfunction
printf("\nA aproximação da raiz é ->> %.6f\n", newton(x,e));
    case 2
     for i = -50 : 50 
  f(i);
if f(i) * f(i + 1) < 0 then
    printf("%f --> %f\n", i , (i + 1) );
end
end
printf("Escolha um numero que esteja dentro de um dos intervalos!");
x = input("Digite o chute inicial ->> ");

function x1 =  newton(x,e)
    i = 0;
    j = 0;
while abs((x - (f(x)/f2(x)))-x) > e | abs(f(x)) > e 
    
    x =  x - (f(x)/f2(x));
    i = i + 1;
    if i == 10 then 
        break;
    end
    x1 = x;
    j = j+1;

end

endfunction
printf("A aproximação da raiz é ->> %.6f\n", newton(x,e));
else 
    printf("Escolha uma opção válida:(");
    return;
end

