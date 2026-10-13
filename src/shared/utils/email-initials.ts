/*
 * The letter on an avatar without an icon: the first letter of the email's
 * name, one letter (v3, 2026-09-28).
 */
export const getEmailInitials = (email: string) => {
  return email.trim().charAt(0).toUpperCase() || "?";
};
