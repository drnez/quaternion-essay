if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="test-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

 /* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(10cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -2.7287326685929445, xmax = 2.870440377418506, ymin = -2.627982316480535, ymax = 2.621146428435355;  /* image dimensions */
pen qqwuqq = rgb(0,0.39215686274509803,0); pen svsvsv = rgb(0.1450980392156863,0.1450980392156863,0.1450980392156863);

draw(arc((0,0),0.2726869989940642,22.02419343011905,77.35236355348748)--(0,0)--cycle, linewidth(1) + qqwuqq);
draw((0.9824167141096353,0.6054020294492248)--(0.803668705257123,0.5330953973781861)--(0.8759753373281617,0.3543473885256738)--(1.054723346180674,0.42665402059671254)--cycle, linewidth(1) + qqwuqq);
Label laxis; laxis.p = fontsize(10);
string blank(real x) {return "";}
xaxis(xmin, xmax,defaultpen+svsvsv, Ticks(laxis, blank, Step = 2, Size = 2, NoZero),EndArrow(6), above = true);
yaxis(ymin, ymax,defaultpen+svsvsv, Ticks(laxis, blank, Step = 2, Size = 2, NoZero),EndArrow(6), above = true); /* draws axes; NoZero hides '0' label */
 /* draw figures */
draw(circle((0,0), 2), linewidth(1));
draw((0,0)--(1.854051184802858,0.7499961360774592), linewidth(1),EndArrow(6));
draw((0,0)--(0.4379091112599032,1.9514701151377034), linewidth(1),EndArrow(6));
draw((xmin, -2.4720809823097176*xmin + 3.03401690106346)--(xmax, -2.4720809823097176*xmax + 3.03401690106346), linewidth(1)); /* line */
 /* dots and labels */
label("$x^2 + y^2 = r^2$", (-2.5379994396521974,1.9440696999951088), NE * labelscalefactor);
dot((1.854051184802858,0.7499961360774592),dotstyle);
label("$x_1 + y_1 i$", (2.025110680536908,0.8078738708510621), NE * labelscalefactor);
dot((0.4379091112599032,1.9514701151377034),dotstyle);
label("$x_2 + y_2 i$", (0.6162278524009097,2.044054932959785), NE * labelscalefactor);
dot((0,0),linewidth(4pt) + dotstyle);
label("$u$", (0.5889591525015033,0.33157467245974823), NE * labelscalefactor);
label("$v$", (0.30721212094532326,1.1260087030113952), NE * labelscalefactor);
label("$\theta$", (0.21628692054294893,0.244320739595615), NE * labelscalefactor,qqwuqq);
dot((2,0),linewidth(4pt) + dotstyle);
label("r", (2.0342002471700438,0.07161897356571992), NE * labelscalefactor);
dot((0,2),dotstyle);
label("r", (0.17085385441278137,2.1076818993918516), NE * labelscalefactor);
dot((1.054723346180674,0.42665402059671254),dotstyle);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
 /* end of picture */

