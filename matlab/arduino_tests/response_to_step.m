Colors = linspecer(6); 

%% VARIABLE EDITING
ms_to_s = 1/1000; % converts miliseconds to seconds
qc_to_rad = 2*pi/200000; % converts quadrature counts to radians

%% TRACKING PERFORMANCE PLOT FOR TEST 1
figure('Units', 'pixels', ...
    'Position', [100 100 600 300]);
grid on
hold on

h1encoder = plot(Timems*ms_to_s, Encoder*qc_to_rad);
h1eposposition = plot(Timems*ms_to_s, EPOSPosition*qc_to_rad);
% h1model = plot(t,x_m(1,:));

set(h1encoder                       , ...
  'LineWidth'       ,    2        , ...
  'LineStyle'       , '-'      , ...
  'color'          , Colors(2,:)     );

set(h1eposposition                       , ...
  'LineWidth'       ,    2        , ...
  'LineStyle'       , '-'        , ...
  'color'          , Colors(1,:)     );

h1Legend = legend( ...
  [h1encoder, h1eposposition], ...
  '\theta_{Encoder}', ...
  '\theta_{Sensor}'           , ...
  'location', 'SouthEast' );

% TrackingTitle  = title ('My Publication-Quality Graphics');
h1YLabel = ylabel('\theta (rad)');
h1XLabel = xlabel('time (s)');


set([h1Legend, gca]             , ...
    'FontSize'   , 13           );

set( gca                       , ...
    'FontSize',         15     , ...
    'FontName'   , 'Helvetica' );

set(gca, ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'YGrid'       , 'off'      , ...
  'LineWidth'   , 1         );

set([h1XLabel, h1YLabel], ...
    'FontName'   , 'AvantGarde');

% axis([57 59 0 2])

saveas(gcf,'delay_test_1_response.png')
% savefig('03_sin_sin_response')

%% TRACKING PERFORMANCE PLOT FOR TEST 2
figure('Units', 'pixels', ...
    'Position', [100 100 600 300]);
% figure;
hold on;
hold on
grid on

hold on
h2encoder = plot(Timems1*ms_to_s, Encoder1*qc_to_rad);
h2eposposition = plot(Timems1*ms_to_s, EPOSPosition1*qc_to_rad);
% h1model = plot(t,x_m(1,:));

set(h2encoder                       , ...
  'LineWidth'       ,    2        , ...
  'LineStyle'       , '-'      , ...
  'color'          , Colors(2,:)     );

set(h2eposposition                       , ...
  'LineWidth'       ,    2        , ...
  'LineStyle'       , '-'        , ...
  'color'          , Colors(1,:)     );

h2Legend = legend( ...
  [h2encoder, h2eposposition], ...
  '\theta_{Encoder}', ...
  '\theta_{Sensor}'           , ...
  'location', 'SouthEast' );

% TrackingTitle  = title ('My Publication-Quality Graphics');
h2YLabel = ylabel('\theta (rad)');
h2XLabel = xlabel('time (s)');


set([h2Legend, gca]             , ...
    'FontSize'   , 13           );

set( gca                       , ...
    'FontSize',         15     , ...
    'FontName'   , 'Helvetica' );

set(gca, ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'YGrid'       , 'off'      , ...
  'LineWidth'   , 1         );

set([h2XLabel, h2YLabel], ...
    'FontName'   , 'AvantGarde');

% axis([28 30 0 2])

saveas(gcf,'delay_test_2_response.png')
% savefig('03_sin_sin_response')

%% TRACKING PERFORMANCE PLOT FOR TEST 3
% figure('Units', 'pixels', ...
%     'Position', [100 100 600 300]);
% % figure;
% hold on;
% hold on
% grid on
% 
% hold on
% h3encoder = plot(Timems2*ms_to_s, Encoder2*qc_to_rad);
% h3eposposition = plot(Timems2*ms_to_s, EPOSPosition2*qc_to_rad);
% % h1model = plot(t,x_m(1,:));
% 
% set(h3encoder                       , ...
%   'LineWidth'       ,    2        , ...
%   'LineStyle'       , '-'      , ...
%   'color'          , Colors(2,:)     );
% 
% set(h3eposposition                       , ...
%   'LineWidth'       ,    2        , ...
%   'LineStyle'       , '-'        , ...
%   'color'          , Colors(1,:)     );
% 
% h3Legend = legend( ...
%   [h3encoder, h3eposposition], ...
%   '\theta_{Encoder}', ...
%   '\theta_{Sensor}'           , ...
%   'location', 'SouthEast' );
% 
% % TrackingTitle  = title ('My Publication-Quality Graphics');
% h3YLabel = ylabel('\theta (rad)');
% h3XLabel = xlabel('time (s)');
% 
% 
% set([h3Legend, gca]             , ...
%     'FontSize'   , 13           );
% 
% set( gca                       , ...
%     'FontSize',         15     , ...
%     'FontName'   , 'Helvetica' );
% 
% set(gca, ...
%   'XMinorTick'  , 'on'      , ...
%   'YMinorTick'  , 'on'      , ...
%   'YGrid'       , 'off'      , ...
%   'LineWidth'   , 1         );
% 
% set([h3XLabel, h3YLabel], ...
%     'FontName'   , 'AvantGarde');
% 
% axis([43 45 0 2])
% 
% saveas(gcf,'delay_test_3_response.png')
% % savefig('03_sin_sin_response')