from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return (
        "Hello, World from Me!<br>"
        "How are you? Hope you are doing great!<br>"
        "Have a wonderful day ahead!"
    )

if __name__ == "__main__":
    app.run(debug=True)
