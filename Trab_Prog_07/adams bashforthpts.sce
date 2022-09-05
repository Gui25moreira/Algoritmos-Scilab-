clear;
clc;

function [y_final,A] = heun(fu,x,y,xfinal,h,n)
    
    function q = f(x,y)
        q = evstr(fu);
    endfunction
    
    k1 = f(x,y);
    s = x+h;
    r = y+(k1*h);
    k2 = f(s,r);
    o =(1/2)*k1 + (1/2)*k2;
    y = y + (o*h);
    x = x + h;
    de1 = k1;
   
    for i = 1:n
    A(i,1) = i;
    A(i,2) = x;
    A(i,3) = y;
    A(i,4) = f(x,y);     
    de2 = f(x,y);
    y = (y) + (((-0.5*de1)+((3/2)*de2))*h);
    x = x + h;
    de1 = de2;
    A(i,5) = y;
end

y_final = y;

endfunction

function [y_final,A] = P_medio(fu,x,y,xfinal,h,n)
    
       function q = f(x,y)
        q = evstr(funcao);
    endfunction

      k1 = f(x,y);
        s = x+(0.5*h);
        r = y+(k1*0.5*h);
        k2 = f(s,r);
        y = y + (k2*h);
        x = x+h;

    de1 = k1;

for i = 1:n
    A(i,1) = i;
    A(i,2) = x;
    A(i,3) = y;
    A(i,4) = f(x,y); 
    de2 = f(x,y);
    y = (y) + (((-0.5*de1)+((3/2)*de2))*h);
    x = x + h;
    de1 = de2;
    A(i,5) = y;
end

y_final = y;

endfunction

function [y_final,A] = kuta3_1(fu,x,y,xfinal,h,n)

    function q = f(x,y)
        q = evstr(fu);
    endfunction
    
    for i = 1 : 2
        k1(i) = f(x,y);
        s = x+(0.5*h);
        r = y+(k1(i)*0.5*h);
        k2 = f(s,r);
        p = x+((3/4)*h);
        t = y+(k2*(3/4)*h);
        k3 = f(p,t);
        o=((2*k1(i) + 3*k2 + 4*k3)/9);
        y = y +(o*h);
        x = x + h ;
    end

    de1 = k1(1);
    de2 = k1(2);
for i = 1:n
    A(i,1) = i;
    A(i,2) = x;
    A(i,3) = y;
    A(i,4) = f(x,y); 
    de3 = f(x,y);
    y = (y) + ((((5/12)*de1) - ((16/12)*de2) + ((23/12)*de3))*h);
    x = x + h 
    de1 = de2;
    de2 = de3;
    A(i,5) = y;
end

y_final = y;

endfunction

   function q = f(x,y)
        q = evstr(funcao);
    endfunction

function [y_final,A] = kuta3_2(fu,x,y,xfinal,h,n)
      for i = 1 :2
        k1(i) = f(x,y);
        s = x+(0.5*h);
        r = y+(k1(i)*0.5*h);
        k2 = f(s,r);
        p = (x + h);
        t = (y-(k1(i)*h) + (2*k2*h));
        k3 = f(p,t);
        o=((k1(i) + 4*k2 + k3)/6);
        y = y +(o*h);
        x = x + h ;
    end


        de1 = k1(1);
        de2 = k1(2);
for i = 1:n
    A(i,1) = i;
    A(i,2) = x;
    A(i,3) = y;
    A(i,4) = f(x,y); 
    de3 = f(x,y);
    y = (y) + ((((5/12)*de1) - ((16/12)*de2) + ((23/12)*de3))*h);
    x= x + h 
    de1 = de2;
    de2 = de3;
    A(i,5) = y;
end
y_final = y;

endfunction

function [y_final,A] = kuta4_1(fu,x,y,xfinal,h,n)
    
function q = f(x,y)
        q = evstr(fu);
    endfunction
    
    for i = 1:3
        k1(i) = f(x,y);
        s = x+(0.5*h);
        r = y+(k1(i)*0.5*h);
        k2 = f(s,r);
        p = x+(0.5*h);
        t = y+(k2*0.5*h);
        k3 = f(p,t);
        a = (x + h);
        b = y + (k3*h);
        k4 = f(a,b);
        o = ((k1(i) + 2*k2 + 2*k3 + k4)/6);
        y = y +(o*h);
        x = x + h ;
    end
    de1 = k1(1);
    de2 = k1(2);
    de3 = k1(3);
    
    for i = 1:n
    A(i,1) = i;
    A(i,2) = x;
    A(i,3) = y;
    A(i,4) = f(x,y); 
    de4 = f(x,y);
    y = (y) + ((-((9/24)*de1) + ((37/24)*de2) - ((59/24)*de3) + (55/24)*de4)*h);
    x= x + h 
    de1 = de2;
    de2 = de3;
    de3 = de4;
    A(i,5) = y;
end

y_final = y;

endfunction

