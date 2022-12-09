# 1. Streamlit app

# See Dockerfile.streamlit

docker build -f Dockerfile.streamlit -t streamlitapp .

docker run -p 8501:8501 streamlitapp

# 2. Shiny server

docker build -f Dockerfile.shiny -t shinyserver .

docker run --rm -p 3838:3838 shinyserver