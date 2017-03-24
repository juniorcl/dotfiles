conky.config = {
    background = false,
    out_to_x = false,
    out_to_console = true,
    update_interval = 1,
    total_run_times = 0,
    use_spacer = "none"
}

conky.text = [[ 
         ${execpi 3600 checkupdates | wc -l} / ${fs_free /}$color  ${fs_free /home}   ${cpu cpu0}%  ${acpitemp}°C  ${mem} ${memperc}%   ${battery_percent BAT1}% ${battery_time} ${wireless_link_qual_perc wlp2s0}%   ${time %d.%m}   ${time %H:%M}
]]
