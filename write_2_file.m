function  write_2_file( data, filename, ext )

%function to write given data matrix to chosen file type, as specified
%by ext. Code allows only 2D matrices

datasize = size(data);

fullname = [filename '.' ext]; %create full name

switch (ext)
    case 'mat' %save data in Matlab format
        save ( fullname, 'data')
        
    case 'txt' %save data as formatted text, (assume numeric data only)
        formatstr = '%f'; %assume at least one column
        if datasize(2) > 1 %if more than 1 column
            for i = 2:datasize(2) %for 2nd to last column, add a format str
                formatstr = [formatstr '\t%f']; %TAB delimiter
            end
        end
        formatstr = [formatstr '\n']; % end of line
        
        id = fopen( fullname, 'wt'); %open output file
        if id>0 %only proceed if fopen successful
            
            fprintf(id, formatstr, data'); %don't forget the transposition
            fclose(id);
        else
            %display a pertinent warning if fopen failed
            warning('file OPEN unsuccessful')  
        end
        
    case 'xls' %save data in xls fileformat
        header = 'xls file generated by write_2_file matlab function';
        
        %generate column headings
        
        for i = 1:datasize(2)
            colnames{i} = [ 'Col' num2str(i)];
        end
        xlswrite(data, header, colnames, fullname);
end
        
            
        
        
        
        
            
        

