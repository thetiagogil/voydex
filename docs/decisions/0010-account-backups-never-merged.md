# ADR 0010: Account Backups, Never Merged

- Status: Accepted
- Date: 2026-11-22
- Amends: [ADR 0008](./0008-user-data-on-the-device.md)

## Context

[ADR 0008](./0008-user-data-on-the-device.md) gave accounts sync by event
merge: every change left a record per column, two devices combined their
records, and you were asked about clashes. Logging in on a device that had
Plays of its own asked first whether to keep them separate or add them to
the account. It worked, but it was hard to explain and hard to keep right:
a question before the app, a clash dialog, an "add them later" path, and
bookkeeping for data added to one account and then another. The owner
wants the flow simple enough to draw on one page.

## Decision

- **Two worlds on a device**: the device's own Plays, made without an
  account, and the account's Plays. They never mix by themselves.
- **Logging in asks nothing.** A copy of the device's own data is set aside
  and the account's newest backup comes in, behind the one loading screen.
- **Backups go one way.** While you're logged in, the device backs up to the
  account a few seconds after each change, and Settings has Back up now.
  The account keeps the last 3. Nothing is merged: whatever goes up is the
  device's data as it is.
- **Another device's newer backup** comes down by itself only when this
  device has nothing new since its own last backup. When both changed, you
  choose: keep this device's (it goes up as the newest) or use the other's.
- **Logging out** backs up one last time, then the account's data leaves the
  device and its own comes back. If that backup can't go up, you choose:
  stay logged in, or log out anyway and lose what changed since.
- **Data moves between the two worlds only when you move it**, in Settings ›
  Your data: Export saves everything as one file; Import either replaces
  everything or adds the file's Plays and Plans as copies (never merged: a
  Play imported twice is there twice). Restore from account puts one of the
  last 3 account backups back.

## Consequences

- The merge, the clash dialog, the log in question and "add them to my
  account" are gone, with their code and tests.
- Change records stay: they tell whether a device has anything new since
  its last backup, and ID changes still move them with the rows.
- Two devices used at the same time, both offline, can't be combined: you
  keep one side, and the other stays among the account's last 3 backups
  for a while (Restore from account), or in an exported file.
- A logged-out device holds none of the account's data, so a shared
  computer doesn't keep yours.
