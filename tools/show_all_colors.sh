#!/usr/bin/env bash
color(){
    local i=0
    for ((;i<2;i++)); do
        for c; do
            if [ "$i" -eq 0 ]; then
                printf '\e[48;5;%dm%03d ' $c $c
            else
                printf '\e[48;5;%dm    ' $c
            fi
        done
        printf '\e[0m \n'
    done
}

IFS=$' \t\n'
color {0..15}
for ((i=0;i<6;i++)); do
    index=""
    for ((j=0;j<6;j++)); do
        if ! ((j % 2)); then
            index+=" $(seq $((i*36+16+j)) 6 $((i*36+51+j)))"
        else
            index+=" $(seq $((i*36+46+j)) -6 $((i*36+11+j)))"
        fi
    done
    color $index
done
for ((j=0;j<6;j++)); do
    index=""
    for ((i=0;i<6;i++)); do
        if ! ((i % 2)); then
            index+=" $(seq $((i*36+16+j)) 6 $((i*36+51+j)))"
        else
            index+=" $(seq $((i*36+46+j)) -6 $((i*36+11+j)))"
        fi
    done
    color $index
done
for ((i=0;i<6;i++)); do
    index=""
    for ((j=0;j<6;j++)); do
        if ! ((j % 2)); then
            index+=" $(seq $((i*36+16+j*6)) $((i*36+21+j*6)))"
        else
            index+=" $(seq $((i*36+21+j*6)) -1 $((i*36+16+j*6)))"
        fi
    done
    color $index
done

color {232..255}
