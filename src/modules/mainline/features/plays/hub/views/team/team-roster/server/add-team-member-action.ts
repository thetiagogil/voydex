"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import {
  type MainlineTeamGender,
  type AddMainlinePlayPokemonInput,
} from "../utils/team-member-validation";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { addMainlinePlayPokemon } from "./add-team-member-command";
import { createMainlineTeamRepository } from "./team-repository";

const getRequiredFormInteger = (formData: FormData, key: string) => {
  const value = formData.get(key);
  const numberValue = typeof value === "string" ? Number(value) : Number.NaN;

  if (!Number.isInteger(numberValue)) {
    throw new Error(`${key} is required.`);
  }

  return numberValue;
};

const getOptionalFormInteger = (formData: FormData, key: string) => {
  const value = formData.get(key);

  if (value === null || value === "") {
    return null;
  }

  const numberValue = typeof value === "string" ? Number(value) : Number.NaN;

  if (!Number.isInteger(numberValue)) {
    throw new Error(`${key} must be an integer.`);
  }

  return numberValue;
};

const getOptionalFormText = (formData: FormData, key: string) => {
  const value = formData.get(key);

  return typeof value === "string" ? value : null;
};

const getFormGender = (formData: FormData): MainlineTeamGender => {
  const value = formData.get("gender");
  const gender = typeof value === "string" ? value : "unknown";

  if (
    gender !== "female" &&
    gender !== "genderless" &&
    gender !== "male" &&
    gender !== "unknown"
  ) {
    throw new Error("gender is invalid.");
  }

  return gender;
};

const parseAddTeamMemberForm = (
  formData: FormData,
): AddMainlinePlayPokemonInput => {
  const playId = formData.get("playId");

  if (typeof playId !== "string") {
    throw new Error("playId is required.");
  }

  return {
    eventBody: getOptionalFormText(formData, "eventBody"),
    eventTitle: getOptionalFormText(formData, "eventTitle"),
    formId: getRequiredFormInteger(formData, "formId"),
    gender: getFormGender(formData),
    isShiny: formData.get("isShiny") === "true",
    level: getOptionalFormInteger(formData, "level"),
    nickname: getOptionalFormText(formData, "nickname"),
    playId,
    rosterStateId: getRequiredFormInteger(formData, "rosterStateId"),
    slot: getRequiredFormInteger(formData, "slot"),
    speciesId: getRequiredFormInteger(formData, "speciesId"),
  };
};

export const addMainlinePlayPokemonAction = async (formData: FormData) => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);

  if (!claimsResult?.data?.claims?.sub) {
    throw new Error("You must be signed in to edit a play team.");
  }

  const input = parseAddTeamMemberForm(formData);
  const result = await addMainlinePlayPokemon({
    input,
    repository: createMainlineTeamRepository(supabase),
  });

  revalidatePath(appRoutes.mainlinePlay(input.playId));
  revalidatePath(appRoutes.mainlinePlayTeam(input.playId));
  revalidatePath(appRoutes.mainlinePlayTeamPlan(input.playId));

  return result;
};
