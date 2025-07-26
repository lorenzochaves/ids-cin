FROM python:3.7

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip
RUN pip install scikit-learn==1.0.2 pandas matplotlib seaborn pyarrow tensorflow jupyter

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser"]

# docker build -t ids-notebook .
# docker run -p 8888:8888 ids-notebook
# Access the notebook at http://localhost:8888
# Use the token provided in the terminal to log in