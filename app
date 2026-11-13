import ollama
print("Grammar Correction Assistant")
user_text = input("Enter sentence or paragraph: ")
prompt = "Correct grammar and spelling while preserving meaning:\n" + user_text
response = ollama.chat(
    model="llama3.2",
    messages=[{"role": "user", "content": prompt}]
)
result = response["message"]["content"]
print("\nRESULT:\n")
print(result)
with open("corrected_text.txt", "w", encoding="utf-8") as file:
    file.write(result)
print("\nSaved successfully in corrected_text.txt")
