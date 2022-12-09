# Exercise 3 - Writing a Dockerfile

In this exercise you write a Dockerfile for a web application

1. (Python users) In this exercise you write a Dockerfile a Streamlit application. All required files are stored in the folder streamlit. (App copied from https://docs.streamlit.io/library/get-started/create-an-app) 
   - Write a Dockerfile for this app
     - Streamlit is a Python framework -- start from a Docker image with Python installed
     - Copy the files in the `streamlit` folder to your app
     - Install the required packages for your app using pip
   - Build your Dockerfile and test your container
   - Check that the order of the layers in your Dockerfile is optimized for rebuilding your app when its code changes

2. (R users) In the previous exercise, you ran an RShiny application by mounting your local directory. In this exercise you will create a new Docker image based on `rocker/rshiny:4.2` which already includes your applications (so you don't have to mount them when running the container).
   - Write a Dockerfile for this container. The required files are stored in the `shiny/` directory
   - Copy the local files into the appropriate directory
   - Install the required package `ggplot2`
     - Hint: use `RUN install2.r <options> <packages>`
     Documentation: https://github.com/eddelbuettel/littler/blob/master/inst/examples/install2.r
     The regular R function `install.packages` doesn't throw an error when package installation fails, as a result Docker would have executed the next step of the script even if package installation failed.
   - Build and run your container
   - Is the result different as in exercise 2? Why? 