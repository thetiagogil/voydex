import { uuidSchema } from "@/shared/utils/input-schemas";

/* The Play an action changes, as every Play action names it. */
export const playIdSchema = uuidSchema("A valid Play is required.");
