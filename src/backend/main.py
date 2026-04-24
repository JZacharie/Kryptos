from flask import Flask, request, jsonify
from flask_cors import CORS
import subprocess
import os

app = Flask(__name__)
CORS(app)

CERT_PATH = "/app/certs/sealed-secrets.crt"

@app.route('/api/seal', methods=['POST'])
def seal_secret():
    data = request.json
    secret_name = data.get('name')
    namespace = data.get('namespace')
    raw_value = data.get('value')
    
    if not all([secret_name, namespace, raw_value]):
        return jsonify({"error": "Missing parameters"}), 400
    
    # Simuler la création d'un secret K8s puis le sceller
    # En prod, on utiliserait kubeseal --cert {CERT_PATH}
    try:
        # Commande kubeseal (simplifiée pour l'exemple)
        # echo -n "secret" | kubeseal --raw --from-file=/dev/stdin --cert {CERT_PATH} --scope cluster-wide
        process = subprocess.Popen(
            ["kubeseal", "--raw", "--scope", "cluster-wide", "--cert", CERT_PATH],
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True
        )
        stdout, stderr = process.communicate(input=raw_value)
        
        if process.returncode != 0:
            return jsonify({"error": stderr}), 500
            
        return jsonify({
            "status": "success",
            "sealedValue": stdout.strip(),
            "file": f"sealed-{secret_name}.yaml"
        })
    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    # Le backend tourne sur le port 5000 par défaut
    app.run(host='0.0.0.0', port=5000)
