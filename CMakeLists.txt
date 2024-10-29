cmake_minimum_required(VERSION 3.30)
project(plasmoid-catbar)

find_package(Plasma REQUIRED)

plasma_install_package(package com.github.tiaranivani.catbar)
