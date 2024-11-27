#!/bin/bash

# Function to calculate CPU usage
get_cpu_usage() {
    echo "Total CPU Usage:"
    top -bn1 | grep "Cpu(s)" | while read -r line; do
        # Extract fields from top output
        user=$(echo $line | awk '{print $2}') # User CPU usage
        sys=$(echo $line | awk '{print $4}') # System CPU usage
        idle=$(echo $line | awk '{print $8}') # Idle CPU usage
        used=$(echo "$user + $sys" | bc)     # Total used percentage
        echo "Used: $used%, Idle: $idle%"
    done
    echo
}

# Function to calculate memory usage
get_memory_usage() {
    echo "Memory Usage (Free vs Used):"
    free -m | grep 'Mem:' | while read -r line; do
        total=$(echo $line | awk '{print $2}') # Total memory
        used=$(echo $line | awk '{print $3}')  # Used memory
        free=$(echo $line | awk '{print $4}')  # Free memory
        # Calculate percentages
        used_pct=$(echo "scale=2; ($used / $total) * 100" | bc)
        free_pct=$(echo "scale=2; ($free / $total) * 100" | bc)
        echo "Used: ${used}MB (${used_pct}%), Free: ${free}MB (${free_pct}%)"
    done
    echo
}

# Function to calculate disk usage
get_disk_usage() {
    echo "Disk Usage (Free vs Used):"
    df -h --total | grep 'total' | while read -r line; do
        total=$(echo $line | awk '{print $2}')   # Total disk space
        used=$(echo $line | awk '{print $3}')    # Used disk space
        free=$(echo $line | awk '{print $4}')    # Free disk space
        used_pct=$(echo $line | awk '{print $5}') # Used percentage
        # Calculate Free Percentage
        free_pct=$((100 - ${used_pct%\%}))
        echo "Used: $used ($used_pct), Free: $free (${free_pct}%)"
    done
    echo
}

# Function to list top 5 processes by CPU usage
get_top_cpu_processes() {
    echo "Top 5 Processes by CPU Usage:"
    ps -eo pid,comm,%cpu --sort=-%cpu | head -6 | while read -r line; do
        pid=$(echo $line | awk '{print $1}')    # Process ID
        cmd=$(echo $line | awk '{print $2}')    # Command
        cpu=$(echo $line | awk '{print $3}')    # CPU usage
        if [[ $pid == "PID" ]]; then
            printf "%-10s %-20s %s\n" "PID" "COMMAND" "%CPU"
        else
            printf "%-10s %-20s %s\n" "$pid" "$cmd" "$cpu"
        fi
    done
    echo
}

# Function to list top 5 processes by memory usage
get_top_memory_processes() {
    echo "Top 5 Processes by Memory Usage:"
    ps -eo pid,comm,%mem --sort=-%mem | head -6 | while read -r line; do
        pid=$(echo $line | awk '{print $1}')    # Process ID
        cmd=$(echo $line | awk '{print $2}')    # Command
        mem=$(echo $line | awk '{print $3}')    # Memory usage
        if [[ $pid == "PID" ]]; then
            printf "%-10s %-20s %s\n" "PID" "COMMAND" "%MEM"
        else
            printf "%-10s %-20s %s\n" "$pid" "$cmd" "$mem"
        fi
    done
    echo
}

# Main function to run all stats
main() {
    echo "----- Server Performance Stats -----"
    echo
    get_cpu_usage
    get_memory_usage
    get_disk_usage
    get_top_cpu_processes
    get_top_memory_processes
    echo "------------------------------------"
}

# Execute the main function
main