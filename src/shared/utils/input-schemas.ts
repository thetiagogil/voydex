import { z } from "zod";

import { isUuid } from "@/shared/utils/identifiers";

/*
 * Server Action inputs are parsed with Zod before any database call. Each
 * schema carries the message its form shows, and `parseInput` throws the
 * first one, so an action's existing try/catch turns it into its usual error
 * result.
 */

export const uuidSchema = (message: string) =>
  z.string({ error: message }).refine(isUuid, { error: message });

export const positiveIntegerSchema = (message: string) =>
  z
    .number({ error: message })
    .int({ error: message })
    .positive({ error: message });

/* A kebab-case slug such as a game's or a version group's, at most 64 characters. */
export const slugSchema = (message: string) =>
  z
    .string({ error: message })
    .max(64, { error: message })
    .regex(/^[a-z0-9]+(?:-[a-z0-9]+)*$/, { error: message });

/* "<label> must be a positive integer.", the actions' long-standing wording. */
export const positiveIdSchema = (label: string) =>
  positiveIntegerSchema(`${label} must be a positive integer.`);

/* Text from a form field, trimmed; anything that isn't text reads as empty. */
export const formTextSchema = z
  .unknown()
  .transform((value) => (typeof value === "string" ? value.trim() : ""));

export const parseInput = <Schema extends z.ZodType>(
  schema: Schema,
  input: unknown,
  createError: (message: string) => Error = (message) => new Error(message),
): z.output<Schema> => {
  const result = schema.safeParse(input);

  if (!result.success) {
    throw createError(result.error.issues[0]?.message ?? "That isn't valid.");
  }

  return result.data;
};

/* Like `parseInput`, but returns the message instead of throwing. */
export const safeParseInput = <Schema extends z.ZodType>(
  schema: Schema,
  input: unknown,
): { data: z.output<Schema>; ok: true } | { message: string; ok: false } => {
  const result = schema.safeParse(input);

  return result.success
    ? { data: result.data, ok: true }
    : {
        message: result.error.issues[0]?.message ?? "That isn't valid.",
        ok: false,
      };
};
