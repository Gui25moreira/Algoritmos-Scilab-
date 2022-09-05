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
k   = input("Número de iterações opcional! Digite 1 caso queira estabelecer um limite e 2 caso não queira! ->>");
select k
    case 1 
    k = input("Digite o valor de interações! ->>");
    case 2    
    k = 10;
    else
    printf("Digite uma opção válida :(");
    return;
end
function y = f(x)
y = evstr(fun);
endfunction
tip = input("Digite 1 para entrar com o intervalo [a , b] e 2 para obter a tabulação! ->>");
select tip
case  1
    tab = input("Para obter a tabela de passos digite 1, caso não queira, digite 2!->>");
       select tab 
    case 1   
    a = input("Digite o valor de a! ->>"); 
    b = input("Digite o valor de b! ->>");
    function z = posicao(a,b,e)
    function y = f(x)
    y = evstr(fun)
endfunction
printf(" k -----  a  -----  b  ----  f(a)  ---- f(b)  ---  xk  ---- f(xk)  -- |b-a|\n");
j = 0;
for i = 1: k
    if (b - a) < e then
        xx = z;
    end
    
    k = 1;
    m = f(a);
    z = (a*f(b) - b*f(a))/(f(b) - f(a));

printf(" %d | %.6f | %.6f | %.6f | %.6f | %.6f | %.6f | %.6f\n", j, a, b, f(a), f(b), z, f(z),(b-a));
    if abs(f(z)) < e then
        xx = z;
        end
        if m * f(z) > 0 then
             a = z;
        if b - a < e then
            xx = z;
            end
        else
            b = z;
        end
  j = j + 1;
end
endfunction
printf("A raiz é ->> %.6f\n", posicao(a,b,e));
    case 2 
    a = input("Digite o valor de a! ->>"); 
    b = input("Digite o valor de b! ->>");
    function z = posicao(a,b,e)
    function y = f(x)
    y = evstr(fun)
endfunction

for i = 1: k
    if (b - a) < e then
        xx = z;
    end
    k = 1;
    m = f(a);
    z = (a*f(b) - b*f(a))/(f(b) - f(a));
    if abs(f(z)) < e then
        xx = z;
        end
        if m * f(z) > 0 then
             a = z;
        if b - a < e then
            xx = z;
            end
        else
            b = z;
        end

end
endfunction
printf("A raiz é ->> %.6f\n", posicao(a,b,e));
end
    case 2
        tab2 = input("Para obter a tabela de passos digite 1, caso não queira, digite 2!->>");
       select tab2
    case 1  
        
        h = 0;
for i = -100 : 100 
    f(i);
if f(i) * f(i + 1) < 0 then
    printf("No intervalo de %f --> %f\n", i , (i + 1) );
    a = (i);
    b = (i + 1);        

function z = posicao(a,b,e)
    function y = f(x)
    y = evstr(fun)
endfunction
printf(" k -----  a  -----  b  ---   f(a)  ---- f(b)  --     xk  ----    f(xk)  -- |b-a|\n");
for i = 1: k
    if (b - a) < e then
        xx = z;
    end

    k = 1;
    m = f(a);
    z = (a*f(b) - b*f(a))/(f(b) - f(a));
printf(" %d | %.6f | %.6f | %.6f | %.6f | %.6f | %.6f | %.6f\n",h, a, b, f(a), f(b), z, f(z),(b-a));
    if abs(f(z)) < e then
        xx = z;
        end
        if m * f(z) > 0 then
             a = z;
        if b - a < e then
            xx = z;
            end
        else
            b = z;
        end
 h = h +1;
end
endfunction
printf("A raiz é->> %.6f\n", posicao(a,b,e));
end 
end  
case 2
       for i = -100 : 100 
  
    f(i);
if f(i) * f(i + 1) < 0 then
    printf("\nNo intervalo de %f --> %f\n", i , (i + 1) );
    a = (i);
    b = (i + 1);        

function z = posicao(a,b,e)
    function y = f(x)
    y = evstr(fun)
endfunction
for i = 1: k
    if (b - a) < e then
        xx = z;
    end

    k = 1;
    m = f(a);
    z = (a*f(b) - b*f(a))/(f(b) - f(a));
    if abs(f(z)) < e then
        xx = z;
        end
        if m * f(z) > 0 then
             a = z;
        if b - a < e then
            xx = z;
            end
        else
            b = z;
        end


end
endfunction
printf("a raiz é ->> %.6f\n", posicao(a,b,e));
end 
end 
else 
    printf("Digite uma opção válida:(");
    return; 
end
else 
    printf("Digite uma opção válida:(");
    return;
end

   

    
 
