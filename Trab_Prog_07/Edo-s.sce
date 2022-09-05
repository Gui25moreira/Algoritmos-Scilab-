clear;
clc;

function [y_final,A]  = euler(x,y,xfinal,h,deri,n)

    function q = f(x,y)
        q = evstr(deri);
    endfunction

for i = 1:n
A(i,1) = i;
A(i,2) = x;
A(i,3) = y;
A(i,4) = f(x,y); 
y = y + f(x,y)*h
x = x + h
A(i,5) = y;

end

y_final = y;

endfunction

function [y_final,A] = heun(x,y,xfinal,h,deri,n)
    
    function q = f(x,y)
        q = evstr(deri);
    endfunction
    for i = 1:n
        A(i,1) = i;
        A(i,2) = x;
        A(i,3) = y;
        A(i,4) = f(x,y); 
        k1 = f(x,y)
        s = x+h
        r = y+(k1*h)
        k2 = f(s,r)
        o =(1/2)*k1 + (1/2)*k2
        y= y + (o*h)
        x = x + h
        A(i,5) = y;
    end
    
    y_final = y;
    
endfunction


function [y_final,A] = kuta3_1(x,y,xfinal,h,deri,n) 
    
    function q = f(x,y)
        q = evstr(deri);
    endfunction
    
    for i = 1:n
        A(i,1) = i;
        A(i,2) = x;
        A(i,3) = y;
        A(i,4) = f(x,y); 
        k1 = f(x,y);
        s = x+(0.5*h);
        r = y+(k1*0.5*h);
        k2 = f(s,r);
        p = x+((3/4)*h);
        t = y+(k2*(3/4)*h);
        k3 = f(p,t);
        o=((2*k1 + 3*k2 + 4*k3)/9);
        y = y +(o*h)
        x = x + h 
        A(i,5) = y;
    end
y_final = y;    
endfunction

function [y_final,A] = kuta4_3(x,y,xfinal,h,deri,n)

    function q = f(x,y)
        q = evstr(deri);
    endfunction
    
    for i =1:n
        A(i,1) = i;
        A(i,2) = x;
        A(i,3) = y;
        A(i,4) = f(x,y); 
        k1 = f(x,y);
        s = x+((1/3)*h);
        r = y+(k1*(1/3)*h);
        k2 = f(s,r);
        p = x+((2/3)*h);
        t = y-((1/3)*k1*h) + (k2*h);
        k3 = f(p,t);
        a = (x + h);
        b = y + (k1*h)-(k2*h)+(k3*h);
        k4 = f(a,b);
        o = ((k1 + 3*k2 + 3*k3 + k4)/8);
        y = y +(o*h);
        x = x + h ;
        A(i,5) = y;
    end
    
    y_final = y;
    
endfunction

deri = input("Digite a função que deve ser utilizada:","s");
x = input("Digite o x inicial :");
y = input("Digite o y inicial :");
xfinal = input("Digite o x final:");

h = input("Digite 1 para escolher o h ou 2 para escolher o número de passos!");
select h 
case 1 
      h = input("Digite o valor de h!");
      n = xfinal/h;
case 2 
      n = input("Digite o número de passos!");
      h = (xfinal - x)/n;
else 
    printf("Digite uma opção válida:(");
    return;
end

printf("Opções do programa!/n");
printf("\n1 - Método de Euler -------\n");
printf("\n2 - Método de Heun --------\n");
printf("\n4 - Método de Kuta_3.1 ----\n");
printf("\n6 - Método de Kuta_4.3 ----\n");

tip = input("\n Escolha uma opção acima-->"); 
select tip 
case 1 
k = input("Digite 1 para obter o passo a passo ou 2 caso não queira.-->");
select k
case 1 
[y_final,A] = euler(x,y,xfinal,h,deri,n);
printf("--Passo--X(i)--Y(i)------f(X(i),Y(i))--y(i+1)--")  
disp(A);
printf("O valor do y final é = %.6f\n", y_final);
case 2 
        [y_final,A] = euler(x,y,xfinal,h,deri,n);
        printf("O valor do y final é = %.6f\n", y_final);
        end
case 2 
k = input("Digite 1 para obter o passo a passo ou 2 caso não queira.-->");
select k
    case 1
   [y_final,A] = heun(x,y,xfinal,h,deri,n);
   printf("--Passo--X(i)--Y(i)------f(X(i),Y(i))--y(i+1)--")  
   disp(A);
   printf("O valor do y final é = %.6f\n", y_final);
case 2 
    [y_final,A] = heun(x,y,xfinal,h,deri,n);
    printf("O valor do y final é = %.6f\n", y_final);
end
case 3 
    
 k = input("Digite 1 para obter o passo a passo ou 2 caso não queira.-->");
select k
case 1
    [y_final,A] =  kuta3_1(x,y,xfinal,h,deri,n);
    printf("--Passo--X(i)--Y(i)------f(X(i),Y(i))--y(i+1)--")  
    disp(A);
    printf("O valor do y final é = %.6f\n", y_final);
case 2 
      [y_final,A] =  kuta3_1(x,y,xfinal,h,deri,n);
       printf("O valor do y final é = %.6f\n", y_final);
end

case 4
     k = input("Digite 1 para obter o passo a passo ou 2 caso não queira.-->");
select k
case 1 
     [y_final,A] =  kuta4_3(x,y,xfinal,h,deri,n);
      printf("--Passo--X(i)--Y(i)------f(X(i),Y(i))--y(i+1)--")  
      disp(A);
      printf("O valor do y final é = %.6f\n", y_final);
case 2
     [y_final,A] =  kuta4_3(x,y,xfinal,h,deri,n);
      printf("O valor do y final é = %.6f\n", y_final);
end
else 
    printf("Escolha uma opção válida!");
    return;
end




