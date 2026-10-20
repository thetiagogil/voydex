import { z } from "zod";

import {
  positiveIntegerSchema,
  uuidSchema,
} from "@/shared/utils/input-schemas";

/*
 * One rule a Play keeps, as New Play and Play settings send it: the rule's
 * id and, for a rule with options, this Play's values (Monotype's type, the
 * shiny exception). The database checks the values against the rule and the
 * Play's game.
 */
export const playRuleSelectionSchema = z.object(
  {
    config: z
      .strictObject(
        {
          shinies_always_catchable: z
            .boolean({ error: "That rule's options aren't ones Voydex knows." })
            .optional(),
          type_id: positiveIntegerSchema("Pick a type from the list.")
            .nullable()
            .optional(),
        },
        { error: "That rule's options aren't ones Voydex knows." },
      )
      .nullable(),
    ruleId: uuidSchema("Pick rules from the list."),
  },
  { error: "Pick rules from the list." },
);
