# SSH Host Register Action

Registers a host into the SSH known hosts. Useful as a previous step to connecting through SSH and deploying artifacts.

## Inputs

| Input | Description       | Required |
|-------|-------------------|----------|
| host  | Host to register. | True     |

## Usage


```
steps:
- name: Register SSH host
  uses: bernardo-mg/ssh-host-register-action@v1
  with:
    host: ${{ secrets.HOST }
```

## Collaborate

Any kind of help with the project will be well received, and there are two main ways to give such help:

- Reporting errors and asking for extensions through the issues management
- or forking the repository and extending the project

### Issues management

Issues are managed at the GitHub [project issues tracker][issues], where any Github user may report bugs or ask for new features.

### Getting the code

If you wish to fork or modify the code, visit the [GitHub project page][scm], where the latest versions are always kept. Check the 'master' branch for the latest release, and the 'develop' for the current, and stable, development version.

## License
The project has been released under the [MIT License][license].

[issues]: https://github.com/Bernardo-MG/deployment-maven-settings-action/issues
[license]: http://www.opensource.org/licenses/mit-license.php
[scm]: http://github.com/Bernardo-MG/deployment-maven-settings-action
