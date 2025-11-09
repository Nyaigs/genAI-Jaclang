walker RepoMapper {
    has repo_path:str;
    has file_list: list=[];

    can map_repository with entry {
        # Logic
        print("Mapping repository Structure ..."); 
    }
}