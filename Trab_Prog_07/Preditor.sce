clear ;
clc;

function [y_final] = heun(fu,x,yi,xfinal,h,n,eps)
    
    function q = f(x,y)
        q = evstr(fu);
    endfunction

    
    k1 = f(x,yi);
    s = x+h;
    r = yi+(k1*h);
    k2 = f(s,r);
    o =(1/2)*k1 + (1/2)*k2;
    y = yi + (o*h);
    x = x + h;
    de1 = k1;
    
    while abs(y - yi) >= eps
    de2 = f(x,y);  
    y = yi + ((0.5*de1)+(0.5*de2))*h;
    de2 = f(x,y);
    yi =y;
end

x=x+h

for i = 1:n-1
     
    y = (y) + ((-(0.5*de1)+((3/2)*de2))*h);

    de1 = de2;
    de2 = f(x,y);

    while abs(y - yi) >= eps

    y = yi + ((0.5*de1)+(0.5*de2))*h;
    de2 = f(x,y);
    yi = y;
    
end

x=x+h;
y_final = y; 

end
    
endfunction

function [y_final] = P_med(fu,x,yi,xfinal,h,n,eps)

    function q = f(x,y)
        q = evstr(fu);
    endfunction

        k1 = f(x,yi);
        s = x+(0.5*h);
        r = yi+(k1*0.5*h);
        k2 = f(s,r);
        y = yi + (k2*h);
        x=x+h
        
de1 = k1

    while abs(y - yi) >= eps
    de2 = f(x,y);  
    y = yi + ((0.5*de1)+(0.5*de2))*h;
    de2 = f(x,y);
    yi =y;
end

 x=x+h

for i = 1:n-1
     
    y = (y) + ((-(0.5*de1)+((3/2)*de2))*h);

    de1 = de2;
    de2 = f(x,y);

    while abs(y - yi) >= eps

    y = yi + ((0.5*de1)+(0.5*de2))*h;
    de2 = f(x,y);
    yi = y;
    
end

x=x+h;
y_final = y; 

end

endfunction

function [y_final] = kuta3_1(fu,x,yi,xfinal,h,n,eps)
   
    function q = f(x,y)
        q = evstr(fu);
    endfunction
    
    for i = 1 : 2
        k1(i) = f(x,yi);
        s = x+(0.5*h);
        r = yi+(k1(i)*0.5*h);
        k2 = f(s,r);
        p = x+((3/4)*h);
        t = yi+(k2*(3/4)*h);
        k3 = f(p,t);
        o=((2*k1(i) + 3*k2 + 4*k3)/9);
        y = yi +(o*h);
        x = x + h ;
    end

    de1 = k1(1);
    de2 = k1(2);
    
     while abs(y - yi) >= eps
         de3 = f(x,y);
         y = yi+(-1/12*de1+8/12*de2+5/12*de3)*h 
         de3 = f(x,y);
         yi = y;
         
     end
     
         for i = 1:n-1
            
    y = (yi) + ((((5/12)*de1) - ((16/12)*de2) + ((23/12)*de3))*h);
    de1 = de2;
    de2 = de3;
    de3 = f(x,y);
    
    while abs(y - yi) >= eps
         de3 = f(x,y);
         y = yi+(-1/12*de1+8/12*de2+5/12*de3)*h 
         yi = y;
         end

    x = x + h 
    y_final = y; 
    
end

endfunction

function [y_final] = kuta3_2(fu,x,yi,xfinal,h,n,eps)
   
    function q = f(x,y)
        q = evstr(fu);
    endfunction
    
     for i = 1 :2
        k1(i) = f(x,yi);
        s = x+(0.5*h);
        r = yi+(k1(i)*0.5*h);
        k2 = f(s,r);
        p = (x + h);
        t = (yi-(k1(i)*h) + (2*k2*h));
        k3 = f(p,t);
        o=((k1(i) + 4*k2 + k3)/6);
        y = yi +(o*h);
        x = x + h ;
    end
    
        de1 = k1(1);
        de2 = k1(2);
        
         while abs(y - yi) >= eps
         de3 = f(x,y);
         y = yi+(-1/12*de1+8/12*de2+5/12*de3)*h 
         de3 = f(x,y);
         yi = y;
         
     end
     
         for i = 1:n-1
            
    y = (yi) + ((((5/12)*de1) - ((16/12)*de2) + ((23/12)*de3))*h);
    de1 = de2;
    de2 = de3;
    de3 = f(x,y);
    
    while abs(y - yi) >= eps
         de3 = f(x,y);
         y = yi+(-1/12*de1+8/12*de2+5/12*de3)*h 
         yi = y;
     end
     

    x = x + h 
    y_final = y;
     
     end
endfunction

