clear ;
clc;
function d = centrada_1(h,x)
     function Y = f(x)
    Y = evstr(fun);
endfunction
d = (f(x + h) - f(x - h))/(2*h);
printf("A derivada centrada no ponto  %.4f é = %.4f:\n", x, d);
endfunction
function centrada(n,x,y)
for i = 1:n-1
     for i = 1:n-1
            h(i) = abs(x(i+1)-x(i));
        end
    dp(i) = ((y(i+1))-y(i))/(h(i));
end

for j = 2:n
    da(j) = ((y(j))-(y(j-1)))/(h(j-1));
end
for r= 2 : n-1
    dc(r-1) = (dp(r) + da(r))/2
end
printf("A derivada centrada no ponto %.4f é = %.4f", x(i), dc(r-1));
endfunction 
tip1 = input("Digite 1 caso queira entrar com uma função e 2 caso queira entrar com os pontos-->");
select tip1 
case 1 
    fun = input("Digite uma função em x!-->", "s");
    x = input("Digite o ponto inicial:-->");
case 2 
    n = input("Quantos pontos vai querer escolher:-->")
    for i = 1:n
         if n == 1 then 
        printf("Impossível encontrar  a derivada com apenas um ponto:(");
        return;
elseif n == 0 then 
    printf("Impossível encontrar a derivada com 0 pontos:(");  
 return;
 end 
        printf("Digite o ponto e sua respectiva imagem-->");
        x(i) = input("x%d-->");
        y(i) = input("y%d-->");
end
else 
    printf("Escolha uma opção válida:(");
    return;
end
select tip1
case 1
    h = input("Digite 1 caso queira estabelecer uma distância e 2 caso não queira! -->");
select h
case 1 
    h = input("Digite o valor da distância -->");
case 2
    h = 0.0001;
else 
    printf("Escolha uma opção válida:(");
    return;
end
centrada_1(h,x)  
case 2
centrada(n,x,y)      
else 
    printf("Esocolha uma opção válida:(");
    return;
end

