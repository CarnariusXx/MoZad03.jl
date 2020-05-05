module MoZad03

function zad22(funk,xL,xU;ep=1e-8,golden=0.618)
              fa=funk(xL)
              fb=funk(xU)
              x1=xU-((xU-xL)*(golden))
              x2=xL+((xU-xL)*(golden))
              err=Inf
              while err>ep
                  if funk(x2)<funk(x1)
                      xL=x1
                      x1=x2
                      x2=xU-((xU-xL)*(golden))
                  elseif funk(x2)>funk(x1)
                      xU=x2
                      x2=x1
                  x1=xL+((xU-xL)*(golden))
                  else
                      xL=(x1+x2)/2
                      xU=xL
                  end
                 err=2*abs((xU-xL)/(xU+xL))
                  end
              Xmin=(x1+x2)/2
              print("Minimum: ",round(funk(Xmin),digits=2), " for: ", Xmin, " x1: " ,round(x1,digits=2), " x2: ", round(x2,digits=2))

       return(round(funk(Xmin),digits=2),round(Xmin,digits=2))
       end
	   
export zad22

end # module
