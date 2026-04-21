# Deploying to Production Without Testing

It works on your machine, so you push it to the live server, and the live server has different environment variables, different database state, and different traffic patterns. Features that "worked" in development break under real conditions. The fix: a staging environment that mirrors production, an automated test suite that runs before every deploy, and a deploy that's reversible (you can roll back in one command). Small projects don't need elaborate infrastructure, but every project needs *a way* to deploy safely and *a way* to undo a deploy.
