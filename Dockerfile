# 1. Start med et offisielt "base image". 
# 'slim' versjonen er mindre og sikrere (inneholder færre unødvendige verktøy).
FROM python:3.11-slim

# 2. Sett arbeidskatalogen inne i containeren. 
# Alt vi gjør videre skjer herfra.
WORKDIR /app

# 3. Kopier scriptet ditt fra din PC til containerens arbeidsmappe.
COPY test_file.py .

# 4. Sett en miljøvariabel (dette er IAM-hjernen din sin favoritt).
# Denne kan overstyres senere i Kubernetes.
ENV ENV_NAME="Lokalt Docker-oppsett"

# 5. Kommandoen som kjøres når containeren starter.
CMD ["python", "-u", "test_file.py"]
