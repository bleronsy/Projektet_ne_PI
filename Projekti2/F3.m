function y=F3(I,p,N)
  if(rem(N,2)==0||N<0)%Kontrollon madhesine e filterit
    disp 'Madhesia e filterit duhet te jete numer tek pozitiv'
  else
    [m n]=size(I);
    if (N<=m && N<=n)
      s=N/2+0.5;
      r=N/2-0.5;
      for i= s:(m-r)%Kontrollon ecjen e filterit ne imazh
        for j = s:(n-r)
          B=I(i-r:i+r, j-r:j+r);%Ruan vlerat te cilat eshte duke i mbuluar filteri
          a= double(B(1:(N*N)));
          b=double(B(1:(N*N)));
          I(i,j)= F3helper(a,p,N);%Implementim i formules F2
        endfor
      endfor
      imshow(I)
    else
      disp"Filteri eshte me i madh se rezulucioni i imaxzhit"
    endif
    endif
endfunction