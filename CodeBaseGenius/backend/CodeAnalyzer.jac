walker CodeAnalyzer {
    has file_path: Str;
    has analysis_results: dict={};

    can analyze_code with entry {
        print("Analyzing code Structure... ");

    }
}