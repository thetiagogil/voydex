---
name: voydex-git-rules
description: Voydex's additions to Tiago's git-rules skill. Use together with it whenever committing, pushing, or opening, updating or merging a pull request in the Voydex repository.
---

# Voydex git rules

Apply `git-rules` first; the rules here win where they differ. The
formats for commits, pull requests, releases and labels are in
[Workflow](../../../docs/app/workflow.md).

- **Commit as you go.** No confirmation before each commit. Show a summary of
  the commits when asking to push.
- **Push once per finished batch**, after its checks pass (`npm run verify`),
  not after every fix. Every push to a branch with an open pull request runs
  the GitHub checks, and each failed run notifies Tiago.
- **GitHub goes through Tiago's Mac.** Pushes, pull requests, issues, labels
  and releases are made from the Remote Control session on his Mac (his own
  git and `gh` login) or by Tiago himself. Cloud sessions may commit locally
  but never push or write to GitHub; they hand their changes to the Mac
  session as a patch.
- **Every change goes through a branch and a pull request.** Only a tiny
  one-off change Tiago names goes straight to `main`.
- **Clean up after a merge without asking.** Once a pull request is merged,
  delete its branch locally and on GitHub, switch to `main` and pull. Never
  delete a branch that isn't merged.
