function [celulas,n0,n1,n2]=regras(celulas,n0,n1,n2,i,j)
% FIS = readfis('fuzzy1')
% M=[n0 n1 n2; 0 0 0];
% Outputs=evalfis(FIS,M);
if celulas(i,j)~=0
    if celulas(i,j)==1
        if n1>=11 | n1<=4
            celulas(i,j)=0;
        else
            celulas(i,j)=1;
        end
    end
    if celulas(i,j)==2
        if n2>=11 | n2<=4
            celulas(i,j)=0;
        else
            celulas(i,j)=2;
        end
    end
    n0=0;
    n1=0;
    n2=0;
else

if celulas(i,j)==0
    if n0>=6  & n0<=9
        [ma,posi]=max([n1 n2]);
        celulas(i,j)=posi;
    end
    n0=0;
    n1=0;
    n2=0;
end

end