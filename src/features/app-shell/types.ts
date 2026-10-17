/* Who is signed in, as the bars, the account menu and the trainer card show it. */
export type SignedInAccount = {
  /* The name you chose on Welcome or in Settings; null until you choose one. */
  displayName: string | null;
  /* Null when the claims carry no email. */
  email: string | null;
  /* "November 2024"; null when the profile couldn't be read. */
  trainerSince: string | null;
};
