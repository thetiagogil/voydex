import type { PublicTypeSlug } from "@/config/public-art";

/* A Pokémon a trainer can pick as their icon. */
export type ProfileIconChoice = {
  formId: number;
  name: string;
  /* Its type, which tints the disc behind its icon. */
  typeSlug: PublicTypeSlug;
  /* Null when the assets site isn't configured. */
  url: string | null;
};

/* The Pokémon a trainer picked, as the trainer card draws it. */
export type TrainerIcon = {
  name: string;
  typeSlug: PublicTypeSlug;
  /* Null when its picture can't be shown. */
  url: string | null;
};
