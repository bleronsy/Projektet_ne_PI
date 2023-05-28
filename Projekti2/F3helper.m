function retval=F3helper(a,p,N)% Funksioni ndihmes i cili llograit vleren e pikselit duke perdorur formulen F3
  retval =0;
   shuma = 0;
    for i=1:(N*N)
      shuma = shuma+power(a(i),p);
    endfor
    retval = round(power((shuma/(N*N)),(1/p)));%Vlera perfundimtare
  return;
endfunction