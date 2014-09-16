% Data ----------------------------------------------------------------------

% A sender goes a couple of hundred meters in open space,
% and a couple of ten meters in buildings, through several rooms.
% So about 1% of the signal is left after a couple of walls,
% which gives absorption about 0.1 to 0.9 ?

:- op(31,xfx,#).      % to describe points

sender_intensity(50000).
threshold(0.0003).
grid_size(2).

ground_size(90, 90).

building_walls('Ex1', (0#0, 90#90), [wall(0#41,90#41), wall(0#51,90#51), wall(41#0, 41#41), wall(71#0, 71#41), wall(31#51, 31#90), wall(61#51, 61#90)]).

%%% walls('Ex2', [wall(45 # 77, 55 # 77), wall(55 # 77, 68 # 63), wall(68 # 63, 69 # 43), wall(68 # 43, 76 # 32), wall(54 # 77, 54 # 65), wall(45 # 77, 45 # 65), wall(54 # 65, 62 # 57), wall(61 # 57, 61 # 43), wall(61 # 42, 67 # 32)]).
% No solution for 20/3 with (1) but a solution for 20/3 with (5)


senders_name('Ex1', [(50#35, "1"), (20#70, "2"), (70#70, "3")]).

building('ECRC',(20#12, 67#82), [wall(35 # 26, 52 # 26),wall(65 # 82,
41 # 82), wall(41 # 82, 20 # 62), wall(20 # 62, 20 # 23), wall(20 #
23, 30 # 12), wall(30 # 12, 57 # 12), wall(57 # 12, 67 # 22), wall(67
# 22, 67 # 48), wall(67 # 48, 77 # 57), wall(77 # 57, 77 # 83),
wall(77 # 83, 71 # 89), wall(71 # 89, 65 # 82), wall(28 # 41, 31 #
38), wall(31 # 38, 31 # 23), wall(31 # 23, 56 # 23), wall(56 # 23, 56
# 61), wall(56 # 61, 43 # 61), wall(43 # 61, 43 # 64), wall(43 # 64,
48 # 70), wall(46 # 72, 52 # 78), wall(52 # 78, 52 # 82), wall(46 #
72, 38 # 63), wall(39 # 63, 34 # 63), wall(34 # 63, 31 # 61), wall(31
# 61, 31 # 42), wall(31 # 42, 39 # 42), wall(39 # 42, 39 # 63),
wall(32 # 74, 40 # 66), wall(29 # 71, 33 # 67), wall(33 # 67, 28 #
62), wall(28 # 62, 28 # 41), wall(46 # 72, 52 # 65), wall(52 # 65, 52
# 61), wall(56 # 44, 67 # 44), wall(56 # 38, 67 # 38), wall(56 # 32,
67 # 32), wall(56 # 26, 67 # 26), wall(56 # 23, 63 # 18), wall(53 #
23, 53 # 12), wall(42 # 23, 42 # 12), wall(36 # 23, 36 # 12), wall(31
# 23, 31 # 17), wall(31 # 17, 28 # 14), wall(31 # 26, 20 # 26),
wall(31 # 35, 20 # 35), wall(28 # 41, 20 # 41), wall(28 # 47, 20 #
47), wall(28 # 51, 20 # 51), wall(28 # 58, 20 # 58), wall(28 # 62, 24
# 66), wall(39 # 58, 31 # 58), wall(43 # 58, 52 # 58), wall(43 # 48,
52 # 48), wall(43 # 44, 52 # 44), wall(43 # 58, 43 # 26), wall(52 #
58, 52 # 26), wall(35 # 26, 35 # 37), wall(35 # 37, 43 # 37), wall(35
# 32, 43 # 32), wall(43 # 58, 52 # 58), wall(56 # 52, 62 # 44)] ).


building('Farm', (16#6, 64#54), [

wall(19.6 # 39.0, 18.8 # 25.0), wall(18.8 # 25.0, 26.6 # 24.6),
wall(26.6 # 24.6, 28.0 # 38.6), wall(28.0 # 38.6, 19.6 # 39.0),

%%% wall(29.0 # 47.0, 32.4 # 46.2), wall(32.4 # 46.2, 31.2 # 40.8),
%%% wall(31.2 # 40.8, 27.6 # 41.6), wall(27.6 # 41.6, 28.8 # 47.0),

%%% wall(54.2 # 32.2, 60.4 # 35.0), wall(60.4 # 35.0, 62.0 # 31.2),
%%% wall(62.0 # 31.2, 55.8 # 28.6), wall(55.6 # 28.6, 54.0 # 32.2),

%%% wall(57.6 # 24.2, 61.2 # 24.0), wall(61.2 # 24.0, 61.0 # 20.2),
%%% wall(61.0 # 20.2, 57.2 # 20.4), wall(57.2 # 20.4, 57.6 # 24.0),
wall(34.4 # 27.6, 50.6 # 20.3), wall(50.6 # 20.3, 45.4 # 9.2),
wall(45.4 # 9.2, 29.0 # 16.8), wall(29.0 # 16.8, 34.4 # 27.6),

wall(35.3 # 50.2, 54.8 # 47.1), wall(33.8 # 40.6, 53.2 # 38),
wall(35.3 # 50.2, 33.8 # 40.6), wall(54.8 # 47.1, 53.2 # 38)]).


building('Mona', (13#8, 79#81), [wall(13.2 # 54.8, 67.0 # 53.4), wall(67.0 # 53.4, 66.8 # 8.0), wall(67.0 # 8.0, 13.2 # 8.2), wall(13.2 # 8.2, 13.2 # 54.8), wall(16.8 # 55.2, 16.8 # 77.0), wall(16.8 # 77.0, 56.4 # 76.8), wall(56.4 # 76.8, 56.6 # 81.0), wall(56.6 # 81.0, 67.2 # 80.6), wall(67.2 # 80.6, 67.2 # 71.8), wall(67.2 # 71.8, 78.8 # 71.6), wall(78.8 # 71.6, 78.4 # 61.0), wall(78.6 # 61.0, 67.0 # 61.0), wall(67.0 # 61.0, 66.6 # 53.6), wall(17.0 # 70.2, 23.4 # 69.8), wall(23.6 # 69.8, 23.6 # 76.2), wall(17.0 # 62.8, 24.0 # 62.8), wall(23.8 # 62.8, 23.8 # 55.2), wall(56.4 # 53.8, 56.4 # 61.0), wall(56.4 # 77.0, 56.4 # 72.0), wall(24.4 # 54.4, 24.4 # 8.2), wall(56.4 # 53.4, 56.6 # 8.2), wall(13.8 # 19.2, 67.0 # 18.8), wall(14.2 # 48.6, 23.8 # 48.6), wall(57.0 # 46.4, 67.2 # 45.8), wall(56.4 # 31.8, 67.2 # 31.6), wall(56.8 # 23.8, 67.0 # 23.6), wall(29.0 # 49.2, 29.4 # 23.6), wall(29.4 # 23.8, 51.4 # 23.8), wall(51.4 # 23.8, 51.0 # 49.0), wall(51.0 # 49.0, 29.2 # 49.0)]).
