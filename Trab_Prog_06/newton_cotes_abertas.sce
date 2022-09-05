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


for i=0: pontos-1
    x = linf + i*h ;
    function y = f(x)
        y = evstr(funcao);
    endfunction
    y(i+1) = f(x)
end
end

function i = pont_med(h,x,y)
i = 2*h*y(2);
endfunction 

function i = linear(h,x,y)
    i = ((3/2)*h)*(y(2)+y(3));
endfunction

function i = quadratica(h,x,y)
i = ((4/3)*h)*(2*y(1)+y(2)+2*y(3));
endfunction

function i = cubica(h,x,y)
    i = ((5/24)*h)*(11*y(1)+y(2)+y(3)+11*y(4));
endfunction
tip = input("Digite 1 para regra do ponto médio, 2 para interpolação linear, 3 para interpolação quadrática e 4 para interpolação cúbica-->");
select tip 
case 1  
    
    if pontos == 3 then
    printf("O valor da integral é = %.4f\n", pont_med(h,x,y));
else 
    printf("Impossível realizar a operação:(");
end
case 2
    if pontos == 4 then 
       printf("O valor da integral é = %.4f\n", linear(h,x,y));
    else 
        printf("Impossível realizar a operação:(");
        
end
case 3 
    if pontos == 5 then 
        printf("O valor da integral é = %.4f\n", quadratica(h,x,y));
    else
        printf("Impossível realizar a operação:(");
        end
case 4    
    if pontos == 6 then
        printf("O valor da integral é = %.4f\n", cubica(h,x,y));
    else 
        printf("Impossível realizar a operação:(");
end
else 
    printf("Digite uma opção válida:(");
    return;
end

