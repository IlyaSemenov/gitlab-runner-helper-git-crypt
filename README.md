# Gitlab runner helper image with git-crypt

Gitlab runner will fail with `git-crypt`: https://gitlab.com/gitlab-org/gitlab-runner/issues/2068

To fix that, update `/etc/gitlab-runner/config.toml` as follows:

```toml
[[runners]]
  [runners.docker]
    helper_image = "ilyasemenov/gitlab-runner-helper-git-crypt:latest"
```
