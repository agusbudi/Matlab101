
%callback to sondage.m

if ui.SA > ui.HO
    winner = 'Sarkozy'
    pix = imread('Sarkozy.jpeg');   
    image(pix)
    %axis equal
elseif ui.SA < ui.HO
    winner = 'Hollande'
    pix = imread('hollande.jpg');
    image(pix)
    %axis equal
else
    winner = 'Nobody';
end


set(ui.sarko,'Visible', 'off');
set(ui.hollande,'Visible', 'off');
set(ui.result,'Visible', 'off');
set(ui.b1,'Visible', 'off');


ui.newsflash = uicontrol('Position',[0,10,500,30],...
    'String', [ winner ' wins next election'],...
    'Style', 'text',....
    'fontsize', 20);

    


    
    