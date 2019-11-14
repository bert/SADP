set term png
set output "number_of_fish_total_by_species.png"
set title "Number of Fish Total - by Species"
set style data histogram
set style fill solid border -1
# Set y axis
set ylabel "Number of Fish [-]"
set yrange [0:]
set grid y
# Set x axis
set xlabel "Species"
set grid x
set xtic rotate by 90 scale 0 offset 0.5,0
# Plot the graph
plot 'data/number_of_fish_total_by_species.data' using 2:xticlabels(1) title ""
# set output back to default
set output
# reset terminal type
set terminal pop
