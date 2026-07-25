import {
  getTeamEventPokemon,
  getTeamEventRosterDestination,
  type TeamEventPokemon,
} from "@/modules/mainline/features/plays/hub/views/team/shared/team-event-payload";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import type { AppIconComponent } from "@/shared/components/app-icon";
import { appIcons } from "@/shared/domain/icons/app-icons";

export type TeamEventTextPart = {
  emphasized?: boolean;
  text: string;
};

export type TeamEventVisual =
  | {
      kind: "destination";
      label: "Active" | "Reserve";
    }
  | {
      kind: "pokemon";
      pokemon: TeamEventPokemon;
    };

export type TeamEventDisplay = {
  icon: AppIconComponent;
  label: string;
  text: TeamEventTextPart[];
  tone: TeamEventTone;
  visuals: TeamEventVisual[];
};

export type TeamEventTone =
  | "added"
  | "evolved"
  | "form-changed"
  | "neutral"
  | "replaced"
  | "retired";

const pokemonVisual = (pokemon: TeamEventPokemon): TeamEventVisual => ({
  kind: "pokemon",
  pokemon,
});

const unknownPokemon = (event: MainlinePlayTimelineEvent, role: string) => ({
  formName: null,
  imageUrl: null,
  key: `${event.event_id ?? "team-event"}-${role}`,
  level: null,
  name: "Unknown Pokémon",
  nickname: null,
  role,
  speciesName: null,
});

const getPokemonByRole = (
  pokemon: TeamEventPokemon[],
  role: string,
): TeamEventPokemon | null => {
  return pokemon.find((item) => item.role === role) ?? null;
};

const getSubjectPokemon = (pokemon: TeamEventPokemon[]) => {
  return getPokemonByRole(pokemon, "subject") ?? pokemon[0] ?? null;
};

const text = (
  parts: Array<[value: string, emphasized?: boolean]>,
): TeamEventTextPart[] => {
  return parts.map(([value, emphasized]) => ({
    emphasized,
    text: value,
  }));
};

const ensureSentence = (value: string): string => {
  const trimmedValue = value.trim();
  return /[.!?]$/.test(trimmedValue) ? trimmedValue : `${trimmedValue}.`;
};

const getFallbackText = (
  event: MainlinePlayTimelineEvent,
): TeamEventTextPart[] => {
  return text([
    [ensureSentence(event.title || event.event_type_name || "Team updated")],
  ]);
};

const getRosterDestinationFromCopy = (
  event: MainlinePlayTimelineEvent,
): "Active" | "Reserve" | null => {
  const eventCopy = `${event.title ?? ""} ${event.body ?? ""}`.toLowerCase();

  if (eventCopy.includes("reserve")) {
    return "Reserve";
  }

  if (eventCopy.includes("active")) {
    return "Active";
  }

  return null;
};

export const getTeamEventDisplay = (
  event: MainlinePlayTimelineEvent,
): TeamEventDisplay => {
  const pokemon = getTeamEventPokemon(event);
  const subject = getSubjectPokemon(pokemon);
  const eventType = event.event_type_slug;

  if (eventType === "pokemon_evolved") {
    const from =
      getPokemonByRole(pokemon, "from") ?? unknownPokemon(event, "from");
    const to = getPokemonByRole(pokemon, "to") ?? unknownPokemon(event, "to");

    return {
      icon: appIcons.product.evolved,
      label: "Evolved",
      text: text([
        [to.name, true],
        [" evolved from "],
        [from.name, true],
        ["."],
      ]),
      tone: "evolved",
      visuals: [pokemonVisual(from), pokemonVisual(to)],
    };
  }

  if (eventType === "pokemon_form_changed") {
    const from =
      getPokemonByRole(pokemon, "from") ?? unknownPokemon(event, "from");
    const to = getPokemonByRole(pokemon, "to") ?? unknownPokemon(event, "to");

    return {
      icon: appIcons.product.formChanged,
      label: "Form changed",
      text: text([
        [to.name, true],
        [" changed form from "],
        [from.name, true],
        ["."],
      ]),
      tone: "form-changed",
      visuals: [pokemonVisual(from), pokemonVisual(to)],
    };
  }

  if (eventType === "pokemon_replaced") {
    const replaced =
      getPokemonByRole(pokemon, "replaced") ??
      unknownPokemon(event, "replaced");
    const replacement =
      getPokemonByRole(pokemon, "replacement") ??
      unknownPokemon(event, "replacement");

    return {
      icon: appIcons.product.replaced,
      label: "Replaced",
      text: text([
        [replacement.name, true],
        [" replaced "],
        [replaced.name, true],
        ["."],
      ]),
      tone: "replaced",
      visuals: [pokemonVisual(replaced), pokemonVisual(replacement)],
    };
  }

  if (eventType === "pokemon_moved") {
    const member = subject ?? unknownPokemon(event, "subject");
    const destination =
      getTeamEventRosterDestination(event) ??
      getRosterDestinationFromCopy(event);

    return {
      icon: appIcons.actions.move,
      label: "Moved",
      text: destination
        ? text([
            [member.name, true],
            [" moved to "],
            [destination, true],
            ["."],
          ])
        : getFallbackText(event),
      tone: "neutral",
      visuals: [
        pokemonVisual(member),
        ...(destination
          ? ([{ kind: "destination", label: destination }] as const)
          : []),
      ],
    };
  }

  const member = subject ?? unknownPokemon(event, "subject");
  const commonDisplay = {
    visuals: [pokemonVisual(member)],
  };

  switch (eventType) {
    case "pokemon_added":
      return {
        ...commonDisplay,
        icon: appIcons.product.teamAdded,
        label: "Added",
        text: text([[member.name, true], [" was added to the team."]]),
        tone: "added",
      };
    case "pokemon_updated":
      return {
        ...commonDisplay,
        icon: appIcons.actions.edit,
        label: "Updated",
        text: text([[member.name, true], [" was updated."]]),
        tone: "neutral",
      };
    case "pokemon_retired":
      return {
        ...commonDisplay,
        icon: appIcons.product.retired,
        label: "Retired",
        text: text([[member.name, true], [" retired from the team."]]),
        tone: "retired",
      };
    case "pokemon_removed":
      return {
        ...commonDisplay,
        icon: appIcons.actions.clear,
        label: "Removed",
        text: text([[member.name, true], [" was removed from the team."]]),
        tone: "retired",
      };
    case "pokemon_returned":
      return {
        ...commonDisplay,
        icon: appIcons.actions.retry,
        label: "Returned",
        text: text([[member.name, true], [" returned to the team."]]),
        tone: "added",
      };
    default:
      return {
        ...commonDisplay,
        icon: appIcons.product.team,
        label: event.event_type_name ?? "Team event",
        text: getFallbackText(event),
        tone: "neutral",
      };
  }
};
