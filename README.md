# Dependabot Testing

This repo contains two directories: `staging` and `production`. Both
of them contain the same skeleton `main.tf` file, which includes a
single module. That module is out of date, so we expect dependabot to
PR an update for us.

We can check this behaviour using the dependabot CLI:

```
$ dependabot update terraform this-string-des-not-matter --local . --directory staging

...

updater | 2024/07/23 11:18:09 INFO Finished job processing
updater | 2024/07/23 11:18:09 INFO Results:
updater | +---------------------------------------------------+
updater | |        Changes to Dependabot Pull Requests        |
updater | +---------+-----------------------------------------+
updater | | created | pagerduty/pagerduty ( from  to 3.15.0 ) |
updater | +---------+-----------------------------------------+
  proxy | 2024/07/23 11:18:10 Skipping sending metrics because api endpoint is empty
  proxy | 2024/07/23 11:18:10 5/14 calls cached (35%)
```

and:

```
$ dependabot update terraform this-string-des-not-matter --local . --directory production

...

updater | 2024/07/23 11:21:31 INFO Finished job processing
updater | 2024/07/23 11:21:31 INFO Results:
updater | +---------------------------------------------------+
updater | |        Changes to Dependabot Pull Requests        |
updater | +---------+-----------------------------------------+
updater | | created | pagerduty/pagerduty ( from  to 3.15.0 ) |
updater | +---------+-----------------------------------------+
  proxy | 2024/07/23 11:21:32 Skipping sending metrics because api endpoint is empty
  proxy | 2024/07/23 11:21:32 5/14 calls cached (35%)
```
