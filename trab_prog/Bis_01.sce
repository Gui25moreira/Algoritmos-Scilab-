clear ;
clc;
fun = input("digite uma função em x :","s");
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
tip = input("Digite 1 para entrar com o intervalo [a, b] e 2 para obter a tabulação! ->>");
function y = f(x)
y = evstr(fun)
endfunction
select tip    
case 1
    tab = input("Para obter a tabela de passos digite 1, caso não queira, digite 2!->>");
    select tab 
    case 1    
    printf("Escolha o intervalo da raiz!")
a = input("Limite inferior do intervalo:");
b = input("Limite superior do intervalo:");
k = (log10(b - a) - log10(e))/log10(2);
printf("Número de passos: %d \n",ceil(k));
function z = bisse(a,b,e)
    function y = f(x)
    y = evstr(fun)
endfunction
printf(" k -----  a  -----  b  -----  f(a)  ------ f(b)  -----  m  ------ f(m)  ------ |b-a|\n");

    if (b - a) < e then
        xx = z;
    end

    j = 0;
    for i = 1:ceil(k)
    
    m = f(a);
    z = (a + b)/2;
printf(" %d | %.6f | %.6f | %.6f | %.6f | %.6f | %.6f | %.6f\n", j, a, b, f(a), f(b), z, f(z),(b-a));

    if f(z) * m > 0 then
        a = z;
            
        if (b - a) < e then
            xx = z;
            end
    else
    b = z;
    end
    j = j +1;
end
endfunction
printf("A aproximação da raiz é: %.6f\n",bisse(a,b,e))
case 2 
        printf("Escolha o intervalo da raiz!")
a = input("Limite inferior do intervalo:");
b = input("Limite superior do intervalo:");
k = (log10(b - a) - log10(e))/log10(2);
printf("Número de passos: %d \n",ceil(k));
function z = bisse(a,b,e)
    function y = f(x)
    y = evstr(fun)
endfunction

    if (b - a) < e then
        xx = z;
    end
    h = 0;
for i = 1:ceil(k)
  
    m = f(a);
    z = (a + b)/2;
    
    if f(z) * m > 0 then
        a = z;
        if (b - a) < e then
            xx = z;
            end
    else
    b = z;
    end

end
endfunction
printf("A aproximação da raiz é ->>", bisse(a,b,e))
end
case 2 
tab2 = input("Digite 1 para obter a tabela com os passos e 2 caso não queira! ->>");
select tab2
case 1
    
for i = -50 : 50 
    f(i);
if f(i) * f(i + 1) < 0 then
    printf("No intervalo de %f --> %f\n", i , (i + 1) );
    a = (i);
    b = (i + 1);  
    k = (log10(b - a) - log10(e))/log10(2);
printf("Número de passos: %d \n",ceil(k));
function z = bisse(a,b,e)
    function y = f(x)
    y = evstr(fun)
endfunction
printf(" k -----  a  -----  b  -----  f(a)  ------ f(b)  ---  m  ------ f(m)  --- |b-a|\n");
if (b - a) < e then
        xx = z;
    end
h = 0;
for i = 1:ceil(k)
    

    k = 1;
    m = f(a);
    z = (a + b)/2;

    printf(" %d  | %.6f | %.6f | %.6f | %.6f | %.6f | %.6f | %.6f\n", h, a, b, f(a), f(b), z, f(z), (b-a));
    if f(z) * m > 0 then
        a = z;
        if (b - a) < e then
            xx = z;
            end
    else
    b = z;
    end
h = h +1;
end
endfunction
printf("A aproximação da raiz é ->> %.6f\n",bisse(a,b,e))
end
end
case 2 
    for i = -50 : 50 
    f(i);
if f(i) * f(i + 1) < 0 then
    printf("No intervalo de %f --> %f\n", i , (i + 1) );
    a = (i);
    b = (i + 1);  
    k = (log10(b - a) - log10(e))/log10(2);
printf("Número de passos: %d \n",ceil(k));
function z = bisse(a,b,e)
    function y = f(x)
    y = evstr(fun)
endfunction
if (b - a) < e then
        xx = z;
    end
for i = 1:ceil(k)
    
    k = 1;
    m = f(a);
    z = (a + b)/2;
    if f(z) * m > 0 then
        a = z;
        if (b - a) < e then
            xx = z;
            end
    else
    b = z;
    end

end
endfunction
printf("A aproximação da raiz é: %.6f\n",bisse(a,b,e))

end
end
else 
    printf("Digite uma opção válida:(");
end
else 
    printf("Escolha uma opção válida:(");
    return;

end


