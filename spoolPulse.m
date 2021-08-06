function [ lbls, arr ] = spoolPulse( lbls, strs )
%SPOOLPULSE Load and convert the standard SST spool pulse table
%   Converts a saved Spool Pulse Table (WGSPoolPulse) to
%
%                                             PulseNumber,ServerTime,ComputerID,SensorIDNumber,PulseDateTime,Latitude,Longitude,Elevation,ArrivalTime,AcousticZone,UseCount,Disposition,Length,Strength,Sharpness,Asymmetry,SignalToNoise,PrelimPulseRate,DeltaTrigger,PDOP,PulseType,ReservedEnum,PrepulseEnviro,EnvelopeShape,EnvelopeConst,EnvelopeFit,FrequencyPeak,Distance,Direction,Confidence,IncidentTypeID,IncidentSubTypeID,ShotIndex,Azimuth,AzimuthError,ElevationAngle,ComputedAzimuth,ComputedElevationAngle,PulseFeature0,PulseFeature1,PulseFeature2,PulseFeature3,PulseFeature4,RawAzimuth,RawElevationAngle,PulseFeatureSet,PulseFeature5,PulseFeature6,PulseFeature7,PulseFeature8,PulseFeature9,PulseFeature10,PulseFeature11,PulseFeature12,PulseFeature13,PulseFeature14,PulseFeature15
[ lbls, arr ] = pluckArray( lbls, strs, [], { '%d',       'dn',      '%d',      '%lu',         'dn',         '%g',    '%g',     '%g',     '%g',       '%d',        '%d',    '%d',       '%g',  '%g',    '%g',     '%g',     '%g',         '%g',           '%g',        '%g','%d',     '%d',        '%g',          '%g',         '%g',         '%g',       '%g',         '%g',    '%g',     '%g',      '%d',          '%d',             '%d',     '%g',   '%g',        '%g',          '%g',           '%g',                  '%d',         '%d',         '%d',         '%d',         '%g',         '%g',      '%g',             '%d',           '%g',         '%g',         '%g',         '%g',         '%g',         '%g',          '%g',          '%g',          '%g',          '%g',          '%g' } );