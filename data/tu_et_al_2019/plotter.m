M=readmatrix('inputfile.csv');

A=M(1,:);
B=M(2,:);
C=M(3,:);

n=[92 102 66 172 138 188];
nn=cumsum(n);

figure(1)
subplot(2,3,1), scatter( 1:n(1), A(1,1:nn(1)) ); title('CDH1: t=0'); axis([0 200 0 1500])
subplot(2,3,2), scatter( 1:n(2), A(1,nn(1)+1:nn(2)) ); title('CDH1: t=12'); axis([0 200 0 1500])
subplot(2,3,3), scatter( 1:n(3), A(1,nn(2)+1:nn(3)) ); title('CDH1: t=24'); axis([0 200 0 1500])
subplot(2,3,4), scatter( 1:n(4), A(1,nn(3)+1:nn(4)) ); title('CDH1: t=36'); axis([0 200 0 1500])
subplot(2,3,5), scatter( 1:n(5), A(1,nn(4)+1:nn(5)) ); title('CDH1: t=72'); axis([0 200 0 1500])
subplot(2,3,6), scatter( 1:n(6), A(1,nn(5)+1:nn(6)) ); title('CDH1: t=96'); axis([0 200 0 1500])
print('CDH1scatter','-dpng')

figure(2)
[f,xi]=ksdensity(A(1,1:nn(1))); subplot(2,3,1), plot(xi,f); title('CDH1: t=0');
[f,xi]=ksdensity(A(1,nn(1)+1:nn(2))); subplot(2,3,2), plot(xi,f); title('CDH1: t=12');
[f,xi]=ksdensity(A(1,nn(2)+1:nn(3))); subplot(2,3,3), plot(xi,f); title('CDH1: t=24'); 
[f,xi]=ksdensity(A(1,nn(3)+1:nn(4))); subplot(2,3,4), plot(xi,f); title('CDH1: t=36'); 
[f,xi]=ksdensity(A(1,nn(4)+1:nn(5))); subplot(2,3,5), plot(xi,f); title('CDH1: t=72'); 
[f,xi]=ksdensity(A(1,nn(5)+1:nn(6))); subplot(2,3,6), plot(xi,f); title('CDH1: t=96');
print('CDH1pdf','-dpng')


figure(3)
subplot(2,3,1), scatter( 1:n(1), B(1,1:nn(1)) ); title('KLF8: t=0'); axis([0 200 0 1500])
subplot(2,3,2), scatter( 1:n(2), B(1,nn(1)+1:nn(2)) ); title('KLF8: t=12'); axis([0 200 0 1500])
subplot(2,3,3), scatter( 1:n(3), B(1,nn(2)+1:nn(3)) ); title('KLF8: t=24'); axis([0 200 0 1500])
subplot(2,3,4), scatter( 1:n(4), B(1,nn(3)+1:nn(4)) ); title('KLF8: t=36'); axis([0 200 0 1500])
subplot(2,3,5), scatter( 1:n(5), B(1,nn(4)+1:nn(5)) ); title('KLF8: t=72'); axis([0 200 0 1500])
subplot(2,3,6), scatter( 1:n(6), B(1,nn(5)+1:nn(6)) ); title('KLF8: t=96'); axis([0 200 0 1500])
print('KLF8scatter','-dpng')

figure(4)
[f,xi]=ksdensity(B(1,1:nn(1))); subplot(2,3,1), plot(xi,f); title('KLF8: t=0');
[f,xi]=ksdensity(B(1,nn(1)+1:nn(2))); subplot(2,3,2), plot(xi,f); title('KLF8: t=12');
[f,xi]=ksdensity(B(1,nn(2)+1:nn(3))); subplot(2,3,3), plot(xi,f); title('KLF8: t=24'); 
[f,xi]=ksdensity(B(1,nn(3)+1:nn(4))); subplot(2,3,4), plot(xi,f); title('KLF8: t=36'); 
[f,xi]=ksdensity(B(1,nn(4)+1:nn(5))); subplot(2,3,5), plot(xi,f); title('KLF8: t=72'); 
[f,xi]=ksdensity(B(1,nn(5)+1:nn(6))); subplot(2,3,6), plot(xi,f); title('KLF8: t=96');
print('KLF8pdf','-dpng')


figure(5)
subplot(2,3,1), scatter( 1:n(1), C(1,1:nn(1)) ); title('ZEB1: t=0'); axis([0 200 0 1500])
subplot(2,3,2), scatter( 1:n(2), C(1,nn(1)+1:nn(2)) ); title('ZEB1: t=12'); axis([0 200 0 1500])
subplot(2,3,3), scatter( 1:n(3), C(1,nn(2)+1:nn(3)) ); title('ZEB1: t=24'); axis([0 200 0 1500])
subplot(2,3,4), scatter( 1:n(4), C(1,nn(3)+1:nn(4)) ); title('ZEB1: t=36'); axis([0 200 0 1500])
subplot(2,3,5), scatter( 1:n(5), C(1,nn(4)+1:nn(5)) ); title('ZEB1: t=72'); axis([0 200 0 1500])
subplot(2,3,6), scatter( 1:n(6), C(1,nn(5)+1:nn(6)) ); title('ZEB1: t=96'); axis([0 200 0 1500])
print('ZEB1scatter','-dpng')

figure(6)
[f,xi]=ksdensity(C(1,1:nn(1))); subplot(2,3,1), plot(xi,f); title('ZEB1: t=0');
[f,xi]=ksdensity(C(1,nn(1)+1:nn(2))); subplot(2,3,2), plot(xi,f); title('ZEB1: t=12');
[f,xi]=ksdensity(C(1,nn(2)+1:nn(3))); subplot(2,3,3), plot(xi,f); title('ZEB1: t=24'); 
[f,xi]=ksdensity(C(1,nn(3)+1:nn(4))); subplot(2,3,4), plot(xi,f); title('ZEB1: t=36'); 
[f,xi]=ksdensity(C(1,nn(4)+1:nn(5))); subplot(2,3,5), plot(xi,f); title('ZEB1: t=72'); 
[f,xi]=ksdensity(C(1,nn(5)+1:nn(6))); subplot(2,3,6), plot(xi,f); title('ZEB1: t=96');
print('ZEB1pdf','-dpng')



