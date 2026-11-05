/*
 * A trainer's initials for their portrait's stand-in: the first letter of
 * each of the first two capitalised words, so a pair reads as both of them
 * ("Jessie & James" is "JJ", "Lt. Surge" is "LS", "Katy" is "K").
 */
export const getTrainerInitials = (name: string): string =>
  name
    .split(/[\s&/,.]+/)
    .filter((word) => /^\p{Lu}/u.test(word))
    .slice(0, 2)
    .map((word) => word.charAt(0))
    .join("") || name.trim().charAt(0).toUpperCase();
