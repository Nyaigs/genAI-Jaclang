import from dotenv { load_dotenv }
import from byllm.llm { Model }


glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=True);

walker DocGenie {
    has code_content: str;
    has api_key: str;
    has documentation: str = "";

    can generate_docs with entry {
        print("Generating documentation with GenieMaster...");
    }
}
