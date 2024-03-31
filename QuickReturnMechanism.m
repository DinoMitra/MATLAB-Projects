clear all
close all
clc

%Input parameters
l1 =30;
l2 =20;
l3 =60;
l4 =20;
l7 =45;
omega = 2;


ct = 1;
for  th1 = 0:0.1:4*pi;
    plot_1 = subplot(2,1,1);
    %To draw a reference horizontal line at point 0,0
    plot([-50 50],[0 0]);hold on;
    %To draw a reference horizontal line at slider tool
    plot([-70 40],[45 45]);hold on;
    %To draw a vertical reference line 
    plot([0 0],[-10 50]);hold on;
    %To plot a crank
    plot([0 l2*cos(th1)],[l1 l1-l2*sin(th1)],'o-','linewidth',2);hold on;
    th2 = atan((l2*sin(th1) - l1)/(l2*cos(th1)));
    if(th2<0)
        th2 = th2 + pi;
    end
    %To plot a lever link
    plot([0 -l3*cos(th2)],[0 l3*sin(th2)],'o-','linewidth',2);hold on;
    th3 = asin((l3*sin(th2)-l7)/l4);
    %To plot link4
    plot([-l3*cos(th2) -l3*cos(th2)-l4*cos(th3)],[l3*sin(th2) l7],'o-','linewidth',2);hold off; 
  
     l6 = -l3*cos(th2)-l4*cos(th3);
     L6 = l6.*1;
    
    %Plot axis setup
    axis(gca,'equal');
    axis([-100 100 -40 80]);
    
    %To plot the relation in between theta1 & l6
    if(th1<4*pi);
    plot_2 = subplot(2,1,2);
    plot(th1,L6,'o');hold on;
    pause(0.1)
    title(plot_2,'theta1(t) Vs Ram Displacement');
    xlabel(plot_2,'theta1(t)');
    ylabel(plot_2,'Slider Displacement');
     end
     
     %Animation time period
     pause(0.01)
     
   
     
end

 



    
    
    
    
    
    