import streamlit as st
import requests 

st.title("CodeBase Genius")
st.subheader ("Your AI-Powered Code Assistant") 

upload_file = st.file_uploader("Upload your codebase File", type=['py', 'js', 'java', 'cpp', 'txt', 'md'])

if upload_file:
    content = upload_file.read().decode()

    st.code(content, language='python')

    if st.button("Generate Documentation"):
        with st.spinner("Analyzing code..."):

            response = requests.post(
                "http://localhost:8000/DocGenie",
                json={"code": content}
            )

            st.success("Documentation Generated!")
            st.markdown(response.json()["documentation"])