function [y_final] = kuta4_1(fu,x,yi,xfinal,h,n,eps)
    
    function q = f(x,y)
        q = evstr(fu);
    endfunction
 
 for i = 1:3
     
        k1(i) = f(x,yi);
        s = x+(0.5*h);
        r = yi+(k1(i)*0.5*h);
        k2 = f(s,r);
        p = x+(0.5*h);
        t = yi+(k2*0.5*h);
        k3 = f(p,t);
        a = (x + h);
        b = yi + (k3*h);
        k4 = f(a,b);
        o = ((k1(i) + 2*k2 + 2*k3 + k4)/6);
        y = yi +(o*h);
        x = x + h ;
        
    end   
    
    de1 = k1(1);
    de2 = k1(2);
    de3 = k1(3);
    
    while abs(y - yi) >= eps
         de4 = f(x,y);
         y = yi+(1/24*de1-5/24*de2+19/24*de3+9/24*de4)*h
         yi = y;
         de4 = f(x,y);
     end
     
      for i = 1:n-2
      y = (y) + ((-((9/24)*de1) + ((37/24)*de2) - ((59/24)*de3) + (55/24)*de4)*h);
      de1 = de2;
      de2 = de3;
      de3 = de4;
      de4 = f(x,y);
    
      while abs(y - yi) >= eps
           
           de4 = f(x,y);
           y = yi+(1/24*de1-5/24*de2+19/24*de3+9/24*de4)*h
           yi = y
       
       end
        
        x = x + h 
        y_final = y;
        
        end   
    
endfunction

function [y_final] = kuta4_2(fu,x,yi,xfinal,h,n,eps)
   
    function q = f(x,y)
        q = evstr(fu);
    endfunction
    
    for i=1:3
        k1(i) = f(x,yi);
        s = x+((1/3)*h);
        r = yi+(k1(i)*(1/3)*h);
        k2 = f(s,r);
        p = x+((2/3)*h);
        t = yi-((1/3)*k1(i)*h) + (k2*h);
        k3 = f(p,t);
        a = (x + h);
        b = yi + (k1(i)*h)-(k2*h)+(k3*h);
        k4 = f(a,b);
        o = ((k1(i) + 3*k2 + 3*k3 + k4)/8);
        y = yi +(o*h);
        x = x + h ;
    end
    
     de1 = k1(1);
    de2 = k1(2);
    de3 = k1(3);
    
    while abs(y - yi) >= eps
         de4 = f(x,y);
         y = yi+(1/24*de1-5/24*de2+19/24*de3+9/24*de4)*h
         yi = y;
         de4 = f(x,y);
     end
     
      for i = 1:n-1
      y = (y) + ((-((9/24)*de1) + ((37/24)*de2) - ((59/24)*de3) + (55/24)*de4)*h);
      de1 = de2;
      de2 = de3;
      de3 = de4;
      de4 = f(x,y);
    
      while abs(y - yi) >= eps
           
           de4 = f(x,y);
           y = yi+(1/24*de1-5/24*de2+19/24*de3+9/24*de4)*h
           yi = y
       
       end
        
        x = x + h 
        y_final = y;
        
    end
    
    endfunction

fu = input("Digite uma função de x e y  :","s");
x = input("Digite o x inicial :");
yi = input("Digite o y inicial :");
xfinal = input("Digite o x final:");

eps = input("Digite 1 para escolher a tolerância ou 2 caso não queira.-->");
select eps 
case 1 
    eps = ("Digite a tolerância.-->")
case 2
    eps = 0.0025;
else 
    printf("Escolha uma opção válida:(");
    
end

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
   [y_final]  = heun(fu,x,yi,xfinal,h,n,eps);
   printf("O valor do y final é --> %.6f", y_final);
case 2
   [y_final] = heun(fu,x,yi,xfinal,h,n,eps);
   printf("O valor do y final é --> %.6f", y_final);
end
case 2
   j = input("Digite 1 para obter o passo a passo ou 2 caso não queira.-->");
select j
case 1
    
   [y_final]  = P_med(fu,x,yi,xfinal,h,n,eps);
   printf("O valor do y final é --> %.6f", y_final);
case 2
   [y_final] = P_med(fu,x,yi,xfinal,h,n,eps);
   printf("O valor do y final é --> %.6f", y_final);
   
end
end
case 2
    
    k = input("Digite 1 para kuta3.1 ou 2 para kuta3.2-->");
select k
    case 1 
         j = input("Digite 1 para obter o passo a passo ou 2 caso não queira.-->");
select j
case 1
    
   [y_final]  = kuta3_1(fu,x,yi,xfinal,h,n,eps);
   printf("O valor do y final é --> %.6f\n", y_final);
case 2
   [y_final] = kuta3_1(fu,x,yi,xfinal,h,n,eps);
   printf("O valor do y final é --> %.6f\n", y_final);
end
case 2 
      j = input("Digite 1 para obter o passo a passo ou 2 caso não queira.-->");
select j
case 1
    
   [y_final]  = kuta3_2(fu,x,yi,xfinal,h,n,eps);
   printf("O valor do y final é --> %.6f\n", y_final);
case 2
   [y_final] = kuta3_2(fu,x,yi,xfinal,h,n,eps);
   printf("O valor do y final é --> %.6f\n", y_final);
end

end

case 3
    
 k = input("Digite 1 para kuta4.1 ou 2 para kuta4.2-->");
select k
    
    case 1 
         j = input("Digite 1 para obter o passo a passo ou 2 caso não queira.-->");
select j
    
case 1
    
   [y_final]  = kuta4_1(fu,x,yi,xfinal,h,n,eps);
   printf("O valor do y final é --> %.6f\n", y_final);
case 2
    
   [y_final] = kuta4_2(fu,x,yi,xfinal,h,n,eps);
   printf("O valor do y final é --> %.6f\n", y_final);
end
end
end
c