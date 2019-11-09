set term png
set output "number_of_fishing_sessions.png"
set title "Number of Fishing Sessions - By Month"
set style data histogram
set style fill solid border -1
# Set y axis
set ylabel "Number of Fishing Sessions [-]"
set yrange [0:]
set grid y
# Set x axis
set xlabel "Month"
set timefmt "%Y-%m"
set xdata time
set format x "%Y-%m"
set xrange ["2018-01-01":]
set grid x
set xtic rotate by 90 scale 0 offset 0.5,0
# Plot the graph
plot 'data/number_of_fishing_sessions.data' using 2:xticlabels(1) title ""
# set output back to default
set output
# reset terminal type
set terminal pop
