# Contributing to DaVinci

## How to accept a pull request and update the version.

1. Pull the latest code into your local repository.

   ```
   git pull origin master
   ```

2. Verify that the project builds, passes all tests, and update the build artifacts.

   ```
   ./m dist -u
   ```

3. Update the version number in bower.json

4. Verify again that the project builds, passes all tests, and update the build artifacts.

   ```
   ./m dist -u
   ```

4. Add the changed files.

   ```
   git add --all
   ```

5. Commit the change.

   ```
   git commit -m 'Changes for ...'
   ```

6. Tag the commit.

   ```
   git tag -a x.y.z -m 'davinci version x.y.z'
   ```

6. Push the changes, along with the tag.

   ```
   git push origin master --tags
   ```