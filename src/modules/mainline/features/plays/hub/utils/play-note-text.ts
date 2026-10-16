/* The longest note Voydex keeps; the database allows a longer body. */
export const playNoteMaxLength = 2000;

const titleMaxLength = 200;

export type PlayNoteText = {
  body: string | null;
  title: string;
};

/*
 * A note as one event: its first line is the title History shows
 * (clipped at a word to fit 200 characters), and the full text is kept as
 * the body only when the title doesn't already hold all of it.
 */
export const toPlayNoteText = (text: string): PlayNoteText => {
  const note = text.trim().replace(/\r\n/g, "\n");

  if (!note) {
    throw new Error("Write something to keep as a note.");
  }

  if (note.length > playNoteMaxLength) {
    throw new Error(
      `A note can be ${playNoteMaxLength.toLocaleString("en")} characters at most.`,
    );
  }

  const firstLine = note.split("\n", 1)[0].trim();
  const clipped =
    firstLine.length <= titleMaxLength
      ? firstLine
      : `${firstLine
          .slice(0, titleMaxLength - 1)
          .replace(/\s+\S*$/, "")
          .trimEnd()}…`;

  return { body: clipped === note ? null : note, title: clipped };
};
