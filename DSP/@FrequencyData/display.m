function display(a)
%
% Display parent

display(a.DataCommon);


stg = sprintf(...
    ['FrequencyData fields -- \n',...
     '  Freq. Resolution  (freqResolution) : %8.8f Hz\n', ...
     '  Axis Label        (axisLabel)      : %s\n',...
     '  Value Type        (valueType)      : %s\n',...
     '  Value Units       (valueUnit)      : %s\n',...
     '  Sample Count      (sampleCount)    : %d'],...
    a.freqResolution, a.axisLabel, a.valueType, a.valueUnit, length(a.samples));

disp(stg)
