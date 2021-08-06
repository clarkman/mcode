function objects = SQLquerySignalEvents(filename)
%
% Generates a query that returns all Signal Events for the given file, and
% executes the query.
%  Returns a cell array of the Signal Events.

NEWLINE = char(10);

queryString = ...
['select file.filename, ', NEWLINE, ...
 'REF1.refInternal typeInternal, REF1.refExternal typeDisplay, ', NEWLINE, ...
 'REF2.refInternal subtypeInternal, REF2.refExternal subtypeDisplay, ', NEWLINE, ...
 'signalevent.signalEventId, ', NEWLINE, ...  %  'signalevent.fileId, ', 'signalevent.sigType, ', 'signalevent.subType, ', ...
 'signalevent.startTime, ', NEWLINE, ...
 'signalevent.endTime, ', NEWLINE, ...
  'signalevent.freqMin, ', NEWLINE, ...
  'signalevent.freqMax, ', NEWLINE, ...
  'signalevent.ampMin, ', NEWLINE, ...
  'signalevent.ampMax, ', NEWLINE, ...
  'signalevent.peakEnergy, ', NEWLINE, ...
  'signalevent.comments ', NEWLINE, ...
  'from signalevent ', NEWLINE, ...
'left join file on signalevent.fileId= file.fileId ', NEWLINE, ...
'left join refdata REF1 on signalevent.sigType = REF1.refIndex ', NEWLINE, ...
'left join refdata REF2 on signalevent.subType = REF2.refIndex', NEWLINE];

queryString = [queryString, 'where file.filename = "', filename, '" '];

objects = SQLrunQuery(queryString);

