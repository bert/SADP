set term png
set output "number_of_fish_kept_and_returned.png"
set title "Number of Fish Kept & Returned - By Month"
set style data histogram cluster gap 1
set style fill solid border -1
# Set y axis
set ylabel "Number of Fish [-]"
set yrange [0:]
set grid y
# Set x axis
set xlabel "Month"
set timefmt "%Y-%m"
set xdata time
set format x "%Y-%m"
set xrange ["2018-01":]
set grid x
set xtic rotate by 90 scale 0 offset 0.5,0
# Plot the graph
plot 'data/number_of_fish_kept_and_returned.data' using 2:xticlabels(1) title "", '' using 3:xticlabels(1) title ""
# set output back to default
set output
# reset terminal type
set terminal pop
