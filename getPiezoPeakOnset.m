function [ onsetMsec ] = getPiezoPeakOnset( arr, sensors, doMean )

sz = size(arr);
numExps = sz(1);

if nargin < 3
  doMean = 0;
end

Fs = 24000;

pTmp = zeros( numExps, 2 );

expCtr = 0;
for ex = 1 : numExps
  [ data, fNames ] = loadPiezoData( arr, ex, sensors );
  if isempty(data)
  	continue
  end
  expCtr = expCtr + 1;
  piezo = data{1};

  [ val , ith ] = max(abs(piezo));
  if doMean
  	error('Nyet')
  else % Use trigger time
  	if ith < 24000
  	  error('Peaks before')
  	end
    pTmp(expCtr,1) = ((ith - 24000) / Fs) * 1000; 
    pTmp(expCtr,2) = arr(ex,11); 
  end 	
end

onsetMsec = pTmp(1:expCtr,:);