function [y_final,A] = kuta4_2(fu,x,y,xfinal,h,n)
       
       function q = f(x,y)
        q = evstr(funcao);
    endfunction

 for i=1:3
        k1(i) = f(x,y);
        s = x+((1/3)*h);
        r = y+(k1(i)*(1/3)*h);
        k2 = f(s,r);
        p = x+((2/3)*h);
        t = y-((1/3)*k1(i)*h) + (k2*h);
        k3 = f(p,t);
        a = (x + h);
        b = y + (k1(i)*h)-(k2*h)+(k3*h);
        k4 = f(a,b);
        o = ((k1(i) + 3*k2 + 3*k3 + k4)/8);
        y = y +(o*h);
        x = x + h ;
    end

    de1 = k1(1);
    de2 = k1(2);
    de3 = k1(3);
 
    for i = 1:n
    A(i,1) = i;
    A(i,2) = x;
    A(i,3) = y;
    A(i,4) = f(x,y); 
    de4 = f(x,y);
    y = (y) + ((-((9/24)*de1) + ((37/24)*de2) - ((59/24)*de3) + (55/24)*de4)*h);
    x = x + h; 
    de1 = de2;
    de2 = de3;
    de3 = de4;
    A(i,5) = y;
end

y_final = y;

endfunction

fu = input("Digite uma função de x e y  -->","s");
x = input("Digite o x inicial -->");
y = input("Digite o y inicial -->");
xfinal = input("Digite o x final-->");

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
printf("\n1 - Adams de grau 1--\n");
printf("\n2 - Adams de grau 2--\n");
printf("\n3 - Adams de grau 3--\n");

p = input("\n Escolha uma opção acima-->"); 
select p 
case 1 
    
k = input("Digite 1 para heun ou 2 para ponto médio-->");
select k
     
case 1 
    j = input("Digite 1 para obter o passo a passo ou 2 caso não queira.-->");
select j
    case 1
   [y_final,A]  = heun(fu,x,y,xfinal,h,n);
   printf("--Passo--X(i)--Y(i)------f(X(i),Y(i))--y(i+1)--")  
   disp(A);
   printf("O valor do y final é --> %.6f", y_final);
case 2
   [y_final,A] = heun(fu,x,y,xfinal,h,n);
   printf("O valor do y final é --> %.6f", y_final);
end

case 2 
      j = input("Digite 1 para obter o passo a passo ou 2 caso não queira.-->");
select j
    case 1
   [y_final,A] = P_med(fu,x,y,xfinal,h,n);
   printf("--Passo--X(i)--Y(i)------f(X(i),Y(i))--y(i+1)--")  
   disp(A);
   printf("O valor do y final é --> %.6f", y_final);
case 2
     [y_final,A] = P_med(fu,x,y,xfinal,h,n);
     printf("O valor do y final é --> %.6f", y_final);
end

end

case 2
    
    k = input("Digite 1 para kuta3_1 ou 2 para kuta3_2-->");
select k
    
   case 1 
       
        j = input("Digite 1 para obter o passo a passo ou 2 caso não queira.-->");
select j
case 1
    
    [y_final,A]  = kuta3_1(fu,x,y,xfinal,h,n);
    printf("--Passo--X(i)--Y(i)------f(X(i),Y(i))--y(i+1)--")  
    disp(A);
    printf("O valor do y final é --> %.6f", y_final);
case 2
     [y_final,A]  = kuta3_1(fu,x,y,xfinal,h,n);
      printf("O valor do y final é --> %.6f", y_final);
end

case 2 
    
        j = input("Digite 1 para obter o passo a passo ou 2 caso não queira.-->");
select j
case 1
    
    [y_final,A] = kuta3_2(fu,x,y,xfinal,h,n);
    printf("--Passo--X(i)--Y(i)------f(X(i),Y(i))--y(i+1)--")  
    disp(A);
    printf("O valor do y final é --> %.6f", y_final);
case 2 
    [y_final,A] = kuta3_2(fu,x,y,xfinal,h,n);
    printf("O valor do y final é --> %.6f", y_final);
    end
end

case 3  
          k = input("Digite 1 para kuta3_1 ou 2 para kuta3_2-->");
select k
    
   case 1 
       
        j = input("Digite 1 para obter o passo a passo ou 2 caso não queira.-->");
select j
case 1
    
    [y_final,A]  = kuta4_1(fu,x,y,xfinal,h,n);
    printf("--Passo--X(i)--Y(i)------f(X(i),Y(i))--y(i+1)--")  
    disp(A);
    printf("O valor do y final é --> %.6f", y_final);
case 2
     [y_final,A]  = kuta4_1(fu,x,y,xfinal,h,n);
      printf("O valor do y final é --> %.6f", y_final);
end

case 2 
    
        j = input("Digite 1 para obter o passo a passo ou 2 caso não queira.-->");
select j
case 1
    
    [y_final,A] = kuta4_2(fu,x,y,xfinal,h,n);
    printf("--Passo--X(i)--Y(i)------f(X(i),Y(i))--y(i+1)--")  
    disp(A);
    printf("O valor do y final é --> %.6f", y_final);
case 2 
    [y_final,A] = kuta4_2(fu,x,y,xfinal,h,n);
    printf("O valor do y final é --> %.6f", y_final);
    end
end
end
