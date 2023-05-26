# app-template

Run nearly HF space on Paperspace using Github actions.

Step 1: Make a new directory with the name of the app, and copy all the files in this directory to it.

Step 2:

Don't go into the new directory yet. In the same containing directory of your new folder, run the following

```
apt-get update && apt-get install git-lfs
git-lfs clone <huggingface space url>
```

Step 3:

Move all the space's files into the new folder's app subdirectory

```

mv <HF space directory name>/* <your github repo name>/app/
```

Step 4:

create the repo and push it up

```
gh repo create $space_name --source=. --public

git remote add origin github.com:$docker_username/$space_name.git
git init
git add .
git commit -m 'init commit'
git push --set-upstream origin main
```

Step 5: Use the actions to get your links
After however long it takes to build your container, it will let you know and give you the deployment link.
