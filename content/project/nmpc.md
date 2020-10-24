---
# Date this page was created.
date = "2016-04-27"

# Project title.
title = "Model based automatic code generation for nonlinear model predictive control"

# Project summary to display on homepage.
summary = "Symbolic computation methods are employed to generate optimized C code for nonlinear model predictive controllers."

# Optional image to display on homepage (relative to `static/img/` folder).
image_preview = ""

# Tags: can be used for filtering projects.
tags = ["computer algebra system", "Maple", "nonlinear model predictive control", "code generation"]

# Optional external URL for project (replaces project detail page).
external_link = ""

# Does the project detail page use math formatting?
math = false

# Optional featured image (relative to `static/img/` folder).
[header]
image = ""
caption = ""
---

## Introduction

[NMPC Toolkit](https://github.com/SymbolicNMPC/NMPC-Toolkit) implements a systematic workflow for model based automatic code generation for Nonlinear Model Predictive Control (NMPC). MapleSim, as an advanced high-level tool for physical modeling and simulation, and Maple, as an advanced symbolic analysis and synthesis tool, are natural building blocks of the proposed workflow for automatic code generation for NMPC. 

The goal is to have a workflow with the following steps:

- Modeling: A physical model of the system is built by connecting components in MapleSim. MapleSim contains more than 550 built-in components from many different domains. If that is not enough, users can create their own custom components.
- Extracting the equations: The dynamic equations of this model are then extracted into Maple. In general, automatically generated dynamic equations of a physical model are in the form of differential algebraic equations (DAE). Most NMPC algorithms assume that the equations are given in the form of ordinary differential equations (ODE). Maple with its powerful symbolic engine can be employed in the workflow to convert DAEs to ODEs. The conversion can be exact or an approximation in order to simplify the resulting ODEs.
- Control design: The NMPC algorithm for the given the ODE equations is generated using Maple. 
- Generating Code: The resulting Maple code is then converted to C code automatically using the CodeGeneration package.
- Simulating the Closed Loop System: The generated C code can be embedded in a MapleSim model as an External C Block. The closed loop system with the original DAE equations can then be simulated in MapleSim.

## Installation

### From Maple 2017 or later
- Open the MapleCloud pallette
- Select "packages"
- Find "NMPCToolkit" in the list
- Right click and select "Install Package"
- To open the workbook, right click and select "Open"

### From [maple.cloud](https://maple.cloud)
- Go to [here](https://maple.cloud/#doc=5086116991467520) on [maple.cloud](https://maple.cloud)
- Download the package
- Execute the overview worksheet in Maple 2017 or later

### From this repository
- git clone https://github.com/SymbolicNMPC/NMPC-Toolkit.git
- cd NMPC-Toolkit\src
- build
- cd ..\install
- install
