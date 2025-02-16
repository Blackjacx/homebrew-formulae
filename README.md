[![Twitter Follow](https://img.shields.io/badge/Follow-%40Blackjacx-1DA1F2?logo=twitter)](https://twitter.com/intent/follow?original_referer=https%3A%2F%2Fgithub.com%2Fblackjacx&screen_name=Blackjacxxx)
[![Donate PayPal](https://img.shields.io/badge/Donate-PayPal-0079c1?logo=paypal)](https://www.paypal.me/STHEROLD)

# Homebrew Formulae

- [ASC • Apple App Store Connect CLI](https://github.com/Blackjacx/Assist)

# Troubleshooting

## `Error: key not found: "clone_url"`

When running into the issue then a tab with the specified tag has been created locally and running the command again will result in 

```
Error: You need to bump this formula manually since the new version
and old version are both 0.5.2.
```

In this case you just run `brew update-reset && brew update` which shiuld remove the local tap and lets you run `brew bump-formula-pr` again.

## Manual bump

1. Update `tag` and `revision` in https://github.com/Blackjacx/homebrew-formulae/blob/main/Formula/asc.rb.
2. Create a PR with the title `Bump asc to version 0.5.2` and merge it.
