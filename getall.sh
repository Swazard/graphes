for i in $(cat liste-id.txt)
do
    curl -L --output artifact_$i.zip \
        -H "Accept: application/vnd.github+json" \
        -H "Authorization: Bearer $(cat ~/token.gh)" \
        -H "X-GitHub-Api-Version: 2022-11-28" \
        https://api.github.com/repos/Swazard/graphes/actions/artifacts/$i/zip
done