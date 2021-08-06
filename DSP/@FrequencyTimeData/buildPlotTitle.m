function str = buildPlotTitle(obj)
% Combines the title, source, and history fields into a string that can be
% displayed as the current figure's title.

[path file ext anot] = splitPath( obj.DataCommon.source );
str = [file ext];

% Replace underscores
underscores = strfind( str, '_' );
for ith = 1 : length( underscores )
    str(underscores(ith)) = ' ';
end

if(isempty(obj.DataCommon.UTCref))
    str = sprintf('%s', str);
else
    if( strfind( obj.valueType, 'Coherence' ) )
        str = sprintf('Cohere-o-gram of %s (%s UTC, Span = %6.3f - %6.3f sec) ', ...
                obj.DataCommon.source, datenum2str(obj.DataCommon.UTCref), obj.DataCommon.timeOffset, obj.DataCommon.timeEnd);
    else
        str = sprintf('Spectrogram of %s (%s UTC, Span = %6.3f - %6.3f sec) ', ...
                obj.DataCommon.source, datenum2str(obj.DataCommon.UTCref), obj.DataCommon.timeOffset, obj.DataCommon.timeEnd);
    end
end

if obj.DataCommon.history
    % Append the history field on another line
    str = sprintf('%s\n[history: %s]', str, obj.DataCommon.history);
end

    
