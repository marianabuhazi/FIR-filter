onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Clock & Reset}
add wave -noupdate -radix binary /tb_multiply/clk
add wave -noupdate -radix binary /tb_multiply/rstn
add wave -noupdate -radix binary /tb_multiply/s
add wave -noupdate -divider Load
add wave -noupdate -radix binary /tb_multiply/lm
add wave -noupdate -radix binary /tb_multiply/lq
add wave -noupdate -divider Data
add wave -noupdate -radix binary /tb_multiply/datam
add wave -noupdate -radix binary /tb_multiply/dataq
add wave -noupdate -divider Output
add wave -noupdate -radix binary /tb_multiply/p
add wave -noupdate -radix binary /tb_multiply/done
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {194595 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {512 ns}
