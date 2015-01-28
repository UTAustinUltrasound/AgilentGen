function freq = genfreq(generator, frequency)
% FREQ = GENFREQ(GENERATOR, FREQUENCY)  This function sets the frequency
% for the Hewlett Packard 33120A.  Simply declare your generator as a
% variable and then use this function to set the frequency.  Input for
% freq should be a number.

if strcmp(generator.Status, 'closed') == 1 % Open up your generator only if it is closed.
    fopen(generator)
end

val = num2str(frequency);
command = 'FREQ ';

fprintf(generator, [command val]);
freq = str2double(query(generator, 'FREQ?'));

% fclose(generator);