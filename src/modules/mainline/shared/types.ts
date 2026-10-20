/*
 * A rule or tag by name, as pickers and Library cards list it. A picker's
 * chip can add a few words after the name (`detail`, such as Monotype's
 * type) and open the choice's options (`hasOptions`).
 */
export type LibraryChoice = {
  description?: string | null;
  detail?: string | null;
  hasOptions?: boolean;
  id: string;
  name: string;
};
