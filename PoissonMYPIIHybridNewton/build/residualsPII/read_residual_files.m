% Read residual files
name1 = 'res_b-6.000000_e-9.000000_s1.000000_h8_it';
format long
for j=1:16
    name = strcat(name1 ,num2str(j));
    fileID = fopen(name);
    formatSpec = '%f';
    v = fscanf(fileID,formatSpec);
    figure(j)
    semilogy(cumprod(v),'o')
end