import type { DevTestAccount } from "@/features/auth/dev-test-account";
import { isLocalDevelopment } from "@/platform/env/local-development";

/* Every local fixture account shares it (database/seeds/90_development). */
const fixturePassword = "123456";

/*
 * The accounts the local development seed creates, as Log in's picker lists
 * them. Keep it in step with `database/seeds/90_development/README.md` when
 * an account is added there.
 */
const devTestAccounts: DevTestAccount[] = [
  {
    description:
      "Everything filled in: 44 Plays across every game, all regions (Region Hopper), teams, History and Plans.",
    email: "fixture@voydex.test",
    label: "Full fixture",
    password: fixturePassword,
  },
  {
    description:
      "Three Water-heavy Plays: Statistics reads Water Specialist with its podium.",
    email: "specialist@voydex.test",
    label: "Water Specialist",
    password: fixturePassword,
  },
  {
    description:
      "Two Kanto Plays with mixed types: Statistics reads Pokémon Trainer, two regions short of Region Hopper.",
    email: "trainer@voydex.test",
    label: "Pokémon Trainer",
    password: fixturePassword,
  },
];

/* The picker's accounts, or null outside local development. */
export const readDevTestAccounts = (): DevTestAccount[] | null =>
  isLocalDevelopment() ? devTestAccounts : null;
