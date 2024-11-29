#!/bin/bash

. /opt/netdata/usr/libexec/netdata/plugins.d/chart.d.plugin # path to the chart.d.plugin

# Name of the chart
CHART_NAME="my_custom.chart"
CHART_TITLE="My Custom Chart"
CHART_UNITS="items"
CHART_FAMILY="custom"

collect() {
    local value1=$(random_number)
    local value2=$(random_number)

    echo "${CHART_NAME} value1:${value1} value2:${value2}"
    return 0
}

random_number() {
    echo $((RANDOM % 100))
}

update_every=2