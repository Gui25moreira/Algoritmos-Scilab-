clear;
clc;
tipo = input("Digite 1 para entrar com os pontos ou dois para entrar com a função-->")

select tipo 
case 1 
pontos = input("Digite a quantidade de pontos-->");    
    for i=1:pontos
        printf("Digite o vetor x e o vetor y");
        x(i) =input("x--->");
        y(i) =input("y--->");
end
h = (x($)-x(1))/(pontos-1)
case 2
funcao = input("Digite a função que deve ser integrada :","s");
linf = input("Digite o limite inferior da integral :");
lsup = input("Digite o limite superior da integral :");
pontos = input("Digite a quantidade de pontos do intervalo!");

h = (lsup - linf)/(pontos-1);
 // Cálculo das imagens a partir da função 
 for i=0: pontos-1
    x = linf + i*h ;
    function y = f(x)
        y = evstr(funcao);
    endfunction
    y(i+1) = f(x)
end
else 
    printf("Digite uma opção válida:(");
    return;
end

// Implementação das fórmulas de newton-Cotes fechadas

function i = trapezio(h,x,y)
soma_y = sum(y)-(y(1)+y($))
i = (h/2)*(y(1)+ (2*soma_y) + y($))
endfunction 

function i = simpsonter(h,x,y)
soma_impar = 0;
soma_par = 0;

for j = 1:2:pontos
    soma_impar = soma_impar+y(j)
    end 
soma_impar = soma_impar - (y(1)+y($))

for j = 2:2:pontos
        soma_par = soma_par+y(j) 
    end
    i = (h/3)*(y(1)+(4*soma_par)+(2*soma_impar)+y($))
endfunction

function i = simpson_oitavo(h,x,y)
   s = 0;
   for j = 2:pontos-1
       if modulo(j-1,3) == 0 then 
           s = s+2*(y(j));
       else
           s = s+3*(y(j)); 
       end
   end
       i = ((3/8)*h)*(y(1)+y($)+s);
endfunction

function i = boole(h,x,y)
soma_impar = 0;
soma_par = 0;

for j = 1:2:pontos
    soma_impar = soma_impar+y(j)
    end 
soma_impar = soma_impar - (y(1)+y($))

for j = 2:2:pontos
        soma_par = soma_par+y(j) 
    end
    i = ((2/45)*h)*(7*y(1)+(32*soma_par)+(12*soma_impar)+7*y($))
endfunction

tip = input("Digite 1 para trapezio, 2 para simpson-1/3, 3 para simpson-3/8 e 4 para boole!");
select tip 

case 1
    
printf("O valor da integral é = %.4f", trapezio(h,x,y)); 

case 2     
    if modulo(pontos-1,2) == 0 then 

printf("O valor da integral é = %.4f", simpsonter(h,x,y));
else 
    printf("Não é possível realizar a integração");
    return;
end
case 3 
    if modulo(pontos-1,3) == 0 then 
    printf("O valor da integral é = %.4f\n",  simpson_oitavo(h,x,y));
else 
    printf("Não é possível realizar a integração");
    return;
    end
case 4 
    if modulo(pontos-1,4) == 0 then
        printf("O valor da integral é = %.4f\n", boole(h,x,y));
    
else 
    printf("Não é possível realizar a integração");
    return;
end
else 
    printf("Digite uma opção válida:(");
    return;
end





 
