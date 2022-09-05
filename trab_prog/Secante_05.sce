clear ;
clc;
fun = input("Digite uma função em x :","s");
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
function y = f(x)
y = evstr(fun)
endfunction
    tab = input("Para obter a tabela de passos digite 1, caso não queira, digite 2!->>");
    select tab 
    case 1    
    printf("Escolha o intervalo da raiz!")
x0 = input("Digite x0 ->>");
x1 = input("Digite o x1 ->>");
function z = secante(x0,x1,e)
    function y = f(x)
    y = evstr(fun)
endfunction
printf(" k ---  xk-1  ---  xk  ---  f(Xk-1)  ---- f(Xk)  --  XK+1  - |(XK+1)-(XK)|\n");
    j = 0;
   while abs(f(x0)) > e | abs(x1-x0) > e

    z = x1 - (f(x1)/(f(x1) - f(x0)))*(x1 - x0);
printf(" %d | %.6f | %.6f | %.6f | %.6f | %.6f | %.6f\n", j, x0, x1, f(x0), f(x1), z,(x1-x0));

x0 = x1;
x1 = z;
    j = j +1;
end
endfunction
printf("A aproximação da raiz é ->>%.6f\n", secante(x0,x1,e));
case 2
    
   printf("Escolha o intervalo da raiz!")
x0 = input("Digite x0 ->>");
x1 = input("Digite o x1 ->>");
function z = secante(x0,x1,e)
    function y = f(x)
    y = evstr(fun)
endfunction
   while abs(f(x0)) > e | abs(x1-x0) > e

    z = x1 - (f(x1)/(f(x1) - f(x0)))*(x1 - x0);
x0 = x1;
x1 = z;
end
endfunction
printf("A aproximação da raiz é: %.6f\n", secante(x0,x1,e));
else 
    printf("Escolha uma opção válida:(");
end
