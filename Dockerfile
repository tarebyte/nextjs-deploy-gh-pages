FROM node:14.9.0:alpine

LABEL "com.github.actions.name"="Build & Deploy to GitHub Pages"
LABEL "com.github.actions.description"="Builds & deploys Next.js apps to gh-pages branch of the same repository."
LABEL "com.github.actions.icon"="globe"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/tarebyte/nextjs-deploy-gh-pages"

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
