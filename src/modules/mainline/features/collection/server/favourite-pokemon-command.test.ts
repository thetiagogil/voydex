import { describe, expect, it } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { setFavouritePokemon } from "./favourite-pokemon-command";

type Call = { args: unknown[]; method: string };

/* Records each step on the favourites table and answers with `error`. */
const createFakeClient = (error: { code?: string } | null = null) => {
  const calls: Call[] = [];
  const schemas: string[] = [];
  const tables: string[] = [];
  const result = Promise.resolve({ error });
  const chain = {
    delete: (...args: unknown[]) => {
      calls.push({ args, method: "delete" });
      return chain;
    },
    eq: (...args: unknown[]) => {
      calls.push({ args, method: "eq" });
      return chain;
    },
    then: result.then.bind(result),
    upsert: (...args: unknown[]) => {
      calls.push({ args, method: "upsert" });
      return result;
    },
  };

  return {
    calls,
    client: {
      schema: (schema: string) => {
        schemas.push(schema);
        return {
          from: (table: string) => {
            tables.push(table);
            return chain;
          },
        };
      },
    } as unknown as ServerSupabaseClient,
    schemas,
    tables,
  };
};

const userId = "00000000-0000-4000-8000-000000000001";

describe("setFavouritePokemon", () => {
  it("hearts a form as one row, ignoring one that is already there", async () => {
    const { calls, client, schemas, tables } = createFakeClient();

    await setFavouritePokemon(client, {
      favourite: true,
      formId: 2501,
      speciesId: 25,
      userId,
    });

    expect(schemas).toEqual(["gameplay"]);
    expect(tables).toEqual(["user_favourite_pokemon"]);
    expect(calls).toEqual([
      {
        args: [
          { form_id: 2501, species_id: 25, user_id: userId },
          { ignoreDuplicates: true, onConflict: "user_id,form_id" },
        ],
        method: "upsert",
      },
    ]);
  });

  it("takes the heart off only the trainer's own row for that form", async () => {
    const { calls, client } = createFakeClient();

    await setFavouritePokemon(client, {
      favourite: false,
      formId: 2501,
      speciesId: 25,
      userId,
    });

    expect(calls).toEqual([
      { args: [], method: "delete" },
      { args: ["user_id", userId], method: "eq" },
      { args: ["form_id", 2501], method: "eq" },
    ]);
  });

  it("names a form the reference doesn't have", async () => {
    const { client } = createFakeClient({ code: "23503" });

    await expect(
      setFavouritePokemon(client, {
        favourite: true,
        formId: 2501,
        speciesId: 59,
        userId,
      }),
    ).rejects.toThrow("That Pokémon isn't in Voydex.");
  });

  it("falls back to a plain message for anything else", async () => {
    const { client } = createFakeClient({ code: "42501" });

    await expect(
      setFavouritePokemon(client, {
        favourite: false,
        formId: 2501,
        speciesId: 25,
        userId,
      }),
    ).rejects.toThrow("Unable to save your favourite right now.");
  });
});
