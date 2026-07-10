import { existsSync, readdirSync, readFileSync, statSync } from "node:fs";
import path from "node:path";
import { createHash } from "node:crypto";
import { fileURLToPath } from "node:url";

const scriptDir = path.dirname(fileURLToPath(import.meta.url));
const projectRoot = path.resolve(scriptDir, "..", "..", "database");
const seedsRoot = path.join(projectRoot, "seeds");
const schemaRoot = path.join(projectRoot, "schema");

const errors = [];
const warnings = [];

const expectedSlugs = {
  "reference.generations": [
    "generation-1",
    "generation-2",
    "generation-3",
    "generation-4",
    "generation-5",
    "generation-6",
    "generation-7",
    "generation-8",
    "generation-9",
  ],
  "reference.regions": [
    "kanto",
    "johto",
    "hoenn",
    "sinnoh",
    "unova",
    "kalos",
    "alola",
    "galar",
    "hisui",
    "paldea",
  ],
  "reference.product_families": [
    "mainline",
    "dungeon",
    "pokopia",
    "go",
    "home",
    "ranger",
    "sleep",
  ],
  "reference.game_types": ["main", "enhanced", "remake", "sequel"],
  "reference.version_groups": [
    "rb",
    "yellow",
    "gs",
    "crystal",
    "rs",
    "frlg",
    "emerald",
    "dp",
    "platinum",
    "hgss",
    "bw",
    "b2w2",
    "xy",
    "oras",
    "sm",
    "usum",
    "lgpe",
    "swsh",
    "swsh-ioa",
    "swsh-ct",
    "bdsp",
    "pla",
    "sv",
    "sv-tm",
    "sv-id",
    "za",
    "za-md",
  ],
  "reference.games": [
    "red",
    "blue",
    "yellow",
    "gold",
    "silver",
    "crystal",
    "ruby",
    "sapphire",
    "firered",
    "leafgreen",
    "emerald",
    "diamond",
    "pearl",
    "platinum",
    "heartgold",
    "soulsilver",
    "black",
    "white",
    "black-2",
    "white-2",
    "x",
    "y",
    "omega-ruby",
    "alpha-sapphire",
    "sun",
    "moon",
    "ultra-sun",
    "ultra-moon",
    "lets-go-pikachu",
    "lets-go-eevee",
    "sword",
    "shield",
    "brilliant-diamond",
    "shining-pearl",
    "legends-arceus",
    "scarlet",
    "violet",
    "legends-za",
  ],
  "reference.platforms": [
    "game-boy",
    "game-boy-color",
    "game-boy-advance",
    "nintendo-ds",
    "nintendo-3ds",
    "nintendo-switch",
    "nintendo-switch-2",
  ],
  "reference.types": [
    "normal",
    "fire",
    "water",
    "electric",
    "grass",
    "ice",
    "fighting",
    "poison",
    "ground",
    "flying",
    "psychic",
    "bug",
    "rock",
    "ghost",
    "dragon",
    "dark",
    "steel",
    "fairy",
  ],
  "reference.natures": [
    "hardy",
    "lonely",
    "brave",
    "adamant",
    "naughty",
    "bold",
    "docile",
    "relaxed",
    "impish",
    "lax",
    "timid",
    "hasty",
    "serious",
    "jolly",
    "naive",
    "modest",
    "mild",
    "quiet",
    "bashful",
    "rash",
    "calm",
    "gentle",
    "sassy",
    "careful",
    "quirky",
  ],
  "reference.egg_groups": [
    "monster",
    "water-1",
    "water-2",
    "water-3",
    "bug",
    "flying",
    "field",
    "fairy",
    "grass",
    "human-like",
    "mineral",
    "amorphous",
    "dragon",
    "ditto",
    "undiscovered",
  ],
  "reference.item_categories": [
    "poke_ball",
    "held_item",
    "evolution_item",
    "fossil",
    "form_change_item",
    "berry",
    "mega_stone",
    "z_crystal",
    "type_enhancing_item",
    "battle_effect_item",
    "training_item",
    "experience_item",
    "breeding_item",
    "contest_item",
    "species_specific_item",
    "gem",
    "incense",
    "utility_held_item",
  ],
  "reference.move_kinds": ["regular", "z-move", "max-move", "g-max-move"],
  "reference.evolution_methods": [
    "level-up",
    "item",
    "trade",
    "friendship",
    "move-known",
    "location",
    "time-of-day",
    "gender-specific",
    "special-condition",
  ],
  "reference.availability_methods": [
    "native_encounter",
    "static_encounter",
    "starter",
    "gift",
    "in_game_trade",
    "fossil_restoration",
    "evolution",
    "breeding",
    "roaming_encounter",
    "raid_or_special",
    "event",
    "external_trade",
    "transfer_only",
  ],
  "reference.learn_methods": [
    "level_up",
    "tm",
    "hm",
    "tr",
    "egg",
    "tutor",
    "evolution",
    "starting_move",
    "reminder",
    "event",
    "transfer",
    "special",
  ],
  "tracking.mainline_snapshot_policies": ["none", "optional", "recommended"],
  "tracking.mainline_milestone_types": [
    "story",
    "gym",
    "trial",
    "grand-trial",
    "rival",
    "boss",
    "elite-four",
    "champion",
    "titan",
    "team-star",
    "noble",
    "decision",
    "hall-of-fame",
  ],
  "tracking.mainline_milestone_prerequisite_kinds": [
    "suggested",
    "required",
    "story-unlock",
  ],
  "tracking.mainline_collectible_types": [
    "zygarde-component",
    "totem-sticker",
    "alolan-diglett",
    "wisp",
    "ominous-stake",
  ],
  "gameplay.mainline_play_statuses": [
    "not_started",
    "playing",
    "paused",
    "completed",
    "abandoned",
  ],
  "gameplay.mainline_play_pokemon_roster_states": [
    "active",
    "reserve",
    "retired",
    "replaced",
  ],
  "gameplay.mainline_play_event_origins": [
    "manual",
    "recorded_action",
    "milestone_completion",
    "hall_of_fame",
    "import",
  ],
  "gameplay.mainline_play_event_types": [
    "story_milestone",
    "pokemon_added",
    "pokemon_evolved",
    "pokemon_retired",
    "pokemon_replaced",
    "pokemon_form_changed",
    "hall_of_fame",
    "journal_note",
    "status_change",
  ],
  "gameplay.mainline_challenge_rule_types": [
    "reuse",
    "team_composition",
    "encounter",
    "difficulty",
    "custom",
  ],
  "gameplay.user_game_library_statuses": [
    "want_to_play",
    "planned",
    "playing",
    "completed",
    "skipped",
  ],
  "planning.mainline_team_plan_statuses": ["draft", "active", "archived"],
  "planning.mainline_plan_member_link_statuses": [
    "pending",
    "linked",
    "reached",
    "skipped",
  ],
};

const snakeSlugTables = new Set([
  "reference.item_categories",
  "reference.availability_methods",
  "reference.learn_methods",
  "gameplay.mainline_play_statuses",
  "gameplay.mainline_play_event_origins",
  "gameplay.mainline_play_event_types",
  "gameplay.mainline_challenge_rule_types",
  "gameplay.user_game_library_statuses",
]);

const scopedSortTables = new Set([
  "reference.version_groups",
  "reference.games",
  "reference.game_content_scopes",
  "reference.content_scope_dependencies",
  "reference.game_platforms",
  "reference.pokedex",
  "reference.pokemon_learnsets",
  "reference.move_machines",
  "tracking.mainline_badges",
  "tracking.mainline_categories",
  "tracking.mainline_collectible_entries",
  "tracking.mainline_collectibles",
  "tracking.mainline_milestone_badge_refs",
  "tracking.mainline_milestone_collectible_refs",
  "tracking.mainline_milestone_decision_options",
  "tracking.mainline_milestone_opponent_refs",
  "tracking.mainline_milestone_pokemon_refs",
  "tracking.mainline_milestone_prerequisites",
  "tracking.mainline_milestones",
  "tracking.mainline_opponents",
]);

const scopedSlugTables = new Set([
  "reference.pokedex",
  "tracking.mainline_badges",
  "tracking.mainline_categories",
  "tracking.mainline_collectible_entries",
  "tracking.mainline_collectibles",
  "tracking.mainline_milestone_decision_options",
  "tracking.mainline_milestones",
  "tracking.mainline_opponents",
]);

const generatedIdTables = new Set([
  "reference.item_availability",
  "reference.move_availability",
  "reference.pokemon_availability",
  "reference.pokemon_evolution_edges",
  "reference.pokemon_learnsets",
  "tracking.mainline_milestone_badge_refs",
  "tracking.mainline_milestone_collectible_refs",
  "tracking.mainline_milestone_decision_options",
  "tracking.mainline_milestone_opponent_refs",
  "tracking.mainline_milestone_pokemon_refs",
  "tracking.mainline_milestone_prerequisites",
]);
const productDescriptionTables = new Set([
  "reference.product_families",
  "reference.availability_methods",
  "reference.evolution_methods",
  "reference.game_types",
  "reference.item_categories",
  "reference.learn_methods",
  "reference.move_kinds",
  "tracking.mainline_milestone_prerequisite_kinds",
]);

const customAuditTables = new Set([
  "reference.abilities",
  "reference.ability_attributes",
  "reference.content_scope_dependencies",
  "reference.evolution_families",
  "reference.game_content_scopes",
  "reference.game_platforms",
  "reference.item_availability",
  "reference.item_category_memberships",
  "reference.move_availability",
  "reference.items",
  "reference.move_attributes",
  "reference.move_machines",
  "reference.moves",
  "reference.pokemon_learnsets",
  "reference.pokemon_availability",
  "reference.pokemon_evolution_edges",
  "reference.pokemon_attributes",
  "reference.pokemon_form_item_requirements",
  "reference.pokemon_form_rules",
  "reference.pokemon_forms",
  "tracking.mainline_collectible_entries",
  "tracking.mainline_collectibles",
  "reference.pokemon_species",
  "reference.pokedex",
  "reference.pokedex_entries",
  "reference.type_matchups",
  "tracking.mainline_badges",
  "tracking.mainline_categories",
  "tracking.mainline_milestone_badge_refs",
  "tracking.mainline_milestone_collectible_refs",
  "tracking.mainline_milestone_decision_options",
  "tracking.mainline_milestone_opponent_refs",
  "tracking.mainline_milestone_pokemon_refs",
  "tracking.mainline_milestone_prerequisites",
  "tracking.mainline_milestones",
  "tracking.mainline_opponents",
]);

const allowedStats = new Set([
  "attack",
  "defense",
  "special_attack",
  "special_defense",
  "speed",
]);
const allowedGamePlatformReleaseKinds = new Set(["native", "enhanced"]);
const deferredNonPlaythroughAbilitySlugs = new Set([
  "piercing-drill",
  "dragonize",
  "mega-sol",
  "spicy-spray",
]);
const expectedAbilityGenerationRanges = [
  { generationId: 3, firstId: 1, lastId: 76 },
  { generationId: 4, firstId: 77, lastId: 123 },
  { generationId: 5, firstId: 124, lastId: 164 },
  { generationId: 6, firstId: 165, lastId: 191 },
  { generationId: 7, firstId: 192, lastId: 233 },
  { generationId: 8, firstId: 234, lastId: 267 },
  { generationId: 9, firstId: 268, lastId: 310 },
];

const expectedAbilityAttributeChangeKeys = new Set([
  "1:6",
  "1:11",
  "2:13",
  "5:11",
  "9:6",
  "10:8",
  "12:13",
  "12:18",
  "14:6",
  "16:11",
  "18:8",
  "20:18",
  "21:6",
  "22:6",
  "23:8",
  "24:8",
  "25:11",
  "28:6",
  "28:11",
  "31:6",
  "31:11",
  "35:23",
  "39:18",
  "40:6",
  "42:6",
  "45:13",
  "46:6",
  "49:6",
  "51:6",
  "52:6",
  "53:11",
  "55:6",
  "56:6",
  "57:11",
  "58:11",
  "60:6",
  "61:11",
  "62:8",
  "68:6",
  "70:13",
  "71:6",
  "72:6",
  "73:6",
  "81:23",
  "90:11",
  "96:15",
  "98:11",
  "113:18",
  "114:11",
  "115:23",
  "117:13",
  "117:23",
  "141:18",
  "142:13",
  "151:13",
  "155:18",
  "158:13",
  "158:15",
  "168:23",
  "171:15",
  "174:15",
  "177:15",
  "182:15",
  "184:15",
  "185:15",
  "202:23",
  "209:18",
  "210:23",
  "234:23",
  "235:23",
  "236:23",
  "262:23",
]);

const expectedPokemonGenerationRanges = [
  { generationId: 1, firstId: 1, lastId: 151 },
  { generationId: 2, firstId: 152, lastId: 251 },
  { generationId: 3, firstId: 252, lastId: 386 },
  { generationId: 4, firstId: 387, lastId: 493 },
  { generationId: 5, firstId: 494, lastId: 649 },
  { generationId: 6, firstId: 650, lastId: 721 },
  { generationId: 7, firstId: 722, lastId: 809 },
  { generationId: 8, firstId: 810, lastId: 905 },
  { generationId: 9, firstId: 906, lastId: 1025 },
];

const expectedBabyPokemonSlugs = new Set([
  "pichu",
  "cleffa",
  "igglybuff",
  "togepi",
  "tyrogue",
  "smoochum",
  "elekid",
  "magby",
  "azurill",
  "wynaut",
  "budew",
  "chingling",
  "bonsly",
  "mime-jr",
  "happiny",
  "munchlax",
  "riolu",
  "mantyke",
  "toxel",
]);

const expectedLegendaryPokemonSlugs = new Set([
  "articuno",
  "zapdos",
  "moltres",
  "mewtwo",
  "raikou",
  "entei",
  "suicune",
  "lugia",
  "ho-oh",
  "regirock",
  "regice",
  "registeel",
  "latias",
  "latios",
  "kyogre",
  "groudon",
  "rayquaza",
  "uxie",
  "mesprit",
  "azelf",
  "dialga",
  "palkia",
  "heatran",
  "regigigas",
  "giratina",
  "cresselia",
  "cobalion",
  "terrakion",
  "virizion",
  "tornadus",
  "thundurus",
  "reshiram",
  "zekrom",
  "landorus",
  "kyurem",
  "xerneas",
  "yveltal",
  "zygarde",
  "type-null",
  "silvally",
  "tapu-koko",
  "tapu-lele",
  "tapu-bulu",
  "tapu-fini",
  "cosmog",
  "cosmoem",
  "solgaleo",
  "lunala",
  "necrozma",
  "zacian",
  "zamazenta",
  "eternatus",
  "kubfu",
  "urshifu",
  "regieleki",
  "regidrago",
  "glastrier",
  "spectrier",
  "calyrex",
  "enamorus",
  "wo-chien",
  "chien-pao",
  "ting-lu",
  "chi-yu",
  "koraidon",
  "miraidon",
  "okidogi",
  "munkidori",
  "fezandipiti",
  "ogerpon",
  "terapagos",
]);

const expectedMythicalPokemonSlugs = new Set([
  "mew",
  "celebi",
  "jirachi",
  "deoxys",
  "phione",
  "manaphy",
  "darkrai",
  "shaymin",
  "arceus",
  "victini",
  "keldeo",
  "meloetta",
  "genesect",
  "diancie",
  "hoopa",
  "volcanion",
  "magearna",
  "marshadow",
  "zeraora",
  "meltan",
  "melmetal",
  "zarude",
  "pecharunt",
]);

const expectedFormChangeItemSlugs = [
  "griseous-orb",
  "flame-plate",
  "splash-plate",
  "zap-plate",
  "meadow-plate",
  "icicle-plate",
  "fist-plate",
  "toxic-plate",
  "earth-plate",
  "sky-plate",
  "mind-plate",
  "insect-plate",
  "stone-plate",
  "spooky-plate",
  "draco-plate",
  "dread-plate",
  "iron-plate",
  "douse-drive",
  "shock-drive",
  "burn-drive",
  "chill-drive",
  "pixie-plate",
  "firium-z",
  "waterium-z",
  "electrium-z",
  "grassium-z",
  "icium-z",
  "fightinium-z",
  "poisonium-z",
  "groundium-z",
  "flyinium-z",
  "psychium-z",
  "buginium-z",
  "rockium-z",
  "ghostium-z",
  "dragonium-z",
  "darkinium-z",
  "steelium-z",
  "fairium-z",
  "fire-memory",
  "water-memory",
  "electric-memory",
  "grass-memory",
  "ice-memory",
  "fighting-memory",
  "poison-memory",
  "ground-memory",
  "flying-memory",
  "psychic-memory",
  "bug-memory",
  "rock-memory",
  "ghost-memory",
  "dragon-memory",
  "dark-memory",
  "steel-memory",
  "fairy-memory",
  "adamant-crystal",
  "lustrous-globe",
  "teal-mask",
  "wellspring-mask",
  "hearthflame-mask",
  "cornerstone-mask",
];

const expectedEvolutionItemSlugs = [
  "moon-stone",
  "fire-stone",
  "thunder-stone",
  "water-stone",
  "leaf-stone",
  "sun-stone",
  "kings-rock",
  "metal-coat",
  "dragon-scale",
  "up-grade",
  "deep-sea-tooth",
  "deep-sea-scale",
  "shiny-stone",
  "dusk-stone",
  "dawn-stone",
  "oval-stone",
  "protector",
  "electirizer",
  "magmarizer",
  "dubious-disc",
  "reaper-cloth",
  "razor-claw",
  "razor-fang",
  "prism-scale",
  "sachet",
  "whipped-dream",
  "ice-stone",
  "strawberry-sweet",
  "love-sweet",
  "berry-sweet",
  "clover-sweet",
  "flower-sweet",
  "star-sweet",
  "ribbon-sweet",
  "sweet-apple",
  "tart-apple",
  "cracked-pot",
  "chipped-pot",
  "galarica-cuff",
  "galarica-wreath",
  "scroll-of-darkness",
  "scroll-of-waters",
  "linking-cord",
  "black-augurite",
  "peat-block",
  "malicious-armor",
  "auspicious-armor",
  "leaders-crest",
  "gimmighoul-coin",
  "syrupy-apple",
  "unremarkable-teacup",
  "masterpiece-teacup",
  "metal-alloy",
];

const expectedPokeBallItemSlugs = [
  "poke-ball",
  "great-ball",
  "ultra-ball",
  "master-ball",
  "safari-ball",
  "fast-ball",
  "level-ball",
  "lure-ball",
  "heavy-ball",
  "love-ball",
  "friend-ball",
  "moon-ball",
  "sport-ball",
  "net-ball",
  "dive-ball",
  "nest-ball",
  "repeat-ball",
  "timer-ball",
  "luxury-ball",
  "premier-ball",
  "dusk-ball",
  "heal-ball",
  "quick-ball",
  "cherish-ball",
  "dream-ball",
  "beast-ball",
  "hisuian-poke-ball",
  "hisuian-great-ball",
  "hisuian-ultra-ball",
  "hisuian-heavy-ball",
  "leaden-ball",
  "gigaton-ball",
  "feather-ball",
  "wing-ball",
  "jet-ball",
  "origin-ball",
];

const expectedPokeBallAvailableItemSlugs = expectedPokeBallItemSlugs.filter(
  (slug) => slug !== "cherish-ball",
);

const excludedPokeBallCatalogSlugs = new Set(["park-ball", "strange-ball"]);

const expectedPokeBallAvailabilitySlugsByVersionGroup = new Map([
  [
    "rb",
    ["poke-ball", "great-ball", "ultra-ball", "master-ball", "safari-ball"],
  ],
  [
    "yellow",
    ["poke-ball", "great-ball", "ultra-ball", "master-ball", "safari-ball"],
  ],
  [
    "gs",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "fast-ball",
      "level-ball",
      "lure-ball",
      "heavy-ball",
      "love-ball",
      "friend-ball",
      "moon-ball",
      "sport-ball",
    ],
  ],
  [
    "crystal",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "fast-ball",
      "level-ball",
      "lure-ball",
      "heavy-ball",
      "love-ball",
      "friend-ball",
      "moon-ball",
      "sport-ball",
    ],
  ],
  [
    "rs",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "safari-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
    ],
  ],
  [
    "frlg",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "safari-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
    ],
  ],
  [
    "emerald",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "safari-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
    ],
  ],
  [
    "dp",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "safari-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
    ],
  ],
  [
    "platinum",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "safari-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
    ],
  ],
  [
    "hgss",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "safari-ball",
      "fast-ball",
      "level-ball",
      "lure-ball",
      "heavy-ball",
      "love-ball",
      "friend-ball",
      "moon-ball",
      "sport-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
    ],
  ],
  [
    "bw",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
      "dream-ball",
    ],
  ],
  [
    "b2w2",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
      "dream-ball",
    ],
  ],
  [
    "xy",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
    ],
  ],
  [
    "oras",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
    ],
  ],
  [
    "sm",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "fast-ball",
      "level-ball",
      "lure-ball",
      "heavy-ball",
      "love-ball",
      "friend-ball",
      "moon-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
      "beast-ball",
    ],
  ],
  [
    "usum",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "fast-ball",
      "level-ball",
      "lure-ball",
      "heavy-ball",
      "love-ball",
      "friend-ball",
      "moon-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
      "beast-ball",
    ],
  ],
  [
    "lgpe",
    ["poke-ball", "great-ball", "ultra-ball", "master-ball", "premier-ball"],
  ],
  [
    "swsh",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "safari-ball",
      "fast-ball",
      "level-ball",
      "lure-ball",
      "heavy-ball",
      "love-ball",
      "friend-ball",
      "moon-ball",
      "sport-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
      "dream-ball",
      "beast-ball",
    ],
  ],
  [
    "swsh-ioa",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "safari-ball",
      "fast-ball",
      "level-ball",
      "lure-ball",
      "heavy-ball",
      "love-ball",
      "friend-ball",
      "moon-ball",
      "sport-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
    ],
  ],
  [
    "swsh-ct",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "fast-ball",
      "level-ball",
      "lure-ball",
      "heavy-ball",
      "love-ball",
      "friend-ball",
      "moon-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
      "dream-ball",
      "beast-ball",
    ],
  ],
  [
    "bdsp",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "safari-ball",
      "fast-ball",
      "level-ball",
      "lure-ball",
      "heavy-ball",
      "love-ball",
      "friend-ball",
      "moon-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
    ],
  ],
  [
    "pla",
    [
      "hisuian-poke-ball",
      "hisuian-great-ball",
      "hisuian-ultra-ball",
      "hisuian-heavy-ball",
      "leaden-ball",
      "gigaton-ball",
      "feather-ball",
      "wing-ball",
      "jet-ball",
      "origin-ball",
    ],
  ],
  [
    "sv",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "safari-ball",
      "fast-ball",
      "level-ball",
      "lure-ball",
      "heavy-ball",
      "love-ball",
      "friend-ball",
      "moon-ball",
      "sport-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
      "dream-ball",
      "beast-ball",
    ],
  ],
  [
    "sv-tm",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "heavy-ball",
      "love-ball",
      "friend-ball",
      "moon-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
    ],
  ],
  [
    "sv-id",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "safari-ball",
      "fast-ball",
      "level-ball",
      "lure-ball",
      "heavy-ball",
      "love-ball",
      "friend-ball",
      "moon-ball",
      "sport-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
      "dream-ball",
      "beast-ball",
    ],
  ],
  [
    "za",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "master-ball",
      "safari-ball",
      "fast-ball",
      "level-ball",
      "lure-ball",
      "heavy-ball",
      "love-ball",
      "friend-ball",
      "moon-ball",
      "sport-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
      "dream-ball",
      "beast-ball",
    ],
  ],
  [
    "za-md",
    [
      "poke-ball",
      "great-ball",
      "ultra-ball",
      "safari-ball",
      "fast-ball",
      "level-ball",
      "lure-ball",
      "heavy-ball",
      "love-ball",
      "friend-ball",
      "moon-ball",
      "sport-ball",
      "net-ball",
      "dive-ball",
      "nest-ball",
      "repeat-ball",
      "timer-ball",
      "luxury-ball",
      "premier-ball",
      "dusk-ball",
      "heal-ball",
      "quick-ball",
      "dream-ball",
      "beast-ball",
    ],
  ],
]);

const expectedPokeBallAvailabilityRowCount = [
  ...expectedPokeBallAvailabilitySlugsByVersionGroup.values(),
].reduce((total, slugs) => total + slugs.length, 0);

const expectedFossilItemSlugs = [
  "helix-fossil",
  "dome-fossil",
  "old-amber",
  "root-fossil",
  "claw-fossil",
  "armor-fossil",
  "skull-fossil",
  "cover-fossil",
  "plume-fossil",
  "jaw-fossil",
  "sail-fossil",
  "fossilized-bird",
  "fossilized-fish",
  "fossilized-drake",
  "fossilized-dino",
];

const expectedFossilAvailabilitySlugsByVersionGroup = new Map([
  ["rb", ["helix-fossil", "dome-fossil", "old-amber"]],
  ["yellow", ["helix-fossil", "dome-fossil", "old-amber"]],
  ["rs", ["root-fossil", "claw-fossil"]],
  ["frlg", ["helix-fossil", "dome-fossil", "old-amber"]],
  ["emerald", ["root-fossil", "claw-fossil"]],
  [
    "dp",
    [
      "helix-fossil",
      "dome-fossil",
      "old-amber",
      "root-fossil",
      "claw-fossil",
      "skull-fossil@diamond",
      "armor-fossil@pearl",
    ],
  ],
  [
    "platinum",
    [
      "helix-fossil",
      "dome-fossil",
      "old-amber",
      "root-fossil",
      "claw-fossil",
      "skull-fossil",
      "armor-fossil",
    ],
  ],
  [
    "hgss",
    [
      "helix-fossil@heartgold",
      "claw-fossil@heartgold",
      "dome-fossil@soulsilver",
      "root-fossil@soulsilver",
      "old-amber",
    ],
  ],
  [
    "bw",
    [
      "helix-fossil",
      "dome-fossil",
      "old-amber",
      "root-fossil",
      "claw-fossil",
      "skull-fossil",
      "armor-fossil",
      "cover-fossil",
      "plume-fossil",
    ],
  ],
  [
    "b2w2",
    [
      "helix-fossil",
      "dome-fossil",
      "old-amber",
      "root-fossil",
      "claw-fossil",
      "skull-fossil",
      "armor-fossil",
      "cover-fossil",
      "plume-fossil",
    ],
  ],
  [
    "xy",
    [
      "jaw-fossil",
      "sail-fossil",
      "old-amber",
      "skull-fossil",
      "armor-fossil",
      "cover-fossil",
      "plume-fossil",
      "root-fossil@x",
      "claw-fossil@x",
      "dome-fossil@y",
      "helix-fossil@y",
    ],
  ],
  [
    "oras",
    [
      "root-fossil",
      "claw-fossil",
      "old-amber",
      "dome-fossil@omega-ruby",
      "armor-fossil@omega-ruby",
      "plume-fossil@omega-ruby",
      "helix-fossil@alpha-sapphire",
      "skull-fossil@alpha-sapphire",
      "cover-fossil@alpha-sapphire",
    ],
  ],
  [
    "sm",
    [
      "skull-fossil@sun",
      "cover-fossil@sun",
      "armor-fossil@moon",
      "plume-fossil@moon",
    ],
  ],
  [
    "usum",
    [
      "helix-fossil",
      "dome-fossil",
      "root-fossil",
      "claw-fossil",
      "skull-fossil",
      "armor-fossil",
      "cover-fossil",
      "plume-fossil",
      "jaw-fossil",
      "sail-fossil",
    ],
  ],
  ["lgpe", ["helix-fossil", "dome-fossil", "old-amber"]],
  [
    "swsh",
    [
      "fossilized-bird",
      "fossilized-fish",
      "fossilized-drake",
      "fossilized-dino",
    ],
  ],
  [
    "swsh-ct",
    [
      "fossilized-bird",
      "fossilized-fish",
      "fossilized-drake",
      "fossilized-dino",
    ],
  ],
  [
    "bdsp",
    [
      "helix-fossil",
      "dome-fossil",
      "old-amber",
      "root-fossil",
      "claw-fossil",
      "skull-fossil@brilliant-diamond",
      "armor-fossil@shining-pearl",
    ],
  ],
  ["za", ["old-amber", "jaw-fossil", "sail-fossil"]],
]);

const expectedFossilAvailabilityRowCount = [
  ...expectedFossilAvailabilitySlugsByVersionGroup.values(),
].reduce((total, slugs) => total + slugs.length, 0);

const expectedBerryItemSlugs = [
  "gen2-berry",
  "gold-berry",
  "przcureberry",
  "psncureberry",
  "burnt-berry",
  "ice-berry",
  "mint-berry",
  "bitter-berry",
  "miracleberry",
  "mysteryberry",
  "cheri-berry",
  "chesto-berry",
  "pecha-berry",
  "rawst-berry",
  "aspear-berry",
  "leppa-berry",
  "oran-berry",
  "persim-berry",
  "lum-berry",
  "sitrus-berry",
  "figy-berry",
  "wiki-berry",
  "mago-berry",
  "aguav-berry",
  "iapapa-berry",
  "razz-berry",
  "bluk-berry",
  "nanab-berry",
  "wepear-berry",
  "pinap-berry",
  "pomeg-berry",
  "kelpsy-berry",
  "qualot-berry",
  "hondew-berry",
  "grepa-berry",
  "tamato-berry",
  "cornn-berry",
  "magost-berry",
  "rabuta-berry",
  "nomel-berry",
  "spelon-berry",
  "pamtre-berry",
  "watmel-berry",
  "durin-berry",
  "belue-berry",
  "occa-berry",
  "passho-berry",
  "wacan-berry",
  "rindo-berry",
  "yache-berry",
  "chople-berry",
  "kebia-berry",
  "shuca-berry",
  "coba-berry",
  "payapa-berry",
  "tanga-berry",
  "charti-berry",
  "kasib-berry",
  "haban-berry",
  "colbur-berry",
  "babiri-berry",
  "chilan-berry",
  "liechi-berry",
  "ganlon-berry",
  "salac-berry",
  "petaya-berry",
  "apicot-berry",
  "lansat-berry",
  "starf-berry",
  "enigma-berry",
  "micle-berry",
  "custap-berry",
  "jaboca-berry",
  "rowap-berry",
  "roseli-berry",
  "kee-berry",
  "maranga-berry",
];

const expectedBerryAvailableItemSlugs = expectedBerryItemSlugs;

function expectedSlugRange(sourceSlugs, fromSlug, toSlug) {
  const fromIndex = sourceSlugs.indexOf(fromSlug);
  const toIndex = sourceSlugs.indexOf(toSlug);
  if (fromIndex === -1 || toIndex === -1 || fromIndex > toIndex) {
    throw new Error(`Invalid expected slug range: ${fromSlug}..${toSlug}`);
  }
  return sourceSlugs.slice(fromIndex, toIndex + 1);
}

const berryRange = (fromSlug, toSlug) =>
  expectedSlugRange(expectedBerryItemSlugs, fromSlug, toSlug);
const gen2BerrySlugs = berryRange("gen2-berry", "mysteryberry");
const basicBerrySlugs = berryRange("cheri-berry", "sitrus-berry");
const confusionBerrySlugs = berryRange("figy-berry", "iapapa-berry");
const evBerrySlugs = berryRange("pomeg-berry", "tamato-berry");
const contestBerrySlugs = berryRange("cornn-berry", "belue-berry");
const resistBerrySlugs = berryRange("occa-berry", "chilan-berry");
const rareBerrySlugs = berryRange("liechi-berry", "starf-berry");
const eventRareBerrySlugs = berryRange("enigma-berry", "rowap-berry");
const gen6BerrySlugs = berryRange("roseli-berry", "maranga-berry");

const expectedBerryAvailabilitySlugsByVersionGroup = new Map([
  ["gs", gen2BerrySlugs],
  ["crystal", gen2BerrySlugs],
  ["rs", [...berryRange("cheri-berry", "belue-berry"), "liechi-berry"]],
  [
    "frlg",
    [
      ...basicBerrySlugs,
      "iapapa-berry",
      ...berryRange("razz-berry", "pinap-berry"),
      ...contestBerrySlugs.slice(4),
    ],
  ],
  [
    "emerald",
    [
      ...berryRange("cheri-berry", "belue-berry"),
      "liechi-berry",
      "lansat-berry",
      "starf-berry",
    ],
  ],
  ["dp", berryRange("cheri-berry", "chilan-berry")],
  ["platinum", berryRange("cheri-berry", "chilan-berry")],
  [
    "hgss",
    [
      ...basicBerrySlugs,
      "wiki-berry",
      "aguav-berry",
      "iapapa-berry",
      "razz-berry",
      "bluk-berry",
      "wepear-berry",
      "pinap-berry",
      ...evBerrySlugs,
      "cornn-berry",
      "nomel-berry",
      "durin-berry",
      ...resistBerrySlugs,
    ],
  ],
  [
    "bw",
    [
      ...basicBerrySlugs,
      "bluk-berry",
      ...berryRange("occa-berry", "yache-berry"),
      "kebia-berry",
      "shuca-berry",
      "coba-berry",
      "payapa-berry",
      "charti-berry",
      "colbur-berry",
      "chilan-berry",
      "lansat-berry",
      "starf-berry",
    ],
  ],
  [
    "b2w2",
    [
      ...basicBerrySlugs,
      "razz-berry",
      "bluk-berry",
      ...evBerrySlugs,
      ...resistBerrySlugs,
      ...rareBerrySlugs,
    ],
  ],
  [
    "xy",
    [
      ...basicBerrySlugs,
      ...confusionBerrySlugs,
      ...evBerrySlugs,
      ...resistBerrySlugs,
      ...rareBerrySlugs,
      ...gen6BerrySlugs,
    ],
  ],
  [
    "oras",
    [
      ...berryRange("cheri-berry", "belue-berry"),
      ...resistBerrySlugs,
      ...rareBerrySlugs,
      ...gen6BerrySlugs,
    ],
  ],
  [
    "sm",
    [
      ...basicBerrySlugs,
      ...confusionBerrySlugs,
      "bluk-berry",
      "pinap-berry",
      ...evBerrySlugs,
      ...resistBerrySlugs,
      ...rareBerrySlugs,
      ...gen6BerrySlugs,
    ],
  ],
  [
    "usum",
    [
      ...basicBerrySlugs,
      ...confusionBerrySlugs,
      "bluk-berry",
      "pinap-berry",
      ...evBerrySlugs,
      ...resistBerrySlugs,
      ...rareBerrySlugs,
      ...gen6BerrySlugs,
    ],
  ],
  ["lgpe", ["razz-berry", "nanab-berry", "pinap-berry"]],
  [
    "swsh",
    [
      ...basicBerrySlugs,
      ...confusionBerrySlugs,
      ...evBerrySlugs,
      ...resistBerrySlugs,
      ...rareBerrySlugs,
      ...gen6BerrySlugs,
    ],
  ],
  [
    "swsh-ioa",
    [
      "cheri-berry",
      "chesto-berry",
      "pecha-berry",
      "rawst-berry",
      "leppa-berry",
      "oran-berry",
      "persim-berry",
      "lum-berry",
      "sitrus-berry",
      ...confusionBerrySlugs,
      ...evBerrySlugs,
      "occa-berry",
      "passho-berry",
      "yache-berry",
      "chople-berry",
      "coba-berry",
      "charti-berry",
      "kasib-berry",
      "liechi-berry",
      "ganlon-berry",
      "salac-berry",
      "petaya-berry",
      "apicot-berry",
      "kee-berry",
      "maranga-berry",
    ],
  ],
  [
    "swsh-ct",
    [
      "chesto-berry",
      "pecha-berry",
      "aspear-berry",
      "leppa-berry",
      "oran-berry",
      "persim-berry",
      "lum-berry",
      "sitrus-berry",
      ...confusionBerrySlugs,
      ...evBerrySlugs,
      ...resistBerrySlugs,
      "liechi-berry",
      "salac-berry",
      "petaya-berry",
      "apicot-berry",
      ...rareBerrySlugs.slice(5),
      ...eventRareBerrySlugs,
      ...gen6BerrySlugs,
    ],
  ],
  [
    "bdsp",
    [
      ...berryRange("cheri-berry", "belue-berry"),
      ...resistBerrySlugs,
      ...rareBerrySlugs,
      ...eventRareBerrySlugs,
      "roseli-berry",
    ],
  ],
  [
    "pla",
    [
      "cheri-berry",
      "chesto-berry",
      "pecha-berry",
      "rawst-berry",
      "aspear-berry",
      "leppa-berry",
      "oran-berry",
      "lum-berry",
      "sitrus-berry",
      ...confusionBerrySlugs,
      "razz-berry",
      "nanab-berry",
      "pinap-berry",
    ],
  ],
  [
    "sv",
    [
      ...basicBerrySlugs,
      ...confusionBerrySlugs,
      ...evBerrySlugs,
      ...resistBerrySlugs,
      ...rareBerrySlugs,
      "roseli-berry",
    ],
  ],
  [
    "sv-tm",
    [
      "cheri-berry",
      "chesto-berry",
      "pecha-berry",
      "rawst-berry",
      "leppa-berry",
      "oran-berry",
      "persim-berry",
      "sitrus-berry",
      "aguav-berry",
      ...evBerrySlugs,
      "liechi-berry",
      "salac-berry",
      "apicot-berry",
      ...eventRareBerrySlugs,
      "kee-berry",
      "maranga-berry",
    ],
  ],
  [
    "sv-id",
    [
      ...basicBerrySlugs,
      ...confusionBerrySlugs,
      ...evBerrySlugs,
      "starf-berry",
    ],
  ],
  [
    "za",
    [
      "cheri-berry",
      "chesto-berry",
      "pecha-berry",
      "rawst-berry",
      "aspear-berry",
      "oran-berry",
      "persim-berry",
      "lum-berry",
      "sitrus-berry",
      ...evBerrySlugs,
      ...resistBerrySlugs,
      "roseli-berry",
    ],
  ],
]);

const expectedBerryAvailabilityRowCount = [
  ...expectedBerryAvailabilitySlugsByVersionGroup.values(),
].reduce((total, slugs) => total + slugs.length, 0);

const expectedAdditionalZCrystalItemSlugs = [
  "normalium-z",
  "aloraichium-z",
  "decidium-z",
  "eevium-z",
  "incinium-z",
  "kommonium-z",
  "lunalium-z",
  "lycanium-z",
  "marshadium-z",
  "mewnium-z",
  "mimikium-z",
  "pikanium-z",
  "pikashunium-z",
  "primarium-z",
  "snorlium-z",
  "solganium-z",
  "tapunium-z",
  "ultranecrozium-z",
];

const expectedTypeZCrystalItemSlugs = [
  "normalium-z",
  "firium-z",
  "waterium-z",
  "electrium-z",
  "grassium-z",
  "icium-z",
  "fightinium-z",
  "poisonium-z",
  "groundium-z",
  "flyinium-z",
  "psychium-z",
  "buginium-z",
  "rockium-z",
  "ghostium-z",
  "dragonium-z",
  "darkinium-z",
  "steelium-z",
  "fairium-z",
];

const expectedZCrystalItemSlugs = [
  ...expectedTypeZCrystalItemSlugs,
  ...expectedAdditionalZCrystalItemSlugs.filter(
    (slug) => slug !== "normalium-z",
  ),
];

const expectedSunMoonSpecificZCrystalItemSlugs = [
  "aloraichium-z",
  "decidium-z",
  "eevium-z",
  "incinium-z",
  "pikanium-z",
  "primarium-z",
  "tapunium-z",
];

const expectedZCrystalAvailabilitySlugsByVersionGroup = new Map([
  [
    "sm",
    [
      ...expectedTypeZCrystalItemSlugs,
      ...expectedSunMoonSpecificZCrystalItemSlugs,
    ],
  ],
  ["usum", expectedZCrystalItemSlugs],
]);

const expectedZCrystalAvailabilityRowCount = [
  ...expectedZCrystalAvailabilitySlugsByVersionGroup.values(),
].reduce((total, slugs) => total + slugs.length, 0);

const expectedNonZCrystalFormChangeItemSlugs =
  expectedFormChangeItemSlugs.filter(
    (slug) => !expectedZCrystalItemSlugs.includes(slug),
  );

const expectedLegacyMegaStoneItemSlugs = [
  "venusaurite",
  "charizardite-x",
  "charizardite-y",
  "blastoisinite",
  "beedrillite",
  "pidgeotite",
  "alakazite",
  "slowbronite",
  "gengarite",
  "kangaskhanite",
  "pinsirite",
  "gyaradosite",
  "aerodactylite",
  "mewtwonite-x",
  "mewtwonite-y",
  "ampharosite",
  "steelixite",
  "scizorite",
  "heracronite",
  "houndoominite",
  "tyranitarite",
  "sceptilite",
  "blazikenite",
  "swampertite",
  "gardevoirite",
  "sablenite",
  "mawilite",
  "aggronite",
  "medichamite",
  "manectite",
  "sharpedonite",
  "cameruptite",
  "altarianite",
  "banettite",
  "absolite",
  "glalitite",
  "salamencite",
  "metagrossite",
  "latiasite",
  "latiosite",
  "lopunnite",
  "garchompite",
  "lucarionite",
  "abomasite",
  "galladite",
  "audinite",
  "diancite",
];

const expectedPokemonLegendsZaMegaStoneItemSlugs = [
  "clefablite",
  "victreebelite",
  "starminite",
  "dragoninite",
  "meganiumite",
  "feraligite",
  "skarmorite",
  "froslassite",
  "heatranite",
  "darkranite",
  "emboarite",
  "excadrite",
  "scolipite",
  "scraftinite",
  "eelektrossite",
  "chandelurite",
  "chesnaughtite",
  "delphoxite",
  "greninjite",
  "pyroarite",
  "floettite",
  "malamarite",
  "barbaracite",
  "dragalgite",
  "hawluchanite",
  "zygardite",
  "drampanite",
  "zeraorite",
  "falinksite",
  "raichunite-x",
  "raichunite-y",
  "chimechite",
  "absolite-z",
  "staraptite",
  "garchompite-z",
  "lucarionite-z",
  "golurkite",
  "meowsticite",
  "crabominite",
  "golisopite",
  "magearnite",
  "scovillainite",
  "baxcalibrite",
  "tatsugirinite",
  "glimmoranite",
];

const expectedMegaStoneItemSlugs = [
  ...expectedLegacyMegaStoneItemSlugs,
  ...expectedPokemonLegendsZaMegaStoneItemSlugs,
];

const expectedTypeEnhancingHeldItemSlugs = [
  "black-belt",
  "black-glasses",
  "charcoal",
  "dragon-fang",
  "fairy-feather",
  "hard-stone",
  "magnet",
  "miracle-seed",
  "mystic-water",
  "never-melt-ice",
  "pink-bow",
  "poison-barb",
  "polkadot-bow",
  "sharp-beak",
  "silk-scarf",
  "silver-powder",
  "soft-sand",
  "spell-tag",
  "twisted-spoon",
];

const expectedGemHeldItemSlugs = [
  "normal-gem",
  "fire-gem",
  "water-gem",
  "electric-gem",
  "grass-gem",
  "ice-gem",
  "fighting-gem",
  "poison-gem",
  "ground-gem",
  "flying-gem",
  "psychic-gem",
  "bug-gem",
  "rock-gem",
  "ghost-gem",
  "dragon-gem",
  "dark-gem",
  "steel-gem",
  "fairy-gem",
];

const expectedIncenseHeldItemSlugs = [
  "sea-incense",
  "lax-incense",
  "rose-incense",
  "pure-incense",
  "full-incense",
  "luck-incense",
  "odd-incense",
  "rock-incense",
  "wave-incense",
];

const expectedSpeciesSpecificHeldItemSlugs = [
  "adamant-orb",
  "lustrous-orb",
  "soul-dew",
  "red-orb",
  "blue-orb",
  "rusted-sword",
  "rusted-shield",
  "leek",
  "light-ball",
  "lucky-punch",
  "metal-powder",
  "quick-powder",
  "thick-club",
  "booster-energy",
];

const expectedBattleEffectHeldItemSlugs = [
  "ability-shield",
  "absorb-bulb",
  "air-balloon",
  "assault-vest",
  "berserk-gene",
  "big-root",
  "binding-band",
  "black-sludge",
  "blunder-policy",
  "bright-powder",
  "cell-battery",
  "choice-band",
  "choice-scarf",
  "choice-specs",
  "clear-amulet",
  "covert-cloak",
  "damp-rock",
  "eject-button",
  "eject-pack",
  "electric-seed",
  "eviolite",
  "expert-belt",
  "flame-orb",
  "float-stone",
  "focus-band",
  "focus-sash",
  "grassy-seed",
  "grip-claw",
  "heat-rock",
  "heavy-duty-boots",
  "icy-rock",
  "iron-ball",
  "lagging-tail",
  "leftovers",
  "life-orb",
  "light-clay",
  "loaded-dice",
  "luminous-moss",
  "mental-herb",
  "metronome",
  "mirror-herb",
  "misty-seed",
  "muscle-band",
  "power-herb",
  "protective-pads",
  "psychic-seed",
  "punching-glove",
  "quick-claw",
  "red-card",
  "ring-target",
  "rocky-helmet",
  "room-service",
  "safety-goggles",
  "scope-lens",
  "shed-shell",
  "shell-bell",
  "smooth-rock",
  "snowball",
  "sticky-barb",
  "terrain-extender",
  "throat-spray",
  "toxic-orb",
  "utility-umbrella",
  "weakness-policy",
  "white-herb",
  "wide-lens",
  "wise-glasses",
  "zoom-lens",
];

const expectedTrainingExperienceHeldItemSlugs = [
  "macho-brace",
  "power-weight",
  "power-bracer",
  "power-belt",
  "power-lens",
  "power-band",
  "power-anklet",
  "exp-share",
  "lucky-egg",
];

const expectedUtilityContestBreedingHeldItemSlugs = [
  "amulet-coin",
  "cleanse-tag",
  "everstone",
  "soothe-bell",
  "smoke-ball",
  "destiny-knot",
  "blue-scarf",
  "green-scarf",
  "pink-scarf",
  "red-scarf",
  "yellow-scarf",
];

const expectedGeneralHeldItemSlugs = [
  ...expectedTypeEnhancingHeldItemSlugs,
  ...expectedGemHeldItemSlugs,
  ...expectedIncenseHeldItemSlugs,
  ...expectedSpeciesSpecificHeldItemSlugs,
  ...expectedBattleEffectHeldItemSlugs,
  ...expectedTrainingExperienceHeldItemSlugs,
  ...expectedUtilityContestBreedingHeldItemSlugs,
];

const expectedGeneralHeldAvailableItemSlugs =
  expectedGeneralHeldItemSlugs.filter((slug) => slug !== "fairy-gem");

const expectedGeneralHeldItemCategoryRequirements = new Map([
  ["black-belt", [2, 9]],
  ["black-glasses", [2, 9]],
  ["charcoal", [2, 9]],
  ["dragon-fang", [2, 9]],
  ["fairy-feather", [2, 9]],
  ["hard-stone", [2, 9]],
  ["magnet", [2, 9]],
  ["miracle-seed", [2, 9]],
  ["mystic-water", [2, 9]],
  ["never-melt-ice", [2, 9]],
  ["pink-bow", [2, 9]],
  ["poison-barb", [2, 9]],
  ["polkadot-bow", [2, 9]],
  ["sharp-beak", [2, 9]],
  ["silk-scarf", [2, 9]],
  ["silver-powder", [2, 9]],
  ["soft-sand", [2, 9]],
  ["spell-tag", [2, 9]],
  ["twisted-spoon", [2, 9]],
  ["normal-gem", [2, 9, 16]],
  ["fire-gem", [2, 9, 16]],
  ["water-gem", [2, 9, 16]],
  ["electric-gem", [2, 9, 16]],
  ["grass-gem", [2, 9, 16]],
  ["ice-gem", [2, 9, 16]],
  ["fighting-gem", [2, 9, 16]],
  ["poison-gem", [2, 9, 16]],
  ["ground-gem", [2, 9, 16]],
  ["flying-gem", [2, 9, 16]],
  ["psychic-gem", [2, 9, 16]],
  ["bug-gem", [2, 9, 16]],
  ["rock-gem", [2, 9, 16]],
  ["ghost-gem", [2, 9, 16]],
  ["dragon-gem", [2, 9, 16]],
  ["dark-gem", [2, 9, 16]],
  ["steel-gem", [2, 9, 16]],
  ["fairy-gem", [2, 9, 16]],
  ["sea-incense", [2, 9, 13, 17]],
  ["lax-incense", [2, 10, 13, 17]],
  ["rose-incense", [2, 9, 13, 17]],
  ["pure-incense", [2, 13, 17, 18]],
  ["full-incense", [2, 10, 13, 17]],
  ["luck-incense", [2, 13, 17, 18]],
  ["odd-incense", [2, 9, 13, 17]],
  ["rock-incense", [2, 9, 13, 17]],
  ["wave-incense", [2, 9, 13, 17]],
  ["adamant-orb", [2, 9, 10, 15]],
  ["lustrous-orb", [2, 9, 10, 15]],
  ["soul-dew", [2, 9, 10, 15]],
  ["red-orb", [2, 10, 15]],
  ["blue-orb", [2, 10, 15]],
  ["rusted-sword", [2, 10, 15]],
  ["rusted-shield", [2, 10, 15]],
  ["leek", [2, 10, 15]],
  ["light-ball", [2, 10, 13, 15]],
  ["lucky-punch", [2, 10, 15]],
  ["metal-powder", [2, 10, 15]],
  ["quick-powder", [2, 10, 15]],
  ["thick-club", [2, 10, 15]],
  ["booster-energy", [2, 10, 15]],
  ["ability-shield", [2, 10]],
  ["absorb-bulb", [2, 10]],
  ["air-balloon", [2, 10]],
  ["assault-vest", [2, 10]],
  ["berserk-gene", [2, 10]],
  ["big-root", [2, 10]],
  ["binding-band", [2, 10]],
  ["black-sludge", [2, 10]],
  ["blunder-policy", [2, 10]],
  ["bright-powder", [2, 10]],
  ["cell-battery", [2, 10]],
  ["choice-band", [2, 10]],
  ["choice-scarf", [2, 10]],
  ["choice-specs", [2, 10]],
  ["clear-amulet", [2, 10]],
  ["covert-cloak", [2, 10]],
  ["damp-rock", [2, 10]],
  ["eject-button", [2, 10]],
  ["eject-pack", [2, 10]],
  ["electric-seed", [2, 10]],
  ["eviolite", [2, 10]],
  ["expert-belt", [2, 10]],
  ["flame-orb", [2, 10]],
  ["float-stone", [2, 10]],
  ["focus-band", [2, 10]],
  ["focus-sash", [2, 10]],
  ["grassy-seed", [2, 10]],
  ["grip-claw", [2, 10]],
  ["heat-rock", [2, 10]],
  ["heavy-duty-boots", [2, 10]],
  ["icy-rock", [2, 10]],
  ["iron-ball", [2, 10]],
  ["lagging-tail", [2, 10]],
  ["leftovers", [2, 10]],
  ["life-orb", [2, 10]],
  ["light-clay", [2, 10]],
  ["loaded-dice", [2, 10]],
  ["luminous-moss", [2, 10]],
  ["mental-herb", [2, 10]],
  ["metronome", [2, 10]],
  ["mirror-herb", [2, 10, 13]],
  ["misty-seed", [2, 10]],
  ["muscle-band", [2, 10]],
  ["power-herb", [2, 10]],
  ["protective-pads", [2, 10]],
  ["psychic-seed", [2, 10]],
  ["punching-glove", [2, 10]],
  ["quick-claw", [2, 10]],
  ["red-card", [2, 10]],
  ["ring-target", [2, 10]],
  ["rocky-helmet", [2, 10]],
  ["room-service", [2, 10]],
  ["safety-goggles", [2, 10]],
  ["scope-lens", [2, 10]],
  ["shed-shell", [2, 10]],
  ["shell-bell", [2, 10]],
  ["smooth-rock", [2, 10]],
  ["snowball", [2, 10]],
  ["sticky-barb", [2, 10]],
  ["terrain-extender", [2, 10]],
  ["throat-spray", [2, 10]],
  ["toxic-orb", [2, 10]],
  ["utility-umbrella", [2, 10]],
  ["weakness-policy", [2, 10]],
  ["white-herb", [2, 10]],
  ["wide-lens", [2, 10]],
  ["wise-glasses", [2, 10]],
  ["zoom-lens", [2, 10]],
  ["macho-brace", [2, 11]],
  ["power-weight", [2, 11, 13]],
  ["power-bracer", [2, 11, 13]],
  ["power-belt", [2, 11, 13]],
  ["power-lens", [2, 11, 13]],
  ["power-band", [2, 11, 13]],
  ["power-anklet", [2, 11, 13]],
  ["exp-share", [2, 11, 12]],
  ["lucky-egg", [2, 11, 12]],
  ["amulet-coin", [2, 18]],
  ["cleanse-tag", [2, 18]],
  ["everstone", [2, 13, 18]],
  ["soothe-bell", [2, 18]],
  ["smoke-ball", [2, 18]],
  ["destiny-knot", [2, 10, 13, 18]],
  ["blue-scarf", [2, 14, 18]],
  ["green-scarf", [2, 14, 18]],
  ["pink-scarf", [2, 14, 18]],
  ["red-scarf", [2, 14, 18]],
  ["yellow-scarf", [2, 14, 18]],
]);

const expectedItemSlugs = [
  ...expectedFormChangeItemSlugs,
  ...expectedEvolutionItemSlugs,
  "griseous-core",
  ...expectedPokeBallItemSlugs,
  ...expectedFossilItemSlugs,
  ...expectedBerryItemSlugs,
  ...expectedAdditionalZCrystalItemSlugs,
  ...expectedLegacyMegaStoneItemSlugs,
  ...expectedTypeEnhancingHeldItemSlugs,
  ...expectedGemHeldItemSlugs,
  ...expectedIncenseHeldItemSlugs,
  ...expectedSpeciesSpecificHeldItemSlugs,
  ...expectedBattleEffectHeldItemSlugs,
  ...expectedTrainingExperienceHeldItemSlugs,
  ...expectedUtilityContestBreedingHeldItemSlugs,
  ...expectedPokemonLegendsZaMegaStoneItemSlugs,
];

const expectedEvolutionHeldItemSlugs = new Set([
  "kings-rock",
  "metal-coat",
  "dragon-scale",
  "up-grade",
  "deep-sea-tooth",
  "deep-sea-scale",
  "oval-stone",
  "protector",
  "electirizer",
  "magmarizer",
  "dubious-disc",
  "reaper-cloth",
  "razor-claw",
  "razor-fang",
  "prism-scale",
  "sachet",
  "whipped-dream",
  "strawberry-sweet",
  "love-sweet",
  "berry-sweet",
  "clover-sweet",
  "flower-sweet",
  "star-sweet",
  "ribbon-sweet",
  "leaders-crest",
]);

const expectedMoveGenerationCounts = new Map([
  [1, 165],
  [2, 86],
  [3, 103],
  [4, 113],
  [5, 92],
  [6, 62],
  [7, 103],
  [8, 141],
  [9, 70],
]);

const expectedMoveKindCounts = new Map([
  [1, 848],
  [2, 35],
  [3, 19],
  [4, 33],
]);

const expectedZMoveSlugs = new Set([
  "breakneck-blitz",
  "all-out-pummeling",
  "supersonic-skystrike",
  "acid-downpour",
  "tectonic-rage",
  "continental-crush",
  "savage-spin-out",
  "never-ending-nightmare",
  "corkscrew-crash",
  "inferno-overdrive",
  "hydro-vortex",
  "bloom-doom",
  "gigavolt-havoc",
  "shattered-psyche",
  "subzero-slammer",
  "devastating-drake",
  "black-hole-eclipse",
  "twinkle-tackle",
  "catastropika",
  "sinister-arrow-raid",
  "malicious-moonsault",
  "oceanic-operetta",
  "guardian-of-alola",
  "soul-stealing-7-star-strike",
  "stoked-sparksurfer",
  "pulverizing-pancake",
  "extreme-evoboost",
  "genesis-supernova",
  "10-000-000-volt-thunderbolt",
  "light-that-burns-the-sky",
  "searing-sunraze-smash",
  "menacing-moonraze-maelstrom",
  "lets-snuggle-forever",
  "splintered-stormshards",
  "clangorous-soulblaze",
]);

const expectedKnownEvolutionMoveSlugs = [
  "stomp",
  "mimic",
  "rollout",
  "ancient-power",
  "taunt",
  "dragon-pulse",
  "double-hit",
  "psyshield-bash",
  "barb-barrage",
  "hyper-drill",
  "twin-beam",
  "rage-fist",
  "dragon-cheer",
];

const expectedNonDefaultFormSlugs = [
  "deoxys-attack",
  "deoxys-defense",
  "deoxys-speed",
  "burmy-sandy",
  "burmy-trash",
  "wormadam-sandy",
  "wormadam-trash",
  "rotom-heat",
  "rotom-wash",
  "rotom-frost",
  "rotom-fan",
  "rotom-mow",
  "giratina-origin",
  "shaymin-sky",
  "arceus-fighting",
  "arceus-flying",
  "arceus-poison",
  "arceus-ground",
  "arceus-rock",
  "arceus-bug",
  "arceus-ghost",
  "arceus-steel",
  "arceus-fire",
  "arceus-water",
  "arceus-grass",
  "arceus-electric",
  "arceus-psychic",
  "arceus-ice",
  "arceus-dragon",
  "arceus-dark",
  "basculin-blue-striped",
  "tornadus-therian",
  "thundurus-therian",
  "landorus-therian",
  "kyurem-white",
  "kyurem-black",
  "genesect-douse-drive",
  "genesect-shock-drive",
  "genesect-burn-drive",
  "genesect-chill-drive",
  "arceus-fairy",
  "meowstic-female",
  "pumpkaboo-small",
  "pumpkaboo-large",
  "pumpkaboo-super",
  "gourgeist-small",
  "gourgeist-large",
  "gourgeist-super",
  "hoopa-unbound",
  "alolan-rattata",
  "alolan-raticate",
  "pikachu-partner",
  "alolan-raichu",
  "alolan-sandshrew",
  "alolan-sandslash",
  "alolan-vulpix",
  "alolan-ninetales",
  "alolan-diglett",
  "alolan-dugtrio",
  "alolan-meowth",
  "alolan-persian",
  "alolan-geodude",
  "alolan-graveler",
  "alolan-golem",
  "alolan-grimer",
  "alolan-muk",
  "alolan-exeggutor",
  "alolan-marowak",
  "eevee-partner",
  "zygarde-10-percent",
  "oricorio-pom-pom",
  "oricorio-pau",
  "oricorio-sensu",
  "rockruff-own-tempo",
  "lycanroc-midnight",
  "lycanroc-dusk",
  "silvally-fighting",
  "silvally-flying",
  "silvally-poison",
  "silvally-ground",
  "silvally-rock",
  "silvally-bug",
  "silvally-ghost",
  "silvally-steel",
  "silvally-fire",
  "silvally-water",
  "silvally-grass",
  "silvally-electric",
  "silvally-psychic",
  "silvally-ice",
  "silvally-dragon",
  "silvally-dark",
  "silvally-fairy",
  "necrozma-dusk-mane",
  "necrozma-dawn-wings",
  "galarian-meowth",
  "hisuian-growlithe",
  "hisuian-arcanine",
  "galarian-ponyta",
  "galarian-rapidash",
  "galarian-slowpoke",
  "galarian-slowbro",
  "galarian-farfetchd",
  "hisuian-voltorb",
  "hisuian-electrode",
  "galarian-weezing",
  "galarian-mr-mime",
  "galarian-articuno",
  "galarian-zapdos",
  "galarian-moltres",
  "hisuian-typhlosion",
  "galarian-slowking",
  "hisuian-qwilfish",
  "hisuian-sneasel",
  "galarian-corsola",
  "galarian-zigzagoon",
  "galarian-linoone",
  "dialga-origin",
  "palkia-origin",
  "hisuian-samurott",
  "hisuian-lilligant",
  "basculin-white-striped",
  "galarian-darumaka",
  "galarian-darmanitan",
  "galarian-yamask",
  "hisuian-zorua",
  "hisuian-zoroark",
  "galarian-stunfisk",
  "hisuian-braviary",
  "hisuian-sliggoo",
  "hisuian-goodra",
  "hisuian-avalugg",
  "hisuian-decidueye",
  "toxtricity-low-key",
  "sinistea-antique",
  "polteageist-antique",
  "indeedee-female",
  "urshifu-rapid-strike",
  "calyrex-ice-rider",
  "calyrex-shadow-rider",
  "basculegion-female",
  "enamorus-therian",
  "paldea-tauros-combat",
  "paldea-tauros-blaze",
  "paldea-tauros-aqua",
  "paldea-wooper",
  "ursaluna-bloodmoon",
  "oinkologne-female",
  "maushold-family-of-three",
  "squawkabilly-blue",
  "squawkabilly-yellow",
  "squawkabilly-white",
  "tatsugiri-droopy",
  "tatsugiri-stretchy",
  "dudunsparce-three-segment",
  "poltchageist-artisan",
  "sinistcha-masterpiece",
  "ogerpon-wellspring",
  "ogerpon-hearthflame",
  "ogerpon-cornerstone",
];

const excludedNonDefaultFormSlugs = new Set([
  "deerling-summer",
  "deerling-autumn",
  "deerling-winter",
  "sawsbuck-summer",
  "sawsbuck-autumn",
  "sawsbuck-winter",
  "gimmighoul-roaming",
  "zacian-crowned",
  "zamazenta-crowned",
  "wishiwashi-school",
  "palafin-hero",
  "terapagos-terastal",
  "terapagos-stellar",
  "mimikyu-busted",
  "minior-core",
  "mega-venusaur",
  "charizard-mega-x",
  "charizard-mega-y",
  "gmax-pikachu",
]);

const expectedTypeMatchupRows = `
1,13,1,1,2
1,14,1,0,1
2,2,1,1,2
2,3,1,1,2
2,5,1,2,1
2,6,1,2,1
2,12,1,2,1
2,13,1,1,2
2,15,1,1,2
3,2,1,2,1
3,3,1,1,2
3,5,1,1,2
3,9,1,2,1
3,13,1,2,1
3,15,1,1,2
4,3,1,2,1
4,4,1,1,2
4,5,1,1,2
4,9,1,0,1
4,10,1,2,1
4,15,1,1,2
5,2,1,1,2
5,3,1,2,1
5,5,1,1,2
5,8,1,1,2
5,9,1,2,1
5,10,1,1,2
5,12,1,1,2
5,13,1,2,1
5,15,1,1,2
6,3,1,1,2
6,5,1,2,1
6,6,1,1,2
6,9,1,2,1
6,10,1,2,1
6,15,1,2,1
7,1,1,2,1
7,6,1,2,1
7,8,1,1,2
7,10,1,1,2
7,11,1,1,2
7,12,1,1,2
7,13,1,2,1
7,14,1,0,1
8,5,1,2,1
8,8,1,1,2
8,9,1,1,2
8,12,1,2,1
8,13,1,1,2
8,14,1,1,2
9,2,1,2,1
9,4,1,2,1
9,5,1,1,2
9,8,1,2,1
9,10,1,0,1
9,12,1,1,2
9,13,1,2,1
10,4,1,1,2
10,5,1,2,1
10,7,1,2,1
10,12,1,2,1
10,13,1,1,2
11,7,1,2,1
11,8,1,2,1
11,11,1,1,2
12,2,1,1,2
12,5,1,2,1
12,7,1,1,2
12,8,1,2,1
12,10,1,1,2
12,11,1,2,1
12,14,1,1,2
13,2,1,2,1
13,6,1,2,1
13,7,1,1,2
13,9,1,1,2
13,10,1,2,1
13,12,1,2,1
14,1,1,0,1
14,11,1,0,1
14,14,1,2,1
15,15,1,2,1
1,17,2,1,2
2,17,2,2,1
5,17,2,1,2
6,2,2,1,2
6,17,2,1,2
7,16,2,2,1
7,17,2,2,1
8,12,2,1,1
8,17,2,0,1
9,17,2,2,1
10,17,2,1,2
11,16,2,0,1
11,17,2,1,2
12,8,2,1,2
12,16,2,2,1
12,17,2,1,2
13,17,2,1,2
14,11,2,2,1
14,16,2,1,2
14,17,2,1,2
15,17,2,1,2
16,7,2,1,2
16,11,2,2,1
16,14,2,2,1
16,16,2,1,2
16,17,2,1,2
17,2,2,1,2
17,3,2,1,2
17,4,2,1,2
17,6,2,2,1
17,13,2,2,1
17,17,2,1,2
6,18,6,1,2
7,18,6,1,2
8,18,6,2,1
12,18,6,1,2
14,17,6,1,1
15,18,6,0,1
16,17,6,1,1
16,18,6,1,2
17,18,6,2,1
18,2,6,1,2
18,7,6,2,1
18,8,6,1,2
18,15,6,2,1
18,16,6,2,1
18,17,6,1,2
`
  .trim()
  .split("\n")
  .map((line) => line.split(",").map(Number));

const expectedGamePlatformSlugs = {
  red: ["game-boy"],
  blue: ["game-boy"],
  yellow: ["game-boy", "game-boy-color"],
  gold: ["game-boy", "game-boy-color"],
  silver: ["game-boy", "game-boy-color"],
  crystal: ["game-boy-color"],
  ruby: ["game-boy-advance"],
  sapphire: ["game-boy-advance"],
  emerald: ["game-boy-advance"],
  firered: ["game-boy-advance"],
  leafgreen: ["game-boy-advance"],
  diamond: ["nintendo-ds"],
  pearl: ["nintendo-ds"],
  platinum: ["nintendo-ds"],
  heartgold: ["nintendo-ds"],
  soulsilver: ["nintendo-ds"],
  black: ["nintendo-ds"],
  white: ["nintendo-ds"],
  "black-2": ["nintendo-ds"],
  "white-2": ["nintendo-ds"],
  x: ["nintendo-3ds"],
  y: ["nintendo-3ds"],
  "omega-ruby": ["nintendo-3ds"],
  "alpha-sapphire": ["nintendo-3ds"],
  sun: ["nintendo-3ds"],
  moon: ["nintendo-3ds"],
  "ultra-sun": ["nintendo-3ds"],
  "ultra-moon": ["nintendo-3ds"],
  "lets-go-pikachu": ["nintendo-switch"],
  "lets-go-eevee": ["nintendo-switch"],
  sword: ["nintendo-switch"],
  shield: ["nintendo-switch"],
  "brilliant-diamond": ["nintendo-switch"],
  "shining-pearl": ["nintendo-switch"],
  "legends-arceus": ["nintendo-switch"],
  scarlet: ["nintendo-switch"],
  violet: ["nintendo-switch"],
  "legends-za": ["nintendo-switch", "nintendo-switch-2"],
};

function walkFiles(root) {
  const files = [];
  for (const entry of readdirSync(root)) {
    const fullPath = path.join(root, entry);
    const stat = statSync(fullPath);
    if (stat.isDirectory()) {
      files.push(...walkFiles(fullPath));
    } else {
      files.push(fullPath);
    }
  }
  return files.sort((a, b) => a.localeCompare(b));
}

function walkDirectories(root) {
  const directories = [];
  for (const entry of readdirSync(root)) {
    const fullPath = path.join(root, entry);
    const stat = statSync(fullPath);
    if (!stat.isDirectory()) continue;
    directories.push(fullPath);
    directories.push(...walkDirectories(fullPath));
  }
  return directories.sort((a, b) => a.localeCompare(b));
}

function stripLineComments(sql) {
  return sql
    .split(/\r?\n/)
    .filter((line) => !line.trimStart().startsWith("--"))
    .join("\n");
}

function assertPokedexEntryHelperComments(sql, filePath) {
  if (!/INSERT\s+INTO\s+reference\.pokedex_entries\b/i.test(sql)) return;

  const lines = sql.split(/\r?\n/);
  for (let index = 0; index < lines.length; index += 1) {
    const line = lines[index];
    if (
      !/^\s*\(\d+,\s*\d+,\s*NULL,\s*\d+(?:,\s*(?:TRUE|FALSE))?\)[,;]?\s*$/i.test(
        line,
      )
    )
      continue;

    let previousIndex = index - 1;
    while (previousIndex >= 0 && lines[previousIndex].trim() === "") {
      previousIndex -= 1;
    }

    const previousLine = previousIndex >= 0 ? lines[previousIndex] : "";
    if (!/^\s*-- #\d{3} .+/.test(previousLine)) {
      errors.push(
        `${relative(filePath)}: Pokedex entry row must have a preceding "-- #001 Pokémon" helper comment.`,
      );
    }
  }
}

function assertSchemaSecurity() {
  if (!existsSync(schemaRoot)) return;

  const schemaFiles = walkFiles(schemaRoot).filter((filePath) =>
    filePath.endsWith(".sql"),
  );
  const referenceTableFiles = schemaFiles.filter((filePath) =>
    relative(filePath).startsWith("schema/02_reference/01_tables/"),
  );
  const policyFiles = schemaFiles.filter((filePath) =>
    relative(filePath).startsWith("schema/02_reference/02_policies/"),
  );
  const viewFiles = schemaFiles.filter((filePath) =>
    relative(filePath).startsWith("schema/06_views/01_views/"),
  );
  const referenceTableNames = [];

  for (const filePath of referenceTableFiles) {
    const sql = readFileSync(filePath, "utf8");
    for (const match of sql.matchAll(
      /CREATE\s+TABLE\s+reference\.([a-z_][a-z0-9_]*)\s*\(/gi,
    )) {
      referenceTableNames.push(match[1]);
    }
  }

  const policySql = policyFiles
    .map((filePath) => readFileSync(filePath, "utf8"))
    .join("\n");
  for (const tableName of referenceTableNames.toSorted()) {
    const qualifiedName = "reference." + tableName;
    const escapedName = qualifiedName.replace(".", "\\.");
    if (
      !new RegExp(
        "ALTER\\s+TABLE\\s+" +
          escapedName +
          "\\s+ENABLE\\s+ROW\\s+LEVEL\\s+SECURITY",
        "i",
      ).test(policySql)
    ) {
      errors.push(
        qualifiedName +
          ": reference table must enable row-level security in reference policy files.",
      );
    }
    if (
      !new RegExp(
        "REVOKE\\s+ALL\\s+ON\\s+TABLE\\s+" +
          escapedName +
          "\\s+FROM\\s+anon,\\s*authenticated",
        "i",
      ).test(policySql)
    ) {
      errors.push(
        qualifiedName +
          ": reference table must revoke all client privileges before granting read access.",
      );
    }
    if (
      !new RegExp(
        "GRANT\\s+SELECT\\s+ON\\s+TABLE\\s+" +
          escapedName +
          "\\s+TO\\s+anon,\\s*authenticated",
        "i",
      ).test(policySql)
    ) {
      errors.push(
        qualifiedName +
          ": reference table must grant only SELECT to anon/authenticated.",
      );
    }
    if (
      !new RegExp(
        "GRANT\\s+ALL\\s+ON\\s+TABLE\\s+" +
          escapedName +
          "\\s+TO\\s+service_role",
        "i",
      ).test(policySql)
    ) {
      errors.push(
        qualifiedName +
          ": reference table must grant full maintenance access to service_role.",
      );
    }
    if (
      !new RegExp(
        "CREATE\\s+POLICY\\s+[a-z0-9_]+_read_all\\s+ON\\s+" +
          escapedName +
          "\\s+FOR\\s+SELECT\\s+TO\\s+anon,\\s*authenticated\\s+USING\\s*\\(true\\)",
        "i",
      ).test(policySql)
    ) {
      errors.push(
        qualifiedName +
          ": reference table must have a read_all SELECT policy for client roles.",
      );
    }
  }

  const unsafeClientGrantPattern =
    /GRANT\s+(?!SELECT\b)(INSERT|UPDATE|DELETE|TRUNCATE|REFERENCES|TRIGGER|ALL|[A-Z,\s]+)\s+ON\s+TABLE\s+reference\.[a-z_][a-z0-9_]*\s+TO\s+(?:anon|authenticated|anon,\s*authenticated|authenticated,\s*anon)/gi;
  for (const match of policySql.matchAll(unsafeClientGrantPattern)) {
    errors.push(
      "reference policies contain unsafe client table grant: " +
        match[0].replace(/\s+/g, " ") +
        ".",
    );
  }

  for (const filePath of viewFiles) {
    const sql = readFileSync(filePath, "utf8");
    if (
      !/CREATE\s+VIEW\s+views\.[a-z_][a-z0-9_]*\s+WITH\s*\(\s*security_invoker\s*=\s*true\s*\)/i.test(
        sql,
      )
    ) {
      errors.push(
        relative(filePath) +
          ": views must use WITH (security_invoker = true) so underlying RLS applies.",
      );
    }
    if (/SECURITY\s+DEFINER/i.test(sql)) {
      errors.push(
        relative(filePath) + ": views must not use SECURITY DEFINER.",
      );
    }
  }
}

function assertReferenceHelperComments(sql, filePath) {
  const relativePath = relative(filePath);
  if (
    !/^seeds\/02_reference\/(?:01_base|02_mechanics|03_methods|04_abilities|04_items|05_pokemon|06_moves|07_pokedex|08_evolutions|09_availability|10_learnsets)\//.test(
      relativePath,
    )
  ) {
    return;
  }

  const lines = sql.split(/\r?\n/);
  for (let index = 0; index < lines.length; index += 1) {
    const line = lines[index];
    if (!/^\s*\(.+\)[,;]?\s*$/.test(line)) continue;

    let previousIndex = index - 1;
    while (previousIndex >= 0 && lines[previousIndex].trim() === "") {
      previousIndex -= 1;
    }

    const previousLine = previousIndex >= 0 ? lines[previousIndex] : "";
    if (!/^\s*--\s+\S+/.test(previousLine)) {
      errors.push(
        `${relativePath}: seed tuple row must have a preceding helper comment.`,
      );
    }
  }
}

function splitTupleValues(rawTuple) {
  const values = [];
  let token = "";
  let inString = false;

  for (let index = 0; index < rawTuple.length; index += 1) {
    const char = rawTuple[index];
    const next = rawTuple[index + 1];

    if (char === "'") {
      token += char;
      if (inString && next === "'") {
        token += next;
        index += 1;
      } else {
        inString = !inString;
      }
      continue;
    }

    if (char === "," && !inString) {
      values.push(parseValue(token.trim()));
      token = "";
      continue;
    }

    token += char;
  }

  if (token.trim().length > 0) {
    values.push(parseValue(token.trim()));
  }

  return values;
}

function parseValue(rawValue) {
  if (/^NULL$/i.test(rawValue)) return null;
  if (/^true$/i.test(rawValue)) return true;
  if (/^false$/i.test(rawValue)) return false;
  if (/^-?\d+$/.test(rawValue)) return Number(rawValue);
  if (rawValue.startsWith("'") && rawValue.endsWith("'")) {
    return rawValue.slice(1, -1).replace(/''/g, "'");
  }
  errors.push(`Unsupported SQL value token: ${rawValue}`);
  return rawValue;
}

function splitTuples(valuesBlock) {
  const tuples = [];
  let tuple = "";
  let depth = 0;
  let inString = false;

  for (let index = 0; index < valuesBlock.length; index += 1) {
    const char = valuesBlock[index];
    const next = valuesBlock[index + 1];

    if (char === "'") {
      if (depth > 0) tuple += char;
      if (inString && next === "'") {
        if (depth > 0) tuple += next;
        index += 1;
      } else {
        inString = !inString;
      }
      continue;
    }

    if (!inString && char === "(") {
      if (depth > 0) tuple += char;
      depth += 1;
      continue;
    }

    if (!inString && char === ")") {
      depth -= 1;
      if (depth === 0) {
        tuples.push(splitTupleValues(tuple));
        tuple = "";
      } else {
        tuple += char;
      }
      continue;
    }

    if (depth > 0) tuple += char;
  }

  if (depth !== 0 || inString) {
    errors.push("Unbalanced tuple or string while parsing seed VALUES block.");
  }

  return tuples;
}

function parseInserts(sql, filePath) {
  const inserts = [];
  const insertStartPattern =
    /INSERT\s+INTO\s+((?:reference|tracking|gameplay|planning)\.[a-z_][a-z0-9_]*)\s*\(([^)]*)\)\s*VALUES\s*/gi;

  for (const match of sql.matchAll(insertStartPattern)) {
    const table = match[1].toLowerCase();
    const columns = match[2]
      .split(",")
      .map((column) => column.trim().toLowerCase());
    let valuesEnd = match.index + match[0].length;
    let inString = false;

    while (valuesEnd < sql.length) {
      const char = sql[valuesEnd];
      const next = sql[valuesEnd + 1];

      if (char === "'") {
        if (inString && next === "'") {
          valuesEnd += 2;
          continue;
        }
        inString = !inString;
      }

      if (!inString && char === ";") break;
      valuesEnd += 1;
    }

    if (valuesEnd >= sql.length) {
      errors.push(
        `${relative(filePath)}: unterminated INSERT statement for ${table}.`,
      );
      continue;
    }

    const tuples = splitTuples(
      sql.slice(match.index + match[0].length, valuesEnd),
    );

    for (const tuple of tuples) {
      if (tuple.length !== columns.length) {
        errors.push(
          `${relative(filePath)}: ${table} tuple has ${tuple.length} values for ${columns.length} columns.`,
        );
        continue;
      }

      const row = {};
      columns.forEach((column, index) => {
        row[column] = tuple[index];
      });
      inserts.push({ table, row, filePath });
    }
  }

  return inserts;
}

function parseSchemaColumns() {
  const columnsByTable = new Map();
  if (!existsSync(schemaRoot)) return columnsByTable;

  const schemaFiles = walkFiles(schemaRoot).filter((filePath) =>
    filePath.endsWith(".sql"),
  );
  const tablePattern =
    /CREATE\s+TABLE\s+((?:public|reference|tracking|gameplay|planning)\.[a-z_][a-z0-9_]*)\s*\(([\s\S]*?)\n\);/gi;

  for (const filePath of schemaFiles) {
    const text = readFileSync(filePath, "utf8");
    for (const match of text.matchAll(tablePattern)) {
      const table = match[1].toLowerCase();
      const body = match[2];
      const columns = new Set();

      for (const line of body.split(/\r?\n/)) {
        const columnMatch = line.match(/^\s+([a-z_][a-z0-9_]*)\s+/i);
        if (!columnMatch) continue;
        const column = columnMatch[1].toLowerCase();
        if (column === "constraint") continue;
        columns.add(column);
      }

      columnsByTable.set(table, columns);
    }
  }

  return columnsByTable;
}

function relative(filePath) {
  return path.relative(projectRoot, filePath).replaceAll(path.sep, "/");
}

function addDuplicateErrors(table, rows, column) {
  const seen = new Map();

  for (const { row, filePath } of rows) {
    if (!(column in row)) continue;
    const value = row[column];
    const key = String(value);
    if (seen.has(key)) {
      errors.push(
        `${table}: duplicate ${column} ${key} in ${relative(filePath)}; first seen in ${relative(seen.get(key))}.`,
      );
    } else {
      seen.set(key, filePath);
    }
  }
}

function addCompositeDuplicateErrors(table, rows, label, keyFn) {
  const seen = new Map();
  for (const parsedRow of rows) {
    const key = keyFn(parsedRow.row);
    if (key === null) continue;

    if (seen.has(key)) {
      errors.push(
        `${table}: duplicate ${label} ${key} in ${relative(parsedRow.filePath)}; first seen in ${relative(seen.get(key))}.`,
      );
    } else {
      seen.set(key, parsedRow.filePath);
    }
  }
}

function assertExactSlugs(table, rows) {
  const expected = expectedSlugs[table];
  if (!expected) return;

  const actual = rows
    .filter(({ row }) => "slug" in row)
    .sort(
      (a, b) =>
        Number(a.row.id ?? a.row.sort_order) -
        Number(b.row.id ?? b.row.sort_order),
    )
    .map(({ row }) => row.slug);

  if (actual.join("|") !== expected.join("|")) {
    errors.push(
      `${table}: expected slugs [${expected.join(", ")}], got [${actual.join(", ")}].`,
    );
  }
}

function assertSlugFormat(table, rows) {
  const pattern = snakeSlugTables.has(table)
    ? /^[a-z0-9]+(?:_[a-z0-9]+)*$/
    : /^[a-z0-9]+(?:-[a-z0-9]+)*$/;

  for (const { row, filePath } of rows) {
    if (!("slug" in row)) continue;
    if (!pattern.test(row.slug)) {
      errors.push(
        `${relative(filePath)}: ${table} slug "${row.slug}" does not match ${pattern}.`,
      );
    }
  }
}

function assertContiguousSortOrder(table, rows) {
  if (!rows.every(({ row }) => "sort_order" in row)) return;

  const orders = rows
    .map(({ row }) => Number(row.sort_order))
    .sort((a, b) => a - b);
  for (let index = 0; index < orders.length; index += 1) {
    if (orders[index] !== index + 1) {
      errors.push(
        `${table}: sort_order must be contiguous from 1; got [${orders.join(", ")}].`,
      );
      return;
    }
  }
}

function assertScopedContiguousSortOrder(table, rows, scopeLabel, scopeKeyFn) {
  const rowsByScope = new Map();

  for (const parsedRow of rows) {
    if (!("sort_order" in parsedRow.row)) continue;

    const scopeKey = scopeKeyFn(parsedRow.row);
    if (scopeKey === null) continue;
    if (!rowsByScope.has(scopeKey)) rowsByScope.set(scopeKey, []);
    rowsByScope.get(scopeKey).push(parsedRow.row);
  }

  for (const [scopeKey, scopedRows] of rowsByScope.entries()) {
    const orders = scopedRows
      .map((row) => Number(row.sort_order))
      .sort((a, b) => a - b);
    for (let index = 0; index < orders.length; index += 1) {
      if (orders[index] !== index + 1) {
        errors.push(
          `${table}: ${scopeLabel} ${scopeKey} sort_order must be contiguous from 1; got [${orders.join(", ")}].`,
        );
        break;
      }
    }
  }
}

function assertProductDescriptions(table, rows) {
  if (!productDescriptionTables.has(table)) return;

  for (const { row, filePath } of rows) {
    if (!("description" in row)) {
      errors.push(
        `${relative(filePath)}: ${table}.description is required for product-facing lookup rows.`,
      );
      continue;
    }

    if (
      typeof row.description !== "string" ||
      row.description.trim().length === 0
    ) {
      errors.push(
        `${relative(filePath)}: ${table}.description must be non-empty.`,
      );
    }
  }
}

function assertPositiveIntegers(table, rows) {
  for (const { row, filePath } of rows) {
    for (const column of ["id", "sort_order"]) {
      if (!(column in row)) continue;
      if (!Number.isInteger(row[column]) || row[column] <= 0) {
        errors.push(
          `${relative(filePath)}: ${table}.${column} must be a positive integer.`,
        );
      }
    }
  }
}

function assertGeneratedIdsAreNotSeeded(table, rows) {
  if (!generatedIdTables.has(table)) return;

  for (const { row, filePath } of rows) {
    if ("id" in row) {
      errors.push(
        `${relative(filePath)}: ${table}.id is generated by the database and must not be seeded manually.`,
      );
    }
  }
}

function assertGenerationReferences(tableRows) {
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  for (const table of [
    "reference.types",
    "reference.natures",
    "reference.egg_groups",
  ]) {
    for (const { row, filePath } of tableRows.get(table) ?? []) {
      if (!generationIds.has(row.introduced_generation_id)) {
        errors.push(
          `${relative(filePath)}: ${table}.introduced_generation_id ${row.introduced_generation_id} is not seeded.`,
        );
      }
    }
  }
}

function assertNatureRows(rows) {
  for (const { row, filePath } of rows) {
    const inc = row.increased_stat;
    const dec = row.decreased_stat;
    if ((inc === null) !== (dec === null)) {
      errors.push(
        `${relative(filePath)}: nature ${row.slug} must set both stat modifiers or neither.`,
      );
    }
    if (
      inc !== null &&
      (!allowedStats.has(inc) || !allowedStats.has(dec) || inc === dec)
    ) {
      errors.push(
        `${relative(filePath)}: nature ${row.slug} has invalid stat modifier pair ${inc}/${dec}.`,
      );
    }
  }
}

function assertAbilityRows(tableRows) {
  const rows = tableRows.get("reference.abilities") ?? [];
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const rowsById = mapRowsByColumn(rows, "id");

  for (const { row, filePath } of rows) {
    if (!generationIds.has(row.introduced_generation_id)) {
      errors.push(
        `${relative(filePath)}: ability ${row.slug} references unseeded introduced_generation_id ${row.introduced_generation_id}.`,
      );
    }

    if (row.external_id !== row.id) {
      errors.push(
        `${relative(filePath)}: ability ${row.slug} external_id ${row.external_id} must match stable id ${row.id}.`,
      );
    }

    if (row.sort_order !== row.id) {
      errors.push(
        `${relative(filePath)}: ability ${row.slug} sort_order ${row.sort_order} must match stable id ${row.id}.`,
      );
    }

    if (deferredNonPlaythroughAbilitySlugs.has(row.slug)) {
      errors.push(
        `${relative(filePath)}: deferred non-playthrough ability ${row.slug} must not be seeded in mainline scope.`,
      );
    }
  }

  for (const {
    generationId,
    firstId,
    lastId,
  } of expectedAbilityGenerationRanges) {
    for (let id = firstId; id <= lastId; id += 1) {
      const row = rowsById.get(id);
      if (!row) {
        errors.push(
          `reference.abilities: missing expected ability id ${id} for generation ${generationId}.`,
        );
        continue;
      }

      if (row.introduced_generation_id !== generationId) {
        errors.push(
          `reference.abilities: ability id ${id} expected generation ${generationId}, got ${row.introduced_generation_id}.`,
        );
      }
    }
  }

  if (rows.length !== 310) {
    errors.push(
      `reference.abilities: expected 310 mainline ability identities, got ${rows.length}.`,
    );
  }
}

function assertAbilityAttributeRows(tableRows) {
  const rows = tableRows.get("reference.ability_attributes") ?? [];
  const abilityRows = tableRows.get("reference.abilities") ?? [];
  const versionGroupRows = tableRows.get("reference.version_groups") ?? [];
  const abilitiesById = mapRowsByColumn(abilityRows, "id");
  const versionGroupsById = mapRowsByColumn(versionGroupRows, "id");
  const rowsByAbilityId = new Map();
  const abilityAttributeKeys = new Set();

  addCompositeDuplicateErrors(
    "reference.ability_attributes",
    rows,
    "ability_id/version_group_start_id",
    (row) => `${row.ability_id}/${row.version_group_start_id}`,
  );

  for (const { row, filePath } of rows) {
    const ability = abilitiesById.get(row.ability_id);
    const versionGroup = versionGroupsById.get(row.version_group_start_id);

    abilityAttributeKeys.add(`${row.ability_id}:${row.version_group_start_id}`);

    if (!ability) {
      errors.push(
        `${relative(filePath)}: ability attribute references unseeded ability_id ${row.ability_id}.`,
      );
    }

    if (!versionGroup) {
      errors.push(
        `${relative(filePath)}: ability attribute references unseeded version_group_start_id ${row.version_group_start_id}.`,
      );
    }

    if (
      ability &&
      versionGroup &&
      versionGroup.generation_id < ability.introduced_generation_id
    ) {
      errors.push(
        `${relative(filePath)}: ability ${ability.slug} has an attribute row before introduced generation ${ability.introduced_generation_id}.`,
      );
    }

    if (!("effect_summary" in row)) {
      errors.push(
        `${relative(filePath)}: ability attribute row must include effect_summary.`,
      );
    }

    if (
      row.effect_summary === null ||
      String(row.effect_summary).trim().length === 0
    ) {
      errors.push(
        `${relative(filePath)}: ability attribute effect_summary must be non-empty when provided.`,
      );
    }

    if (!rowsByAbilityId.has(row.ability_id))
      rowsByAbilityId.set(row.ability_id, []);
    rowsByAbilityId.get(row.ability_id).push(row);
  }

  for (const { row: ability, filePath } of abilityRows) {
    const abilityAttributeRows = rowsByAbilityId.get(ability.id) ?? [];
    if (abilityAttributeRows.length === 0) {
      errors.push(
        `${relative(filePath)}: ability ${ability.slug} must have at least one ability attribute row.`,
      );
    }
  }

  for (const expectedKey of expectedAbilityAttributeChangeKeys) {
    if (!abilityAttributeKeys.has(expectedKey)) {
      errors.push(
        `reference.ability_attributes: missing expected sourced change-point row ${expectedKey.replace(":", "/")}.`,
      );
    }
  }
}

function assertBooleanFlagSet(tableName, rows, column, expectedSlugs) {
  const actualSlugs = new Set(
    rows.filter(({ row }) => row[column] === true).map(({ row }) => row.slug),
  );

  for (const expectedSlug of expectedSlugs) {
    if (!actualSlugs.has(expectedSlug)) {
      errors.push(
        `${tableName}: expected ${expectedSlug} to have ${column}=true.`,
      );
    }
  }

  for (const actualSlug of actualSlugs) {
    if (!expectedSlugs.has(actualSlug)) {
      errors.push(`${tableName}: unexpected ${column}=true for ${actualSlug}.`);
    }
  }
}

function normalizeDisplayTextForSourceFingerprint(value) {
  if (typeof value !== "string") {
    return value;
  }

  return value.replaceAll("Pokémon", "Pokemon");
}

function sourceFingerprintString(value) {
  return String(normalizeDisplayTextForSourceFingerprint(value ?? ""));
}

function sourceVerifiedRowsetFingerprint(rows, columns, compareRows) {
  return createHash("sha256")
    .update(
      rows
        .map(({ row }) => row)
        .toSorted(compareRows)
        .map((row) =>
          JSON.stringify(
            columns.map((column) =>
              normalizeDisplayTextForSourceFingerprint(row[column] ?? null),
            ),
          ),
        )
        .join("|"),
    )
    .digest("hex");
}

function assertSourceVerifiedRowsetFingerprint(
  tableName,
  rows,
  columns,
  compareRows,
  expectedFingerprint,
) {
  const actualCount = rows.length;
  const actualFingerprint = sourceVerifiedRowsetFingerprint(
    rows,
    columns,
    compareRows,
  );

  if (
    actualCount !== expectedFingerprint.count ||
    actualFingerprint !== expectedFingerprint.sha256
  ) {
    errors.push(
      tableName +
        ": source-verified rowset fingerprint expected " +
        expectedFingerprint.count +
        "/" +
        expectedFingerprint.sha256 +
        ", got " +
        actualCount +
        "/" +
        actualFingerprint +
        ".",
    );
  }
}

function compareRowsByColumns(columns) {
  return (left, right) => {
    for (const column of columns) {
      const leftValue = left[column] ?? "";
      const rightValue = right[column] ?? "";
      if (
        typeof leftValue === "number" &&
        typeof rightValue === "number" &&
        leftValue !== rightValue
      ) {
        return leftValue - rightValue;
      }
      const comparison = String(leftValue).localeCompare(String(rightValue));
      if (comparison !== 0) return comparison;
    }
    return 0;
  };
}

function assertFoundationRowsetFingerprints(tableRows) {
  const specs = [
    {
      tableName: "reference.generations",
      columns: ["id", "slug", "name", "start_year", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 9,
        sha256:
          "20f24681e258e0c26430703695dcc06922187f058146e15feffaeb9cde7f3b3a",
      },
    },
    {
      tableName: "reference.regions",
      columns: ["id", "slug", "name", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 10,
        sha256:
          "462097a81cf0a325efc6962554a1bb564dd2849bc6797563f93ef77a64ebd57f",
      },
    },
    {
      tableName: "reference.product_families",
      columns: [
        "id",
        "slug",
        "name",
        "description",
        "support_status",
        "sort_order",
      ],
      sortColumns: ["id"],
      expected: {
        count: 7,
        sha256:
          "c05a2003253382d3d483c12d70b0a6c966cbe01705a03aedbcb7c0c73fa55f06",
      },
    },
    {
      tableName: "reference.game_types",
      columns: ["id", "slug", "name", "description", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 4,
        sha256:
          "8aeddf9c8aabddde9da60dbb385e29d3301a9e079a9dda82b401213aba68e79f",
      },
    },
    {
      tableName: "reference.version_groups",
      columns: [
        "id",
        "slug",
        "name",
        "generation_id",
        "parent_version_group_id",
        "sort_order",
      ],
      sortColumns: ["id"],
      expected: {
        count: 27,
        sha256:
          "ebc8ea8da7f96d02a1e99f1620ec79e060eee9062cc9af1be708464655079438",
      },
    },
    {
      tableName: "reference.platforms",
      columns: [
        "id",
        "slug",
        "name",
        "manufacturer",
        "platform_kind",
        "sort_order",
      ],
      sortColumns: ["id"],
      expected: {
        count: 7,
        sha256:
          "035ffbb33ef22f682a0039f048bb8a0af2e74d93af2a896c5e904497528e5f8e",
      },
    },
    {
      tableName: "reference.games",
      columns: [
        "id",
        "slug",
        "name",
        "product_family_id",
        "generation_id",
        "region_id",
        "version_group_id",
        "game_type_id",
        "release_year",
        "sort_order",
      ],
      sortColumns: ["id"],
      expected: {
        count: 38,
        sha256:
          "86fca0b1937f08ed4dc5eac726f65bdd7cfd29ea07ce9bc02a805712a2f8fb59",
      },
    },
    {
      tableName: "reference.game_platforms",
      columns: ["game_id", "platform_id", "release_kind", "sort_order"],
      sortColumns: ["game_id", "sort_order", "platform_id"],
      expected: {
        count: 42,
        sha256:
          "cb49f775ccaa150405aca2c756caea704a3c05ed8ecb56fe41d0c9a221b3a55b",
      },
    },
    {
      tableName: "reference.game_content_scopes",
      columns: ["game_id", "version_group_id", "is_base_scope", "sort_order"],
      sortColumns: ["game_id", "sort_order", "version_group_id"],
      expected: {
        count: 47,
        sha256:
          "ad24755eb14b3de03344a2369061edcba605813e1c707fd0b08b9d19d5e7bc0c",
      },
    },
    {
      tableName: "reference.content_scope_dependencies",
      columns: [
        "version_group_id",
        "required_version_group_id",
        "dependency_kind",
        "sort_order",
      ],
      sortColumns: [
        "version_group_id",
        "sort_order",
        "required_version_group_id",
      ],
      expected: {
        count: 2,
        sha256:
          "e4a759a56d048bb137da661819f63208d6176ce2aa37cc698ae523d7b1ab97e4",
      },
    },
  ];

  for (const spec of specs) {
    assertSourceVerifiedRowsetFingerprint(
      spec.tableName,
      tableRows.get(spec.tableName) ?? [],
      spec.columns,
      compareRowsByColumns(spec.sortColumns),
      spec.expected,
    );
  }
}

function assertCoreMechanicsRowsetFingerprints(tableRows) {
  const specs = [
    {
      tableName: "reference.types",
      columns: ["id", "slug", "name", "introduced_generation_id", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 18,
        sha256:
          "1607ec26a0b325ad8128f5b0ef4a9c7de6102aa3f9a481e31789a7a4d022f923",
      },
    },
    {
      tableName: "reference.type_matchups",
      columns: [
        "attacking_type_id",
        "defending_type_id",
        "generation_start_id",
        "multiplier_numerator",
        "multiplier_denominator",
      ],
      sortColumns: [
        "attacking_type_id",
        "defending_type_id",
        "generation_start_id",
      ],
      expected: {
        count: 129,
        sha256:
          "9d4991a118d9a85e15480e4df29434ba5319a1fbd4b6a51661664c66b32baff6",
      },
    },
    {
      tableName: "reference.natures",
      columns: [
        "id",
        "slug",
        "name",
        "introduced_generation_id",
        "increased_stat",
        "decreased_stat",
        "sort_order",
      ],
      sortColumns: ["id"],
      expected: {
        count: 25,
        sha256:
          "30898b897014605cc25f2644e291d45c4545a984028323dc90e4ade76a7f092f",
      },
    },
    {
      tableName: "reference.egg_groups",
      columns: ["id", "slug", "name", "introduced_generation_id", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 15,
        sha256:
          "a2fecde927363f71bce136a32cca84c04eaf20cf11609d88e55f5f85b74378fa",
      },
    },
    {
      tableName: "reference.item_categories",
      columns: ["id", "slug", "name", "description", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 18,
        sha256:
          "3fa5e4c6b2925cc286ea5ac2a268b46f27aee8d9653ecead717601c13543333e",
      },
    },
    {
      tableName: "reference.move_kinds",
      columns: ["id", "slug", "name", "description", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 4,
        sha256:
          "c08b2324a213cd4e502bc190677e8788954b033ec8fe1c5ec364780fd4344bce",
      },
    },
    {
      tableName: "reference.evolution_methods",
      columns: ["id", "slug", "name", "description", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 9,
        sha256:
          "64d19551889afeb585f7b1bba942ccb29be0ca95408e825276acf0ee887a8f14",
      },
    },
    {
      tableName: "reference.availability_methods",
      columns: ["id", "slug", "name", "description", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 13,
        sha256:
          "4a89fe0a2b460ddf72458a45990c6e6d340476d3186fbd8be74c0f504ca876d7",
      },
    },
    {
      tableName: "reference.learn_methods",
      columns: ["id", "slug", "name", "description", "sort_order"],
      sortColumns: ["id"],
      expected: {
        count: 12,
        sha256:
          "81fe1e59ce9f491563157141fd60b5868ef006049be294236b968391d57fc443",
      },
    },
    {
      tableName: "reference.abilities",
      columns: [
        "id",
        "slug",
        "name",
        "external_id",
        "introduced_generation_id",
        "sort_order",
      ],
      sortColumns: ["id"],
      expected: {
        count: 310,
        sha256:
          "975fad5b80444c5e1f25e936a8425451c8e624e7eb48e491a91a6e3d4d0a936a",
      },
    },
    {
      tableName: "reference.ability_attributes",
      columns: ["ability_id", "version_group_start_id", "effect_summary"],
      sortColumns: ["ability_id", "version_group_start_id"],
      expected: {
        count: 382,
        sha256:
          "dc0c497d12e317e930f2752bfe58d1014327e34f66d231ad9dcd88c804e87fa5",
      },
    },
    {
      tableName: "reference.moves",
      columns: [
        "id",
        "slug",
        "name",
        "move_kind_id",
        "external_id",
        "introduced_generation_id",
        "sort_order",
      ],
      sortColumns: ["id"],
      expected: {
        count: 935,
        sha256:
          "000ab589d836d29923352efd283e8a75183671709ad16bcda43dd40fb73f2dec",
      },
    },
    {
      tableName: "reference.move_attributes",
      columns: [
        "move_id",
        "generation_start_id",
        "type_id",
        "power",
        "accuracy",
        "pp",
        "priority",
        "damage_class",
        "effect_summary",
        "effect_detail",
      ],
      sortColumns: ["move_id", "generation_start_id"],
      expected: {
        count: 1161,
        sha256:
          "420e77d8b39ee7477c61614e7a5b852383c7dad5184accfb974433f22b5fe1a1",
      },
    },
  ];

  for (const { tableName, columns, sortColumns, expected } of specs) {
    assertSourceVerifiedRowsetFingerprint(
      tableName,
      tableRows.get(tableName) ?? [],
      columns,
      compareRowsByColumns(sortColumns),
      expected,
    );
  }
}

function assertPokemonIdentityRows(tableRows) {
  const familyRows = tableRows.get("reference.evolution_families") ?? [];
  const speciesRows = tableRows.get("reference.pokemon_species") ?? [];
  const formRows = tableRows.get("reference.pokemon_forms") ?? [];
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const familiesById = mapRowsByColumn(familyRows, "id");
  const speciesById = mapRowsByColumn(speciesRows, "id");
  const formsBySpeciesId = new Map();
  const formRowsById = mapRowsByColumn(formRows, "id");

  assertSourceVerifiedRowsetFingerprint(
    "reference.evolution_families",
    familyRows,
    ["id", "slug", "name", "sort_order"],
    (a, b) => a.id - b.id,
    {
      count: 541,
      sha256:
        "11616f22cf0dc9dc294c5cce0818bf6d6774451ca50f61e0111153fca630ebf7",
    },
  );
  assertSourceVerifiedRowsetFingerprint(
    "reference.pokemon_species",
    speciesRows,
    [
      "id",
      "national_number",
      "slug",
      "name",
      "introduced_generation_id",
      "evolution_family_id",
      "color",
      "is_baby",
      "is_legendary",
      "is_mythical",
    ],
    (a, b) => a.id - b.id,
    {
      count: 1025,
      sha256:
        "b607d49a758412a7b1bc24b1ec14b78d92eb50e4001edf76e3f14ad012f26c66",
    },
  );
  assertSourceVerifiedRowsetFingerprint(
    "reference.pokemon_forms",
    formRows,
    [
      "id",
      "species_id",
      "slug",
      "name",
      "introduced_generation_id",
      "is_default",
      "form_order",
      "height_decimeters",
      "weight_hectograms",
      "sprite_slug",
    ],
    (a, b) =>
      a.species_id - b.species_id || a.form_order - b.form_order || a.id - b.id,
    {
      count: 1185,
      sha256:
        "153067c41a9b5ce18402444063b5662d22ae88e1f3ce1391db28fd30c6f3032d",
    },
  );

  if (familyRows.length !== 541) {
    errors.push(
      `reference.evolution_families: expected 541 curated evolution families, got ${familyRows.length}.`,
    );
  }

  if (speciesRows.length !== 1025) {
    errors.push(
      `reference.pokemon_species: expected 1025 National Dex species, got ${speciesRows.length}.`,
    );
  }

  const defaultFormRows = formRows.filter(({ row }) => row.is_default === true);
  const nonDefaultFormRows = formRows.filter(
    ({ row }) => row.is_default === false,
  );
  const expectedNonDefaultFormSlugSet = new Set(expectedNonDefaultFormSlugs);

  if (defaultFormRows.length !== 1025) {
    errors.push(
      `reference.pokemon_forms: expected 1025 default forms, got ${defaultFormRows.length}.`,
    );
  }

  if (nonDefaultFormRows.length !== expectedNonDefaultFormSlugs.length) {
    errors.push(
      `reference.pokemon_forms: expected ${expectedNonDefaultFormSlugs.length} curated non-default forms, got ${nonDefaultFormRows.length}.`,
    );
  }

  for (let id = 1; id <= 1025; id += 1) {
    const species = speciesById.get(id);
    if (!species) {
      errors.push(
        `reference.pokemon_species: missing National Dex species id ${id}.`,
      );
      continue;
    }

    if (species.national_number !== id) {
      errors.push(
        `reference.pokemon_species: species id ${id} must have national_number ${id}, got ${species.national_number}.`,
      );
    }
  }

  for (const {
    generationId,
    firstId,
    lastId,
  } of expectedPokemonGenerationRanges) {
    for (let id = firstId; id <= lastId; id += 1) {
      const species = speciesById.get(id);
      if (!species) continue;

      if (species.introduced_generation_id !== generationId) {
        errors.push(
          `reference.pokemon_species: species ${species.slug} expected generation ${generationId}, got ${species.introduced_generation_id}.`,
        );
      }
    }
  }

  for (const { row, filePath } of familyRows) {
    const anchorSpecies = speciesById.get(row.id);
    if (!anchorSpecies) {
      errors.push(
        `${relative(filePath)}: evolution family ${row.slug} id ${row.id} does not anchor to a seeded species.`,
      );
      continue;
    }

    const expectedSlug = `${anchorSpecies.slug}-family`;
    const expectedName = `${anchorSpecies.name} Family`;
    if (row.slug !== expectedSlug) {
      errors.push(
        `${relative(filePath)}: evolution family id ${row.id} expected slug ${expectedSlug}, got ${row.slug}.`,
      );
    }
    if (row.name !== expectedName) {
      errors.push(
        `${relative(filePath)}: evolution family id ${row.id} expected name ${expectedName}, got ${row.name}.`,
      );
    }
  }

  const memberIdsByFamilyId = new Map();
  for (const { row, filePath } of speciesRows) {
    if (!generationIds.has(row.introduced_generation_id)) {
      errors.push(
        `${relative(filePath)}: species ${row.slug} references unseeded introduced_generation_id ${row.introduced_generation_id}.`,
      );
    }

    if (!familiesById.has(row.evolution_family_id)) {
      errors.push(
        `${relative(filePath)}: species ${row.slug} references unseeded evolution_family_id ${row.evolution_family_id}.`,
      );
    }

    if (!memberIdsByFamilyId.has(row.evolution_family_id))
      memberIdsByFamilyId.set(row.evolution_family_id, []);
    memberIdsByFamilyId.get(row.evolution_family_id).push(row.id);
  }

  for (const { row, filePath } of familyRows) {
    const memberIds = memberIdsByFamilyId.get(row.id) ?? [];
    if (memberIds.length === 0) {
      errors.push(
        `${relative(filePath)}: evolution family ${row.slug} is not referenced by any species.`,
      );
      continue;
    }

    const firstNationalDexId = Math.min(...memberIds);
    if (row.id !== firstNationalDexId) {
      errors.push(
        `${relative(filePath)}: evolution family ${row.slug} id must match first National Dex member ${firstNationalDexId}, got ${row.id}.`,
      );
    }
  }

  for (const { row, filePath } of defaultFormRows) {
    const species = speciesById.get(row.species_id);
    if (!species) {
      errors.push(
        `${relative(filePath)}: form ${row.slug} references unseeded species_id ${row.species_id}.`,
      );
      continue;
    }

    if (!generationIds.has(row.introduced_generation_id)) {
      errors.push(
        `${relative(filePath)}: form ${row.slug} references unseeded introduced_generation_id ${row.introduced_generation_id}.`,
      );
    }

    if (!formsBySpeciesId.has(row.species_id))
      formsBySpeciesId.set(row.species_id, []);
    formsBySpeciesId.get(row.species_id).push(row);

    if (row.id !== row.species_id * 100) {
      errors.push(
        `${relative(filePath)}: default form ${row.slug} id ${row.id} must equal species_id * 100.`,
      );
    }
    if (row.slug !== species.slug) {
      errors.push(
        `${relative(filePath)}: default form for species ${species.slug} expected slug ${species.slug}, got ${row.slug}.`,
      );
    }
    if (row.name !== species.name) {
      errors.push(
        `${relative(filePath)}: default form for species ${species.slug} expected name ${species.name}, got ${row.name}.`,
      );
    }
    if (row.introduced_generation_id !== species.introduced_generation_id) {
      errors.push(
        `${relative(filePath)}: default form ${row.slug} generation must match species generation ${species.introduced_generation_id}.`,
      );
    }
    if (row.is_default !== true) {
      errors.push(
        `${relative(filePath)}: form ${row.slug} must be default in default-form seed batch.`,
      );
    }
    if (row.form_order !== 1) {
      errors.push(
        `${relative(filePath)}: default form ${row.slug} must have form_order 1.`,
      );
    }
    if (row.sprite_slug !== row.slug) {
      errors.push(
        `${relative(filePath)}: default form ${row.slug} expected sprite_slug ${row.slug}, got ${row.sprite_slug}.`,
      );
    }
  }

  for (let speciesId = 1; speciesId <= 1025; speciesId += 1) {
    const forms = (formsBySpeciesId.get(speciesId) ?? []).filter(
      (row) => row.is_default === true,
    );
    if (forms.length !== 1) {
      errors.push(
        `reference.pokemon_forms: expected exactly one default form for species_id ${speciesId}, got ${forms.length}.`,
      );
    }
  }

  const actualNonDefaultFormSlugs = nonDefaultFormRows.map(
    ({ row }) => row.slug,
  );
  addCompositeDuplicateErrors(
    "reference.pokemon_forms",
    formRows,
    "species_id/form_order",
    (row) => `${row.species_id}/${row.form_order}`,
  );

  for (const expectedSlug of expectedNonDefaultFormSlugs) {
    if (!actualNonDefaultFormSlugs.includes(expectedSlug)) {
      errors.push(
        `reference.pokemon_forms: missing expected curated non-default form ${expectedSlug}.`,
      );
    }
  }

  for (const { row, filePath } of nonDefaultFormRows) {
    const species = speciesById.get(row.species_id);
    if (!species) {
      errors.push(
        `${relative(filePath)}: non-default form ${row.slug} references unseeded species_id ${row.species_id}.`,
      );
      continue;
    }

    if (!expectedNonDefaultFormSlugSet.has(row.slug)) {
      errors.push(
        `${relative(filePath)}: unexpected non-default form ${row.slug}; add it to the curated allowlist or remove it.`,
      );
    }
    if (!generationIds.has(row.introduced_generation_id)) {
      errors.push(
        `${relative(filePath)}: non-default form ${row.slug} references unseeded introduced_generation_id ${row.introduced_generation_id}.`,
      );
    }
    if (row.introduced_generation_id < species.introduced_generation_id) {
      errors.push(
        `${relative(filePath)}: non-default form ${row.slug} cannot be introduced before species ${species.slug}.`,
      );
    }
    if (row.form_order <= 1) {
      errors.push(
        `${relative(filePath)}: non-default form ${row.slug} must have form_order greater than 1.`,
      );
    }
    if (row.sprite_slug === null) {
      errors.push(
        `${relative(filePath)}: non-default form ${row.slug} must provide a sprite_slug or explicit source key.`,
      );
    }
  }

  for (const excludedSlug of excludedNonDefaultFormSlugs) {
    if (actualNonDefaultFormSlugs.includes(excludedSlug)) {
      errors.push(
        `reference.pokemon_forms: excluded battle-only/cosmetic form ${excludedSlug} must not be seeded in team-selectable scope.`,
      );
    }
  }

  assertBooleanFlagSet(
    "reference.pokemon_species",
    speciesRows,
    "is_baby",
    expectedBabyPokemonSlugs,
  );
  assertBooleanFlagSet(
    "reference.pokemon_species",
    speciesRows,
    "is_legendary",
    expectedLegendaryPokemonSlugs,
  );
  assertBooleanFlagSet(
    "reference.pokemon_species",
    speciesRows,
    "is_mythical",
    expectedMythicalPokemonSlugs,
  );

  const expectedFamilyMemberships = {
    bulbasaur: ["bulbasaur", "ivysaur", "venusaur"],
    pikachu: ["pikachu", "raichu", "pichu"],
    marill: ["marill", "azumarill", "azurill"],
    hitmonlee: ["hitmonlee", "hitmonchan", "tyrogue", "hitmontop"],
    eevee: [
      "eevee",
      "vaporeon",
      "jolteon",
      "flareon",
      "espeon",
      "umbreon",
      "leafeon",
      "glaceon",
      "sylveon",
    ],
    farfetchd: ["farfetchd", "sirfetchd"],
    yamask: ["yamask", "cofagrigus", "runerigus"],
    sneasel: ["sneasel", "weavile", "sneasler"],
    applin: ["applin", "flapple", "appletun", "dipplin", "hydrapple"],
    mankey: ["mankey", "primeape", "annihilape"],
    duraludon: ["duraludon", "archaludon"],
    meltan: ["meltan", "melmetal"],
  };

  for (const [familyAnchorSlug, expectedMemberSlugs] of Object.entries(
    expectedFamilyMemberships,
  )) {
    const familyAnchor = [...speciesById.values()].find(
      (row) => row.slug === familyAnchorSlug,
    );
    if (!familyAnchor) {
      errors.push(
        `reference.pokemon_species: missing family anchor ${familyAnchorSlug}.`,
      );
      continue;
    }

    for (const memberSlug of expectedMemberSlugs) {
      const member = [...speciesById.values()].find(
        (row) => row.slug === memberSlug,
      );
      if (!member) {
        errors.push(
          `reference.pokemon_species: missing expected family member ${memberSlug}.`,
        );
        continue;
      }

      if (member.evolution_family_id !== familyAnchor.id) {
        errors.push(
          `reference.pokemon_species: expected ${memberSlug} to belong to ${familyAnchorSlug} family ${familyAnchor.id}, got ${member.evolution_family_id}.`,
        );
      }
    }
  }

  const phione = [...speciesById.values()].find((row) => row.slug === "phione");
  const manaphy = [...speciesById.values()].find(
    (row) => row.slug === "manaphy",
  );
  if (
    phione &&
    manaphy &&
    phione.evolution_family_id === manaphy.evolution_family_id
  ) {
    errors.push(
      "reference.pokemon_species: Phione and Manaphy must remain separate evolution families; breeding-only relationships are not evolution lines.",
    );
  }

  if (
    !formRowsById.has(2501) ||
    formRowsById.get(2501).slug !== "pikachu-partner"
  ) {
    errors.push(
      "reference.pokemon_forms: expected partner Pikachu form id 2501.",
    );
  }
  if (
    !formRowsById.has(13301) ||
    formRowsById.get(13301).slug !== "eevee-partner"
  ) {
    errors.push(
      "reference.pokemon_forms: expected partner Eevee form id 13301.",
    );
  }
  if (
    !formRowsById.has(48301) ||
    formRowsById.get(48301).slug !== "dialga-origin"
  ) {
    errors.push(
      "reference.pokemon_forms: expected Dialga Origin Forme id 48301.",
    );
  }
  if (
    !formRowsById.has(48401) ||
    formRowsById.get(48401).slug !== "palkia-origin"
  ) {
    errors.push(
      "reference.pokemon_forms: expected Palkia Origin Forme id 48401.",
    );
  }
}

function assertItemRows(tableRows) {
  const itemRows = tableRows.get("reference.items") ?? [];
  const membershipRows =
    tableRows.get("reference.item_category_memberships") ?? [];
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const itemCategoriesById = mapRowsByColumn(
    tableRows.get("reference.item_categories") ?? [],
    "id",
  );
  const itemsById = mapRowsByColumn(itemRows, "id");
  const itemsBySlug = mapRowsByColumn(itemRows, "slug");
  const actualSlugs = itemRows
    .sort((a, b) => a.row.sort_order - b.row.sort_order)
    .map(({ row }) => row.slug);

  assertSourceVerifiedRowsetFingerprint(
    "reference.items",
    itemRows,
    [
      "id",
      "slug",
      "name",
      "primary_category_id",
      "external_id",
      "introduced_generation_id",
      "sort_order",
    ],
    compareRowsByColumns(["sort_order", "id"]),
    {
      count: 502,
      sha256:
        "03ce42c29bcfcf5a24e5ffbe3403ce8e0284d793da86fa659b86a62d0daecbd5",
    },
  );
  assertSourceVerifiedRowsetFingerprint(
    "reference.item_category_memberships",
    membershipRows,
    ["item_id", "category_id"],
    compareRowsByColumns(["item_id", "category_id"]),
    {
      count: 1012,
      sha256:
        "d8a4eec6d99a1186f32d638acda6e3168576710be7459add295ac8a15e8d7bc9",
    },
  );

  if (actualSlugs.join("|") !== expectedItemSlugs.join("|")) {
    errors.push(
      `reference.items: expected reduced mechanics item slugs [${expectedItemSlugs.join(", ")}], got [${actualSlugs.join(", ")}].`,
    );
  }

  for (const slug of excludedPokeBallCatalogSlugs) {
    if (itemsBySlug.has(slug)) {
      errors.push(
        `reference.items: excluded Poke Ball catalog item ${slug} must not be seeded; it is not a player-registered caught-ball biography item.`,
      );
    }
  }

  if (expectedPokeBallItemSlugs.length !== 36) {
    errors.push(
      `reference.items: expected 36 supported Poke Ball catalog slugs after excluding Park Ball and Strange Ball, got ${expectedPokeBallItemSlugs.length}.`,
    );
  }
  for (const { row, filePath } of itemRows) {
    if (!generationIds.has(row.introduced_generation_id)) {
      errors.push(
        `${relative(filePath)}: item ${row.slug} references unseeded introduced_generation_id ${row.introduced_generation_id}.`,
      );
    }
    if (row.primary_category_id === null) {
      errors.push(
        `${relative(filePath)}: item ${row.slug} must have a primary_category_id.`,
      );
    } else if (!itemCategoriesById.has(row.primary_category_id)) {
      errors.push(
        `${relative(filePath)}: item ${row.slug} references unseeded primary_category_id ${row.primary_category_id}.`,
      );
    }
  }

  for (const { row, filePath } of membershipRows) {
    if (!itemsById.has(row.item_id)) {
      errors.push(
        `${relative(filePath)}: item membership references unseeded item_id ${row.item_id}.`,
      );
    }
    if (!itemCategoriesById.has(row.category_id)) {
      errors.push(
        `${relative(filePath)}: item membership references unseeded category_id ${row.category_id}.`,
      );
    }
  }

  for (const slug of expectedFormChangeItemSlugs) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;

    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    const expectedCategoryIds = slug === "teal-mask" ? [5] : [2, 5];
    for (const expectedCategoryId of expectedCategoryIds) {
      if (!categoryIds.has(expectedCategoryId)) {
        errors.push(
          `reference.item_category_memberships: item ${slug} must belong to expected form item categories ${expectedCategoryIds.join("/")}.`,
        );
      }
    }
    if (slug.endsWith("-z") && !categoryIds.has(8)) {
      errors.push(
        `reference.item_category_memberships: Z-Crystal item ${slug} must belong to z_crystal category.`,
      );
    }
  }

  for (const slug of expectedEvolutionItemSlugs) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;

    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    if (!categoryIds.has(3)) {
      errors.push(
        `reference.item_category_memberships: evolution item ${slug} must belong to evolution_item category.`,
      );
    }
    if (expectedEvolutionHeldItemSlugs.has(slug) && !categoryIds.has(2)) {
      errors.push(
        `reference.item_category_memberships: held evolution item ${slug} must belong to held_item category.`,
      );
    }
  }

  for (const slug of expectedPokeBallItemSlugs) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;

    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    if (!categoryIds.has(1)) {
      errors.push(
        `reference.item_category_memberships: Poke Ball item ${slug} must belong to poke_ball category.`,
      );
    }
  }

  for (const slug of expectedFossilItemSlugs) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;

    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    if (!categoryIds.has(4)) {
      errors.push(
        `reference.item_category_memberships: fossil item ${slug} must belong to fossil category.`,
      );
    }
  }

  for (const slug of expectedBerryItemSlugs) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;

    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    if (!categoryIds.has(6)) {
      errors.push(
        `reference.item_category_memberships: berry item ${slug} must belong to berry category.`,
      );
    }
    if (!categoryIds.has(2)) {
      errors.push(
        `reference.item_category_memberships: berry item ${slug} must belong to held_item category.`,
      );
    }
  }

  for (const slug of expectedAdditionalZCrystalItemSlugs) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;

    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    if (!categoryIds.has(8)) {
      errors.push(
        `reference.item_category_memberships: Z-Crystal item ${slug} must belong to z_crystal category.`,
      );
    }
    if (!categoryIds.has(2)) {
      errors.push(
        `reference.item_category_memberships: Z-Crystal item ${slug} must belong to held_item category.`,
      );
    }
  }

  for (const slug of expectedMegaStoneItemSlugs) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;

    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    if (!categoryIds.has(7)) {
      errors.push(
        `reference.item_category_memberships: Mega Stone item ${slug} must belong to mega_stone category.`,
      );
    }
    if (!categoryIds.has(2)) {
      errors.push(
        `reference.item_category_memberships: Mega Stone item ${slug} must belong to held_item category.`,
      );
    }
  }

  for (const [
    slug,
    expectedCategoryIds,
  ] of expectedGeneralHeldItemCategoryRequirements) {
    const item = itemsBySlug.get(slug);
    if (!item) continue;

    const categoryIds = new Set(
      membershipRows
        .filter(({ row }) => row.item_id === item.id)
        .map(({ row }) => row.category_id),
    );
    for (const expectedCategoryId of expectedCategoryIds) {
      if (!categoryIds.has(expectedCategoryId)) {
        errors.push(
          `reference.item_category_memberships: held item ${slug} must belong to expected categories ${expectedCategoryIds.join("/")} .`,
        );
      }
    }
  }
}

function assertMoveRows(tableRows) {
  const moveRows = tableRows.get("reference.moves") ?? [];
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const moveKindIds = new Set(
    (tableRows.get("reference.move_kinds") ?? []).map(({ row }) => row.id),
  );
  const movesBySlug = mapRowsByColumn(moveRows, "slug");

  if (moveRows.length !== 935) {
    errors.push(
      `reference.moves: expected 935 scoped move rows, got ${moveRows.length}.`,
    );
  }

  assertContiguousSortOrder("reference.moves", moveRows);

  const generationCounts = new Map();
  const kindCounts = new Map();

  for (const { row, filePath } of moveRows) {
    if (!generationIds.has(row.introduced_generation_id)) {
      errors.push(
        `${relative(filePath)}: move ${row.slug} references unseeded introduced_generation_id ${row.introduced_generation_id}.`,
      );
    }
    if (!moveKindIds.has(row.move_kind_id)) {
      errors.push(
        `${relative(filePath)}: move ${row.slug} references unseeded move_kind_id ${row.move_kind_id}.`,
      );
    }

    generationCounts.set(
      row.introduced_generation_id,
      (generationCounts.get(row.introduced_generation_id) ?? 0) + 1,
    );
    kindCounts.set(
      row.move_kind_id,
      (kindCounts.get(row.move_kind_id) ?? 0) + 1,
    );

    if (row.slug.startsWith("g-max-")) {
      if (row.move_kind_id !== 4) {
        errors.push(
          `${relative(filePath)}: G-Max move ${row.slug} must use move_kind_id 4.`,
        );
      }
      if (row.id < 10001 || row.id > 10033) {
        errors.push(
          `${relative(filePath)}: G-Max move ${row.slug} must use reserved id range 10001-10033.`,
        );
      }
      if (row.external_id !== null) {
        errors.push(
          `${relative(filePath)}: G-Max move ${row.slug} must use null external_id because Bulbapedia has only local G-Max order.`,
        );
      }
    } else {
      if (row.id >= 10000) {
        errors.push(
          `${relative(filePath)}: non-G-Max move ${row.slug} must not use reserved G-Max id range.`,
        );
      }
      if (row.external_id !== row.id) {
        errors.push(
          `${relative(filePath)}: indexed move ${row.slug} external_id ${row.external_id} must match its source index id ${row.id}.`,
        );
      }
    }

    if (expectedZMoveSlugs.has(row.slug) && row.move_kind_id !== 2) {
      errors.push(
        `${relative(filePath)}: Z-Move ${row.slug} must use move_kind_id 2.`,
      );
    }
    if (row.slug.startsWith("max-") && row.move_kind_id !== 3) {
      errors.push(
        `${relative(filePath)}: Max move ${row.slug} must use move_kind_id 3.`,
      );
    }
    if (
      !expectedZMoveSlugs.has(row.slug) &&
      !row.slug.startsWith("max-") &&
      !row.slug.startsWith("g-max-") &&
      row.move_kind_id !== 1
    ) {
      errors.push(
        `${relative(filePath)}: regular move ${row.slug} must use move_kind_id 1.`,
      );
    }
  }

  for (const [
    generationId,
    expectedCount,
  ] of expectedMoveGenerationCounts.entries()) {
    const actualCount = generationCounts.get(generationId) ?? 0;
    if (actualCount !== expectedCount) {
      errors.push(
        `reference.moves: generation ${generationId} expected ${expectedCount} moves, got ${actualCount}.`,
      );
    }
  }

  for (const [moveKindId, expectedCount] of expectedMoveKindCounts.entries()) {
    const actualCount = kindCounts.get(moveKindId) ?? 0;
    if (actualCount !== expectedCount) {
      errors.push(
        `reference.moves: move_kind_id ${moveKindId} expected ${expectedCount} moves, got ${actualCount}.`,
      );
    }
  }

  for (const slug of expectedZMoveSlugs) {
    if (!movesBySlug.has(slug)) {
      errors.push(`reference.moves: missing Z-Move ${slug}.`);
    }
  }

  for (const slug of expectedKnownEvolutionMoveSlugs) {
    const row = movesBySlug.get(slug);
    if (!row) {
      errors.push(
        `reference.moves: missing known-move evolution dependency ${slug}.`,
      );
    } else if (row.move_kind_id !== 1) {
      errors.push(
        `reference.moves: known-move evolution dependency ${slug} must be a regular move.`,
      );
    }
  }
}

function assertMoveAttributeRows(tableRows) {
  const attributeRows = tableRows.get("reference.move_attributes") ?? [];
  const moveRows = tableRows.get("reference.moves") ?? [];
  const movesById = mapRowsByColumn(moveRows, "id");
  const movesBySlug = mapRowsByColumn(moveRows, "slug");
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const typeIds = new Set(
    (tableRows.get("reference.types") ?? []).map(({ row }) => row.id),
  );
  const allowedDamageClasses = new Set([
    "physical",
    "special",
    "status",
    "variable",
  ]);
  const fixedPowerGmaxSlugs = new Set([
    "g-max-drum-solo",
    "g-max-fireball",
    "g-max-hydrosnipe",
  ]);
  const rowsByMoveId = new Map();

  if (attributeRows.length !== 1161) {
    errors.push(
      `reference.move_attributes: expected 1161 generation change-point rows, got ${attributeRows.length}.`,
    );
  }

  addCompositeDuplicateErrors(
    "reference.move_attributes",
    attributeRows,
    "move_id/generation_start_id",
    (row) => `${row.move_id}/${row.generation_start_id}`,
  );

  for (const { row, filePath } of attributeRows) {
    const move = movesById.get(row.move_id);
    if (!move) {
      errors.push(
        `${relative(filePath)}: move attribute references unseeded move_id ${row.move_id}.`,
      );
      continue;
    }
    if (!generationIds.has(row.generation_start_id)) {
      errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} references unseeded generation_start_id ${row.generation_start_id}.`,
      );
    }
    if (!typeIds.has(row.type_id)) {
      errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} references unseeded type_id ${row.type_id}.`,
      );
    }
    if (row.generation_start_id < move.introduced_generation_id) {
      errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} starts before the move was introduced.`,
      );
    }
    if (!allowedDamageClasses.has(row.damage_class)) {
      errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} has invalid damage_class ${row.damage_class}.`,
      );
    }
    if (
      row.power !== null &&
      (!Number.isInteger(row.power) || row.power < 0 || row.power > 300)
    ) {
      errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} has invalid power ${row.power}.`,
      );
    }
    if (
      row.accuracy !== null &&
      (!Number.isInteger(row.accuracy) ||
        row.accuracy < 1 ||
        row.accuracy > 100)
    ) {
      errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} has invalid accuracy ${row.accuracy}.`,
      );
    }
    if (
      row.pp !== null &&
      (!Number.isInteger(row.pp) || row.pp < 1 || row.pp > 64)
    ) {
      errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} has invalid pp ${row.pp}.`,
      );
    }
    if (
      !Number.isInteger(row.priority) ||
      row.priority < -7 ||
      row.priority > 7
    ) {
      errors.push(
        `${relative(filePath)}: move attribute for ${move.slug} has invalid priority ${row.priority}.`,
      );
    }

    if (!rowsByMoveId.has(row.move_id)) rowsByMoveId.set(row.move_id, []);
    rowsByMoveId.get(row.move_id).push(row);

    const isCollapsedGenericZMove =
      move.move_kind_id === 2 && move.id >= 622 && move.id <= 656;
    if (isCollapsedGenericZMove) {
      if (
        row.damage_class !== "variable" ||
        row.power !== null ||
        row.accuracy !== null ||
        row.pp !== 1
      ) {
        errors.push(
          `${relative(filePath)}: collapsed generic Z-Move ${move.slug} must use variable class, null power/accuracy, and 1 PP.`,
        );
      }
    }

    if (move.move_kind_id === 3) {
      if (move.slug === "max-guard") {
        if (
          row.damage_class !== "status" ||
          row.power !== null ||
          row.accuracy !== null ||
          row.pp !== null ||
          row.priority !== 4
        ) {
          errors.push(
            `${relative(filePath)}: Max Guard must be status with null fixed values and priority 4.`,
          );
        }
      } else if (
        row.damage_class !== "variable" ||
        row.power !== null ||
        row.accuracy !== null ||
        row.pp !== null
      ) {
        errors.push(
          `${relative(filePath)}: damaging Max Move ${move.slug} must use variable class and null fixed power/accuracy/PP.`,
        );
      }
    }

    if (move.move_kind_id === 4) {
      const expectedPower = fixedPowerGmaxSlugs.has(move.slug) ? 160 : null;
      if (
        row.damage_class !== "variable" ||
        row.power !== expectedPower ||
        row.accuracy !== null ||
        row.pp !== null ||
        row.generation_start_id !== 8
      ) {
        errors.push(
          `${relative(filePath)}: G-Max Move ${move.slug} must use Gen 8 variable class, expected fixed power ${expectedPower ?? "NULL"}, and null accuracy/PP.`,
        );
      }
    }

    if (move.move_kind_id === 1 && row.damage_class === "variable") {
      errors.push(
        `${relative(filePath)}: regular move ${move.slug} must not use variable damage_class without a documented schema exception.`,
      );
    }
  }

  for (const { row: move } of moveRows) {
    const rows = rowsByMoveId.get(move.id) ?? [];
    if (rows.length === 0) {
      errors.push(
        `reference.move_attributes: missing attribute rows for move ${move.slug}.`,
      );
      continue;
    }
    const firstGeneration = Math.min(
      ...rows.map((row) => row.generation_start_id),
    );
    if (firstGeneration !== move.introduced_generation_id) {
      errors.push(
        `reference.move_attributes: move ${move.slug} first attribute generation expected ${move.introduced_generation_id}, got ${firstGeneration}.`,
      );
    }
  }

  const findAttribute = (moveSlug, generationStartId) => {
    const move = movesBySlug.get(moveSlug);
    if (!move) return null;
    return (
      (rowsByMoveId.get(move.id) ?? []).find(
        (row) => row.generation_start_id === generationStartId,
      ) ?? null
    );
  };
  const expectAttribute = (moveSlug, generationStartId, expected) => {
    const row = findAttribute(moveSlug, generationStartId);
    if (!row) {
      errors.push(
        `reference.move_attributes: missing ${moveSlug} generation ${generationStartId} sanity row.`,
      );
      return;
    }
    for (const [column, expectedValue] of Object.entries(expected)) {
      if (row[column] !== expectedValue) {
        errors.push(
          `reference.move_attributes: ${moveSlug} generation ${generationStartId} expected ${column} ${expectedValue ?? "NULL"}, got ${row[column] ?? "NULL"}.`,
        );
      }
    }
  };

  expectAttribute("karate-chop", 1, { type_id: 1, damage_class: "physical" });
  expectAttribute("karate-chop", 2, { type_id: 7, damage_class: "physical" });
  expectAttribute("gust", 1, { type_id: 1, damage_class: "physical" });
  expectAttribute("gust", 2, { type_id: 10, damage_class: "physical" });
  expectAttribute("gust", 4, { type_id: 10, damage_class: "special" });
  expectAttribute("bite", 1, { type_id: 1, damage_class: "physical" });
  expectAttribute("bite", 2, { type_id: 16, damage_class: "special" });
  expectAttribute("bite", 4, { type_id: 16, damage_class: "physical" });
  expectAttribute("breakneck-blitz", 7, {
    damage_class: "variable",
    power: null,
    accuracy: null,
    pp: 1,
  });
  expectAttribute("max-flare", 8, {
    damage_class: "variable",
    power: null,
    accuracy: null,
    pp: null,
  });
  expectAttribute("max-guard", 8, {
    damage_class: "status",
    power: null,
    accuracy: null,
    pp: null,
    priority: 4,
  });
  expectAttribute("g-max-drum-solo", 8, {
    damage_class: "variable",
    power: 160,
    accuracy: null,
    pp: null,
  });
  expectAttribute("g-max-wildfire", 8, {
    damage_class: "variable",
    power: null,
    accuracy: null,
    pp: null,
  });
  expectAttribute("nihil-light", 9, {
    type_id: 15,
    power: 200,
    accuracy: 100,
    pp: 10,
    damage_class: "special",
  });
}

const pokeApiEvolutionSpeciesPairKeys = [
  "1:2",
  "2:3",
  "4:5",
  "5:6",
  "7:8",
  "8:9",
  "10:11",
  "11:12",
  "13:14",
  "14:15",
  "16:17",
  "17:18",
  "19:20",
  "21:22",
  "23:24",
  "25:26",
  "27:28",
  "29:30",
  "30:31",
  "32:33",
  "33:34",
  "35:36",
  "37:38",
  "39:40",
  "41:42",
  "42:169",
  "43:44",
  "44:45",
  "44:182",
  "46:47",
  "48:49",
  "50:51",
  "52:53",
  "52:863",
  "54:55",
  "56:57",
  "57:979",
  "58:59",
  "60:61",
  "61:62",
  "61:186",
  "63:64",
  "64:65",
  "66:67",
  "67:68",
  "69:70",
  "70:71",
  "72:73",
  "74:75",
  "75:76",
  "77:78",
  "79:80",
  "79:199",
  "81:82",
  "82:462",
  "83:865",
  "84:85",
  "86:87",
  "88:89",
  "90:91",
  "92:93",
  "93:94",
  "95:208",
  "96:97",
  "98:99",
  "100:101",
  "102:103",
  "104:105",
  "108:463",
  "109:110",
  "111:112",
  "112:464",
  "113:242",
  "114:465",
  "116:117",
  "117:230",
  "118:119",
  "120:121",
  "122:866",
  "123:212",
  "123:900",
  "125:466",
  "126:467",
  "129:130",
  "133:134",
  "133:135",
  "133:136",
  "133:196",
  "133:197",
  "133:470",
  "133:471",
  "133:700",
  "137:233",
  "138:139",
  "140:141",
  "147:148",
  "148:149",
  "152:153",
  "153:154",
  "155:156",
  "156:157",
  "158:159",
  "159:160",
  "161:162",
  "163:164",
  "165:166",
  "167:168",
  "170:171",
  "172:25",
  "173:35",
  "174:39",
  "175:176",
  "176:468",
  "177:178",
  "179:180",
  "180:181",
  "183:184",
  "187:188",
  "188:189",
  "190:424",
  "191:192",
  "193:469",
  "194:195",
  "194:980",
  "198:430",
  "200:429",
  "203:981",
  "204:205",
  "206:982",
  "207:472",
  "209:210",
  "211:904",
  "215:461",
  "215:903",
  "216:217",
  "217:901",
  "218:219",
  "220:221",
  "221:473",
  "222:864",
  "223:224",
  "228:229",
  "231:232",
  "233:474",
  "234:899",
  "236:106",
  "236:107",
  "236:237",
  "238:124",
  "239:125",
  "240:126",
  "246:247",
  "247:248",
  "252:253",
  "253:254",
  "255:256",
  "256:257",
  "258:259",
  "259:260",
  "261:262",
  "263:264",
  "264:862",
  "265:266",
  "265:268",
  "266:267",
  "268:269",
  "270:271",
  "271:272",
  "273:274",
  "274:275",
  "276:277",
  "278:279",
  "280:281",
  "281:282",
  "281:475",
  "283:284",
  "285:286",
  "287:288",
  "288:289",
  "290:291",
  "290:292",
  "293:294",
  "294:295",
  "296:297",
  "298:183",
  "299:476",
  "300:301",
  "304:305",
  "305:306",
  "307:308",
  "309:310",
  "315:407",
  "316:317",
  "318:319",
  "320:321",
  "322:323",
  "325:326",
  "328:329",
  "329:330",
  "331:332",
  "333:334",
  "339:340",
  "341:342",
  "343:344",
  "345:346",
  "347:348",
  "349:350",
  "353:354",
  "355:356",
  "356:477",
  "360:202",
  "361:362",
  "361:478",
  "363:364",
  "364:365",
  "366:367",
  "366:368",
  "371:372",
  "372:373",
  "374:375",
  "375:376",
  "387:388",
  "388:389",
  "390:391",
  "391:392",
  "393:394",
  "394:395",
  "396:397",
  "397:398",
  "399:400",
  "401:402",
  "403:404",
  "404:405",
  "406:315",
  "408:409",
  "410:411",
  "412:413",
  "412:414",
  "415:416",
  "418:419",
  "420:421",
  "422:423",
  "425:426",
  "427:428",
  "431:432",
  "433:358",
  "434:435",
  "436:437",
  "438:185",
  "439:122",
  "440:113",
  "443:444",
  "444:445",
  "446:143",
  "447:448",
  "449:450",
  "451:452",
  "453:454",
  "456:457",
  "458:226",
  "459:460",
  "489:490",
  "495:496",
  "496:497",
  "498:499",
  "499:500",
  "501:502",
  "502:503",
  "504:505",
  "506:507",
  "507:508",
  "509:510",
  "511:512",
  "513:514",
  "515:516",
  "517:518",
  "519:520",
  "520:521",
  "522:523",
  "524:525",
  "525:526",
  "527:528",
  "529:530",
  "532:533",
  "533:534",
  "535:536",
  "536:537",
  "540:541",
  "541:542",
  "543:544",
  "544:545",
  "546:547",
  "548:549",
  "550:902",
  "551:552",
  "552:553",
  "554:555",
  "557:558",
  "559:560",
  "562:563",
  "562:867",
  "564:565",
  "566:567",
  "568:569",
  "570:571",
  "572:573",
  "574:575",
  "575:576",
  "577:578",
  "578:579",
  "580:581",
  "582:583",
  "583:584",
  "585:586",
  "588:589",
  "590:591",
  "592:593",
  "595:596",
  "597:598",
  "599:600",
  "600:601",
  "602:603",
  "603:604",
  "605:606",
  "607:608",
  "608:609",
  "610:611",
  "611:612",
  "613:614",
  "616:617",
  "619:620",
  "622:623",
  "624:625",
  "625:983",
  "627:628",
  "629:630",
  "633:634",
  "634:635",
  "636:637",
  "650:651",
  "651:652",
  "653:654",
  "654:655",
  "656:657",
  "657:658",
  "659:660",
  "661:662",
  "662:663",
  "664:665",
  "665:666",
  "667:668",
  "669:670",
  "670:671",
  "672:673",
  "674:675",
  "677:678",
  "679:680",
  "680:681",
  "682:683",
  "684:685",
  "686:687",
  "688:689",
  "690:691",
  "692:693",
  "694:695",
  "696:697",
  "698:699",
  "704:705",
  "705:706",
  "708:709",
  "710:711",
  "712:713",
  "714:715",
  "722:723",
  "723:724",
  "725:726",
  "726:727",
  "728:729",
  "729:730",
  "731:732",
  "732:733",
  "734:735",
  "736:737",
  "737:738",
  "739:740",
  "742:743",
  "744:745",
  "747:748",
  "749:750",
  "751:752",
  "753:754",
  "755:756",
  "757:758",
  "759:760",
  "761:762",
  "762:763",
  "767:768",
  "769:770",
  "772:773",
  "782:783",
  "783:784",
  "789:790",
  "790:791",
  "790:792",
  "803:804",
  "810:811",
  "811:812",
  "813:814",
  "814:815",
  "816:817",
  "817:818",
  "819:820",
  "821:822",
  "822:823",
  "824:825",
  "825:826",
  "827:828",
  "829:830",
  "831:832",
  "833:834",
  "835:836",
  "837:838",
  "838:839",
  "840:841",
  "840:842",
  "840:1011",
  "843:844",
  "846:847",
  "848:849",
  "850:851",
  "852:853",
  "854:855",
  "856:857",
  "857:858",
  "859:860",
  "860:861",
  "868:869",
  "872:873",
  "878:879",
  "884:1018",
  "885:886",
  "886:887",
  "891:892",
  "906:907",
  "907:908",
  "909:910",
  "910:911",
  "912:913",
  "913:914",
  "915:916",
  "917:918",
  "919:920",
  "921:922",
  "922:923",
  "924:925",
  "926:927",
  "928:929",
  "929:930",
  "932:933",
  "933:934",
  "935:936",
  "935:937",
  "938:939",
  "940:941",
  "942:943",
  "944:945",
  "946:947",
  "948:949",
  "951:952",
  "953:954",
  "955:956",
  "957:958",
  "958:959",
  "960:961",
  "963:964",
  "965:966",
  "969:970",
  "971:972",
  "974:975",
  "996:997",
  "997:998",
  "999:1000",
  "1011:1019",
  "1012:1013",
];

const acceptedEvolutionSourceDisagreementPairKeys = new Set([
  // PokeAPI models Phione -> Manaphy as an evolution-chain edge; curated sources treat it as breeding-only.
  "489:490",
]);

function itemAvailabilityRowLabel(row) {
  return `${row.item_id}/${row.version_group_id}/${row.game_id ?? "vg"}/${row.availability_method_id ?? "method-null"}`;
}

function moveAvailabilityRowLabel(row) {
  return `${row.move_id}/${row.version_group_id}/${row.game_id ?? "vg"}`;
}

function pokemonAvailabilityRowLabel(row) {
  return `${row.species_id}/${row.form_id}/${row.version_group_id}/${row.game_id ?? "vg"}/${row.availability_method_id}`;
}

function pokemonLearnsetRowLabel(row) {
  return `${row.species_id}/${row.form_id}/${row.move_id}/${row.version_group_id}/${row.game_id ?? "vg"}/${row.learn_method_id}/${row.level_learned_at ?? "no-level"}/${row.source_item_id ?? "no-item"}/${row.move_machine_id ?? "no-machine"}`;
}

function moveMachineRowLabel(row) {
  return `${row.machine_label}/${row.version_group_id}/${row.game_id ?? "vg"}`;
}

function scopeOperation(row) {
  return row.scope_operation ?? "add";
}

function expectedMoveMachineId(row) {
  const machineNumberMatch = String(row.machine_label).match(
    /^(?:TM|HM|TR)([0-9]{2,3})$/,
  );
  if (!machineNumberMatch) return null;
  return (
    row.version_group_id * 1000000 +
    (row.game_id ?? 0) * 10000 +
    row.learn_method_id * 1000 +
    Number(machineNumberMatch[1])
  );
}

function evolutionEdgeRowLabel(row) {
  return `${row.from_species_id}/${row.from_form_id}->${row.to_species_id}/${row.to_form_id}`;
}

function evolutionEdgeNaturalKey(row) {
  return [
    row.from_species_id,
    row.from_form_id,
    row.to_species_id,
    row.to_form_id,
    row.version_group_id ?? 0,
    row.introduced_generation_id,
    row.evolution_method_id,
    row.minimum_level ?? 0,
    row.item_id ?? 0,
    row.held_item_id ?? 0,
    row.known_move_id ?? 0,
    row.known_type_id ?? 0,
    row.gender ?? "",
    row.time_of_day ?? "",
    row.location_label ?? "",
    row.condition_data ?? "{}",
  ].join("/");
}
function assertItemAvailabilityRows(tableRows) {
  const rows = tableRows.get("reference.item_availability") ?? [];
  const itemRows = tableRows.get("reference.items") ?? [];
  const versionGroups = tableRows.get("reference.version_groups") ?? [];
  const games = tableRows.get("reference.games") ?? [];
  const methods = tableRows.get("reference.availability_methods") ?? [];
  const contentScopes = tableRows.get("reference.game_content_scopes") ?? [];
  const sourceVerifiedFingerprintsByVersionGroup = new Map([
    [
      1,
      {
        count: 13,
        sha256:
          "7b1e45a9e03e0da55d9d5b71cd5259473cfe51dc69443b4810550a9db49ede6a",
      },
    ],
    [
      2,
      {
        count: 13,
        sha256:
          "abb3b4474f183cf98e56228ca64dfbd1257fc4ab2c3bb53bbc791c07b356d4e9",
      },
    ],
    [
      3,
      {
        count: 55,
        sha256:
          "3c8fe172901b4d7bc31c5778260a30182adaab57feba0b6a61580ea73d112a1c",
      },
    ],
    [
      4,
      {
        count: 55,
        sha256:
          "2dcd79bed298a3123f70d70539bc054f4a9c44b5a854ea6ee7316916652f2346",
      },
    ],
    [
      5,
      {
        count: 92,
        sha256:
          "62a2f58dfab8d47e78fd0ef91ccca15a94a64b4c41de75176efa695e9afae792",
      },
    ],
    [
      6,
      {
        count: 61,
        sha256:
          "ff921f57edd0a59f57d7bab042ccc561c9a5bde975f37cc1fcc8ff0ff044e89e",
      },
    ],
    [
      7,
      {
        count: 94,
        sha256:
          "0b1bf4dbc55e6f1a48e9435cab05aebafadeaa1e37f88a134d1185e6b5e3c902",
      },
    ],
    [
      8,
      {
        count: 188,
        sha256:
          "ff0bbd22100e83ac605d07d64d183da96e6ca6725d9530a1dfbfa752bb5163cb",
      },
    ],
    [
      9,
      {
        count: 190,
        sha256:
          "4ed0edc8fe2e83b5497534f81b3ab5aa491c6e11878393932b994e1ffc5c81c1",
      },
    ],
    [
      10,
      {
        count: 182,
        sha256:
          "1db1982e3ab5e8794dc458d1ac50d0187221b6eb6e5be2fc10ff8e222103e8e9",
      },
    ],
    [
      11,
      {
        count: 193,
        sha256:
          "e70778ee8a4a28e2faa6bc4c57fe61eb5ad9fd7aa3cb52521c04e85e65f60b9d",
      },
    ],
    [
      12,
      {
        count: 210,
        sha256:
          "17d1995651a8b5c1ff171e54de6b2d630640de241c0d2b7fb0ffb4e4653671a8",
      },
    ],
    [
      13,
      {
        count: 232,
        sha256:
          "e1b0d6d061003365320e9881437b8f84b05ae1ceb6a4595bb3318054db49ce2b",
      },
    ],
    [
      14,
      {
        count: 264,
        sha256:
          "7eeb89c881229df2f46d366a55d43fe0e4ac4d89d7cc4ac3293ff53c38e53fd3",
      },
    ],
    [
      15,
      {
        count: 278,
        sha256:
          "e5572c27f0be27694f26f2bfd955f1696282582de89bc4857885fa0ede9b8b3d",
      },
    ],
    [
      16,
      {
        count: 327,
        sha256:
          "218f9f81909ff253e973ce4b2175944c3417a759496649ab2e91934b94e588b9",
      },
    ],
    [
      17,
      {
        count: 23,
        sha256:
          "5a485eb8d1cd0a4546ace1e4565830c62cc0d80fc46aeb8b685726a1f142ad62",
      },
    ],
    [
      18,
      {
        count: 235,
        sha256:
          "f18352a2e10829d586a5f8c6252cb5397fb9a7ec5f714ce6043abdac8965ff15",
      },
    ],
    [
      19,
      {
        count: 132,
        sha256:
          "da27a6044390e9637acca739bf896d7f7ca359bd56645ec9436bc06d87d4c9dc",
      },
    ],
    [
      20,
      {
        count: 116,
        sha256:
          "e8cae54ba9cab80810146bb55a0b4b6285861848f88eefc5796a99a141b7a48b",
      },
    ],
    [
      21,
      {
        count: 217,
        sha256:
          "89ec364c83cab89ff088a9fec8fdb5f4ee4f1ecdad8293189216ad4d2ff9dbf1",
      },
    ],
    [
      22,
      {
        count: 69,
        sha256:
          "38a0a642c6ddb83e99a8e17d7e6023d2e7503cc67f6469ad9b527396a27ed4d5",
      },
    ],
    [
      23,
      {
        count: 218,
        sha256:
          "6f960d31733fc8cbdf7962701f9f200818f8971f01c4ea2542858adad627ead3",
      },
    ],
    [
      24,
      {
        count: 66,
        sha256:
          "a8e377d4880f8b93ce6840679b3a1041783457bf868eb162d4235974266e7c0b",
      },
    ],
    [
      25,
      {
        count: 105,
        sha256:
          "516a0908b2fa74828408a9a4c4878b8d37df133c6529a02a7745f237927bd5ba",
      },
    ],
    [
      26,
      {
        count: 194,
        sha256:
          "fc13d4fecfd7393f1f6862d494e1ad9fa8466b5fdd474665176b9ae8b3584ea6",
      },
    ],
    [
      27,
      {
        count: 55,
        sha256:
          "123b6b6eb130d342748e01fc5e5129f6c593b28361bd5d0dc656c577848d8c18",
      },
    ],
  ]);
  const itemAvailabilitySourceFingerprint = (availabilityRows) =>
    createHash("sha256")
      .update(
        availabilityRows
          .toSorted(
            (a, b) =>
              a.item_id - b.item_id ||
              a.version_group_id - b.version_group_id ||
              (a.game_id ?? 0) - (b.game_id ?? 0) ||
              (a.availability_method_id ?? 0) -
                (b.availability_method_id ?? 0) ||
              scopeOperation(a).localeCompare(scopeOperation(b)) ||
              sourceFingerprintString(a.notes).localeCompare(
                sourceFingerprintString(b.notes),
              ),
          )
          .map((row) =>
            [
              row.item_id,
              row.version_group_id,
              row.game_id ?? "vg",
              row.availability_method_id ?? 0,
              scopeOperation(row),
              sourceFingerprintString(row.notes),
            ].join("/"),
          )
          .join("|"),
      )
      .digest("hex");

  const sourceVerifiedItemCategoryFingerprints = new Map([
    [
      "non-Z form-change item availability",
      {
        slugs: new Set(expectedNonZCrystalFormChangeItemSlugs),
        count: 302,
        sha256:
          "508b47e4959727a83d2fe56914e04ce890027ecbe924c110d8d7a3a83f5f2ae1",
      },
    ],
    [
      "evolution item availability",
      {
        slugs: new Set(expectedEvolutionItemSlugs),
        count: 465,
        sha256:
          "f1f33ed52616c3e19a67b5582c0c14d7e11f7604cd0924be498ee4b8a38e4c30",
      },
    ],
    [
      "Z-Crystal availability",
      {
        slugs: new Set(expectedZCrystalItemSlugs),
        count: 60,
        sha256:
          "2c7cea2167203670673e4d435a8c8956c5b5eeb006cadd117287d2e0c0ae9071",
      },
    ],
    [
      "Mega Stone availability",
      {
        slugs: new Set(expectedMegaStoneItemSlugs),
        count: 233,
        sha256:
          "1f57c79af054361e7909f92d65be90aec032c38dfeacd13912f43fea2d0e312a",
      },
    ],
    [
      "general held item availability",
      {
        slugs: new Set(expectedGeneralHeldAvailableItemSlugs),
        count: 1380,
        sha256:
          "8265847d156a61ac1c5880881c6cd1462830ce7887354ccd76a83ec247217dbe",
      },
    ],
  ]);

  const itemIds = new Set(itemRows.map(({ row }) => row.id));
  const versionGroupIds = new Set(versionGroups.map(({ row }) => row.id));
  const versionGroupsById = mapRowsByColumn(versionGroups, "id");
  const gamesById = mapRowsByColumn(games, "id");
  const methodIds = new Set(methods.map(({ row }) => row.id));
  const contentScopeKeys = new Set(
    contentScopes.map(({ row }) => `${row.game_id}/${row.version_group_id}`),
  );
  const availabilityItemIds = new Set(rows.map(({ row }) => row.item_id));
  const itemsBySlug = mapRowsByColumn(itemRows, "slug");
  const itemsById = mapRowsByColumn(itemRows, "id");
  const versionGroupsBySlug = mapRowsByColumn(versionGroups, "slug");
  const gamesBySlug = mapRowsByColumn(games, "slug");
  const methodsBySlug = mapRowsByColumn(methods, "slug");
  const normalizedAvailabilityRows = rows.map(({ row, filePath }) => ({
    ...row,
    availability_method_id: row.availability_method_id ?? null,
    game_id: row.game_id ?? null,
    notes: row.notes === "NULL" ? null : (row.notes ?? null),
    filePath,
  }));

  function hasItemAvailability({
    itemSlug,
    versionGroupSlug,
    gameSlug = null,
    methodSlug = null,
  }) {
    const item = itemsBySlug.get(itemSlug);
    const versionGroup = versionGroupsBySlug.get(versionGroupSlug);
    const game = gameSlug ? gamesBySlug.get(gameSlug) : null;
    const method = methodSlug ? methodsBySlug.get(methodSlug) : null;
    if (
      !item ||
      !versionGroup ||
      (gameSlug && !game) ||
      (methodSlug && !method)
    ) {
      return false;
    }

    return normalizedAvailabilityRows.some(
      (row) =>
        row.item_id === item.id &&
        row.version_group_id === versionGroup.id &&
        row.game_id === (game?.id ?? null) &&
        row.availability_method_id === (method?.id ?? null),
    );
  }

  function expectItemAvailability(expected) {
    if (!hasItemAvailability(expected)) {
      const scope = expected.gameSlug
        ? `${expected.versionGroupSlug}/${expected.gameSlug}`
        : expected.versionGroupSlug;
      const method = expected.methodSlug ?? "normal";
      errors.push(
        `reference.item_availability: expected ${expected.itemSlug} availability in ${scope} with method ${method}.`,
      );
    }
  }

  function expectNoItemAvailability(expected) {
    if (hasItemAvailability(expected)) {
      const scope = expected.gameSlug
        ? `${expected.versionGroupSlug}/${expected.gameSlug}`
        : expected.versionGroupSlug;
      const method = expected.methodSlug ?? "normal";
      errors.push(
        `reference.item_availability: unexpected ${expected.itemSlug} availability in ${scope} with method ${method}.`,
      );
    }
  }

  function hasAnyItemAvailability({ itemSlug, versionGroupSlug }) {
    const item = itemsBySlug.get(itemSlug);
    const versionGroup = versionGroupsBySlug.get(versionGroupSlug);
    if (!item || !versionGroup) return false;

    return normalizedAvailabilityRows.some(
      (row) =>
        row.item_id === item.id && row.version_group_id === versionGroup.id,
    );
  }

  function expectNoAnyItemAvailability(expected) {
    if (hasAnyItemAvailability(expected)) {
      errors.push(
        "reference.item_availability: unexpected " +
          expected.itemSlug +
          " availability rows in " +
          expected.versionGroupSlug +
          ".",
      );
    }
  }

  for (const slug of [
    ...expectedFormChangeItemSlugs,
    ...expectedEvolutionItemSlugs,
    "griseous-core",
    ...expectedPokeBallAvailableItemSlugs,
    ...expectedFossilItemSlugs,
    ...expectedBerryAvailableItemSlugs,
    ...expectedAdditionalZCrystalItemSlugs,
    ...expectedMegaStoneItemSlugs,
    ...expectedGeneralHeldAvailableItemSlugs,
  ]) {
    const item = mapRowsByColumn(itemRows, "slug").get(slug);
    if (item && !availabilityItemIds.has(item.id)) {
      errors.push(
        `reference.item_availability: expected item ${slug} to have at least one availability row.`,
      );
    }
  }

  if (rows.length !== 3877) {
    errors.push(
      `reference.item_availability: expected 3877 curated item availability rows, got ${rows.length}.`,
    );
  }

  addCompositeDuplicateErrors(
    "reference.item_availability",
    rows.filter(({ row }) => row.game_id === null),
    "item_id/version_group_id/availability_method_id where game_id IS NULL",
    (row) =>
      `${row.item_id}/${row.version_group_id}/${row.availability_method_id}`,
  );
  addCompositeDuplicateErrors(
    "reference.item_availability",
    rows.filter(({ row }) => row.game_id !== null),
    "item_id/version_group_id/game_id/availability_method_id where game_id IS NOT NULL",
    (row) =>
      `${row.item_id}/${row.version_group_id}/${row.game_id}/${row.availability_method_id}`,
  );

  for (const expected of [
    { itemSlug: "deep-sea-tooth", versionGroupSlug: "rs" },
    { itemSlug: "deep-sea-scale", versionGroupSlug: "rs" },
    { itemSlug: "deep-sea-tooth", versionGroupSlug: "emerald" },
    { itemSlug: "deep-sea-scale", versionGroupSlug: "emerald" },
    {
      itemSlug: "deep-sea-tooth",
      versionGroupSlug: "frlg",
      methodSlug: "external_trade",
    },
    {
      itemSlug: "deep-sea-scale",
      versionGroupSlug: "frlg",
      methodSlug: "external_trade",
    },
    {
      itemSlug: "electirizer",
      versionGroupSlug: "bdsp",
      gameSlug: "brilliant-diamond",
    },
    {
      itemSlug: "magmarizer",
      versionGroupSlug: "bdsp",
      gameSlug: "shining-pearl",
    },
    { itemSlug: "electirizer", versionGroupSlug: "sv-id" },
    { itemSlug: "magmarizer", versionGroupSlug: "sv-id" },
    { itemSlug: "scroll-of-darkness", versionGroupSlug: "sv" },
    { itemSlug: "scroll-of-waters", versionGroupSlug: "sv" },
    { itemSlug: "black-augurite", versionGroupSlug: "pla" },
    { itemSlug: "black-augurite", versionGroupSlug: "za-md" },
    { itemSlug: "metal-alloy", versionGroupSlug: "sv-id" },
    { itemSlug: "galarica-cuff", versionGroupSlug: "swsh-ioa" },
    { itemSlug: "galarica-wreath", versionGroupSlug: "swsh-ct" },
    {
      itemSlug: "polkadot-bow",
      versionGroupSlug: "gs",
      methodSlug: "transfer_only",
    },
    {
      itemSlug: "polkadot-bow",
      versionGroupSlug: "crystal",
      methodSlug: "transfer_only",
    },
    { itemSlug: "red-orb", versionGroupSlug: "oras" },
    { itemSlug: "blue-orb", versionGroupSlug: "oras" },
    { itemSlug: "red-orb", versionGroupSlug: "sm" },
    { itemSlug: "blue-orb", versionGroupSlug: "sm" },
    { itemSlug: "red-orb", versionGroupSlug: "usum" },
    { itemSlug: "blue-orb", versionGroupSlug: "usum" },
    { itemSlug: "red-orb", versionGroupSlug: "za" },
    { itemSlug: "blue-orb", versionGroupSlug: "za" },
  ]) {
    expectItemAvailability(expected);
  }

  for (const expected of [
    { itemSlug: "deep-sea-tooth", versionGroupSlug: "frlg" },
    { itemSlug: "deep-sea-scale", versionGroupSlug: "frlg" },
    {
      itemSlug: "electirizer",
      versionGroupSlug: "bdsp",
      gameSlug: "shining-pearl",
    },
    {
      itemSlug: "magmarizer",
      versionGroupSlug: "bdsp",
      gameSlug: "brilliant-diamond",
    },
    { itemSlug: "scroll-of-darkness", versionGroupSlug: "swsh-ioa" },
    { itemSlug: "scroll-of-waters", versionGroupSlug: "swsh-ioa" },
    { itemSlug: "black-augurite", versionGroupSlug: "sv" },
    { itemSlug: "metal-alloy", versionGroupSlug: "sv" },
    { itemSlug: "metal-alloy", versionGroupSlug: "sv-tm" },
    { itemSlug: "polkadot-bow", versionGroupSlug: "gs" },
    { itemSlug: "polkadot-bow", versionGroupSlug: "crystal" },
  ]) {
    expectNoItemAvailability(expected);
  }

  for (const expected of [
    { itemSlug: "exp-share", versionGroupSlug: "xy" },
    { itemSlug: "exp-share", versionGroupSlug: "oras" },
    { itemSlug: "exp-share", versionGroupSlug: "sm" },
    { itemSlug: "exp-share", versionGroupSlug: "usum" },
    { itemSlug: "exp-share", versionGroupSlug: "lgpe" },
    { itemSlug: "exp-share", versionGroupSlug: "swsh" },
    { itemSlug: "exp-share", versionGroupSlug: "swsh-ioa" },
    { itemSlug: "exp-share", versionGroupSlug: "swsh-ct" },
    { itemSlug: "exp-share", versionGroupSlug: "bdsp" },
    { itemSlug: "exp-share", versionGroupSlug: "pla" },
    { itemSlug: "exp-share", versionGroupSlug: "sv" },
    { itemSlug: "exp-share", versionGroupSlug: "sv-tm" },
    { itemSlug: "exp-share", versionGroupSlug: "sv-id" },
    { itemSlug: "exp-share", versionGroupSlug: "za" },
    { itemSlug: "exp-share", versionGroupSlug: "za-md" },
    { itemSlug: "red-orb", versionGroupSlug: "rs" },
    { itemSlug: "blue-orb", versionGroupSlug: "rs" },
    { itemSlug: "red-orb", versionGroupSlug: "emerald" },
    { itemSlug: "blue-orb", versionGroupSlug: "emerald" },
  ]) {
    expectNoAnyItemAvailability(expected);
  }

  const fairyGem = itemsBySlug.get("fairy-gem");
  if (
    fairyGem &&
    normalizedAvailabilityRows.some((row) => row.item_id === fairyGem.id)
  ) {
    errors.push(
      "reference.item_availability: Fairy Gem must remain catalog-only because no normal source availability is modeled.",
    );
  }

  const pokeBallSlugsById = new Map(
    expectedPokeBallItemSlugs
      .map((slug) => itemsBySlug.get(slug))
      .filter(Boolean)
      .map((item) => [item.id, item.slug]),
  );
  const expectedPokeBallSlugSet = new Set(expectedPokeBallItemSlugs);
  const actualPokeBallAvailabilitySlugsByVersionGroup = new Map();
  let actualPokeBallAvailabilityRowCount = 0;

  for (const row of normalizedAvailabilityRows) {
    const itemSlug = pokeBallSlugsById.get(row.item_id);
    if (!itemSlug) continue;

    actualPokeBallAvailabilityRowCount += 1;

    if (!expectedPokeBallSlugSet.has(itemSlug)) {
      errors.push(
        `reference.item_availability: unexpected Poke Ball availability item ${itemSlug}.`,
      );
    }
    if (itemSlug === "cherish-ball") {
      errors.push(
        "reference.item_availability: Cherish Ball must remain catalog-only and must not have normal item availability rows.",
      );
    }
    if (
      row.game_id !== null ||
      row.availability_method_id !== null ||
      scopeOperation(row) !== "add"
    ) {
      errors.push(
        `${relative(row.filePath)}: Poke Ball availability row ${itemAvailabilityRowLabel(row)} must remain a simple version-group add row without game/method overrides until detailed ball acquisition is modeled.`,
      );
    }

    const versionGroup = versionGroupsById.get(row.version_group_id);
    const versionGroupSlug =
      versionGroup?.slug ?? `unknown-${row.version_group_id}`;
    if (!actualPokeBallAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      actualPokeBallAvailabilitySlugsByVersionGroup.set(versionGroupSlug, []);
    }
    actualPokeBallAvailabilitySlugsByVersionGroup
      .get(versionGroupSlug)
      .push(itemSlug);
  }

  if (
    actualPokeBallAvailabilityRowCount !== expectedPokeBallAvailabilityRowCount
  ) {
    errors.push(
      `reference.item_availability: expected ${expectedPokeBallAvailabilityRowCount} source-checked Poke Ball availability rows, got ${actualPokeBallAvailabilityRowCount}.`,
    );
  }

  for (const [
    versionGroupSlug,
    actualSlugs,
  ] of actualPokeBallAvailabilitySlugsByVersionGroup.entries()) {
    if (
      !expectedPokeBallAvailabilitySlugsByVersionGroup.has(versionGroupSlug)
    ) {
      errors.push(
        `reference.item_availability: unexpected Poke Ball availability rows for version group ${versionGroupSlug}.`,
      );
      continue;
    }

    const expectedSlugs =
      expectedPokeBallAvailabilitySlugsByVersionGroup.get(versionGroupSlug);
    const actualSet = new Set(actualSlugs);
    const expectedSet = new Set(expectedSlugs);
    for (const slug of actualSet) {
      if (!expectedSet.has(slug)) {
        errors.push(
          `reference.item_availability: unexpected Poke Ball ${slug} in ${versionGroupSlug}.`,
        );
      }
    }
    for (const slug of expectedSet) {
      if (!actualSet.has(slug)) {
        errors.push(
          `reference.item_availability: missing Poke Ball ${slug} in ${versionGroupSlug}.`,
        );
      }
    }
    if (actualSlugs.length !== actualSet.size) {
      errors.push(
        `reference.item_availability: duplicate Poke Ball availability row in ${versionGroupSlug}.`,
      );
    }
  }

  for (const versionGroupSlug of expectedPokeBallAvailabilitySlugsByVersionGroup.keys()) {
    if (!actualPokeBallAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      errors.push(
        `reference.item_availability: missing source-checked Poke Ball availability rows for version group ${versionGroupSlug}.`,
      );
    }
  }

  const fossilSlugsById = new Map(
    expectedFossilItemSlugs
      .map((slug) => itemsBySlug.get(slug))
      .filter(Boolean)
      .map((item) => [item.id, item.slug]),
  );
  const expectedFossilSlugSet = new Set(expectedFossilItemSlugs);
  const actualFossilAvailabilitySlugsByVersionGroup = new Map();
  let actualFossilAvailabilityRowCount = 0;

  for (const row of normalizedAvailabilityRows) {
    const itemSlug = fossilSlugsById.get(row.item_id);
    if (!itemSlug) continue;

    actualFossilAvailabilityRowCount += 1;

    if (!expectedFossilSlugSet.has(itemSlug)) {
      errors.push(
        `reference.item_availability: unexpected fossil availability item ${itemSlug}.`,
      );
    }
    if (row.availability_method_id !== null || scopeOperation(row) !== "add") {
      errors.push(
        `${relative(row.filePath)}: fossil availability row ${itemAvailabilityRowLabel(row)} must remain a source-checked add row without method overrides until detailed fossil acquisition is modeled.`,
      );
    }

    const versionGroup = versionGroupsById.get(row.version_group_id);
    const game = row.game_id === null ? null : gamesById.get(row.game_id);
    const versionGroupSlug =
      versionGroup?.slug ?? `unknown-${row.version_group_id}`;
    const fossilToken = `${itemSlug}${game ? `@${game.slug}` : ""}`;
    if (!actualFossilAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      actualFossilAvailabilitySlugsByVersionGroup.set(versionGroupSlug, []);
    }
    actualFossilAvailabilitySlugsByVersionGroup
      .get(versionGroupSlug)
      .push(fossilToken);
  }

  if (actualFossilAvailabilityRowCount !== expectedFossilAvailabilityRowCount) {
    errors.push(
      `reference.item_availability: expected ${expectedFossilAvailabilityRowCount} source-checked fossil availability rows, got ${actualFossilAvailabilityRowCount}.`,
    );
  }

  for (const [
    versionGroupSlug,
    actualSlugs,
  ] of actualFossilAvailabilitySlugsByVersionGroup.entries()) {
    if (!expectedFossilAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      errors.push(
        `reference.item_availability: unexpected fossil availability rows for version group ${versionGroupSlug}.`,
      );
      continue;
    }

    const expectedSlugs =
      expectedFossilAvailabilitySlugsByVersionGroup.get(versionGroupSlug);
    const actualSet = new Set(actualSlugs);
    const expectedSet = new Set(expectedSlugs);
    for (const slug of actualSet) {
      if (!expectedSet.has(slug)) {
        errors.push(
          `reference.item_availability: unexpected fossil ${slug} in ${versionGroupSlug}.`,
        );
      }
    }
    for (const slug of expectedSet) {
      if (!actualSet.has(slug)) {
        errors.push(
          `reference.item_availability: missing fossil ${slug} in ${versionGroupSlug}.`,
        );
      }
    }
    if (actualSlugs.length !== actualSet.size) {
      errors.push(
        `reference.item_availability: duplicate fossil availability row in ${versionGroupSlug}.`,
      );
    }
  }

  for (const versionGroupSlug of expectedFossilAvailabilitySlugsByVersionGroup.keys()) {
    if (!actualFossilAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      errors.push(
        `reference.item_availability: missing source-checked fossil availability rows for version group ${versionGroupSlug}.`,
      );
    }
  }
  const berrySlugsById = new Map(
    expectedBerryItemSlugs
      .map((slug) => itemsBySlug.get(slug))
      .filter(Boolean)
      .map((item) => [item.id, item.slug]),
  );
  const expectedBerrySlugSet = new Set(expectedBerryItemSlugs);
  const actualBerryAvailabilitySlugsByVersionGroup = new Map();
  let actualBerryAvailabilityRowCount = 0;

  for (const row of normalizedAvailabilityRows) {
    const itemSlug = berrySlugsById.get(row.item_id);
    if (!itemSlug) continue;

    actualBerryAvailabilityRowCount += 1;

    if (!expectedBerrySlugSet.has(itemSlug)) {
      errors.push(
        `reference.item_availability: unexpected berry availability item ${itemSlug}.`,
      );
    }
    if (
      row.game_id !== null ||
      row.availability_method_id !== null ||
      scopeOperation(row) !== "add"
    ) {
      errors.push(
        `${relative(row.filePath)}: berry availability row ${itemAvailabilityRowLabel(row)} must remain a source-checked version-group add row without game/method overrides until detailed berry acquisition is modeled.`,
      );
    }

    const versionGroup = versionGroupsById.get(row.version_group_id);
    const versionGroupSlug =
      versionGroup?.slug ?? `unknown-${row.version_group_id}`;
    if (!actualBerryAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      actualBerryAvailabilitySlugsByVersionGroup.set(versionGroupSlug, []);
    }
    actualBerryAvailabilitySlugsByVersionGroup
      .get(versionGroupSlug)
      .push(itemSlug);
  }

  if (actualBerryAvailabilityRowCount !== expectedBerryAvailabilityRowCount) {
    errors.push(
      `reference.item_availability: expected ${expectedBerryAvailabilityRowCount} source-checked berry availability rows, got ${actualBerryAvailabilityRowCount}.`,
    );
  }

  for (const [
    versionGroupSlug,
    actualSlugs,
  ] of actualBerryAvailabilitySlugsByVersionGroup.entries()) {
    if (!expectedBerryAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      errors.push(
        `reference.item_availability: unexpected berry availability rows for version group ${versionGroupSlug}.`,
      );
      continue;
    }

    const expectedSlugs =
      expectedBerryAvailabilitySlugsByVersionGroup.get(versionGroupSlug);
    const actualSet = new Set(actualSlugs);
    const expectedSet = new Set(expectedSlugs);
    for (const slug of actualSet) {
      if (!expectedSet.has(slug)) {
        errors.push(
          `reference.item_availability: unexpected berry ${slug} in ${versionGroupSlug}.`,
        );
      }
    }
    for (const slug of expectedSet) {
      if (!actualSet.has(slug)) {
        errors.push(
          `reference.item_availability: missing berry ${slug} in ${versionGroupSlug}.`,
        );
      }
    }
    if (actualSlugs.length !== actualSet.size) {
      errors.push(
        `reference.item_availability: duplicate berry availability row in ${versionGroupSlug}.`,
      );
    }
  }

  for (const versionGroupSlug of expectedBerryAvailabilitySlugsByVersionGroup.keys()) {
    if (!actualBerryAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      errors.push(
        `reference.item_availability: missing source-checked berry availability rows for version group ${versionGroupSlug}.`,
      );
    }
  }

  const zCrystalSlugsById = new Map(
    expectedZCrystalItemSlugs
      .map((slug) => itemsBySlug.get(slug))
      .filter(Boolean)
      .map((item) => [item.id, item.slug]),
  );
  const expectedZCrystalSlugSet = new Set(expectedZCrystalItemSlugs);
  const actualZCrystalAvailabilitySlugsByVersionGroup = new Map();
  let actualZCrystalAvailabilityRowCount = 0;

  for (const row of normalizedAvailabilityRows) {
    const itemSlug = zCrystalSlugsById.get(row.item_id);
    if (!itemSlug) continue;

    actualZCrystalAvailabilityRowCount += 1;

    if (!expectedZCrystalSlugSet.has(itemSlug)) {
      errors.push(
        "reference.item_availability: unexpected Z-Crystal availability item " +
          itemSlug +
          ".",
      );
    }
    if (
      row.game_id !== null ||
      row.availability_method_id !== null ||
      scopeOperation(row) !== "add"
    ) {
      errors.push(
        relative(row.filePath) +
          ": Z-Crystal availability row " +
          itemAvailabilityRowLabel(row) +
          " must remain a source-checked version-group add row without game/method overrides.",
      );
    }

    const versionGroup = versionGroupsById.get(row.version_group_id);
    const versionGroupSlug =
      versionGroup?.slug ?? "unknown-" + row.version_group_id;
    if (!actualZCrystalAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      actualZCrystalAvailabilitySlugsByVersionGroup.set(versionGroupSlug, []);
    }
    actualZCrystalAvailabilitySlugsByVersionGroup
      .get(versionGroupSlug)
      .push(itemSlug);
  }

  if (
    actualZCrystalAvailabilityRowCount !== expectedZCrystalAvailabilityRowCount
  ) {
    errors.push(
      "reference.item_availability: expected " +
        expectedZCrystalAvailabilityRowCount +
        " source-checked Z-Crystal availability rows, got " +
        actualZCrystalAvailabilityRowCount +
        ".",
    );
  }

  for (const [
    versionGroupSlug,
    actualSlugs,
  ] of actualZCrystalAvailabilitySlugsByVersionGroup.entries()) {
    if (
      !expectedZCrystalAvailabilitySlugsByVersionGroup.has(versionGroupSlug)
    ) {
      errors.push(
        "reference.item_availability: unexpected Z-Crystal availability rows for version group " +
          versionGroupSlug +
          ".",
      );
      continue;
    }

    const expectedSlugs =
      expectedZCrystalAvailabilitySlugsByVersionGroup.get(versionGroupSlug);
    const actualSet = new Set(actualSlugs);
    const expectedSet = new Set(expectedSlugs);
    for (const slug of actualSet) {
      if (!expectedSet.has(slug)) {
        errors.push(
          "reference.item_availability: unexpected Z-Crystal " +
            slug +
            " in " +
            versionGroupSlug +
            ".",
        );
      }
    }
    for (const slug of expectedSet) {
      if (!actualSet.has(slug)) {
        errors.push(
          "reference.item_availability: missing Z-Crystal " +
            slug +
            " in " +
            versionGroupSlug +
            ".",
        );
      }
    }
    if (actualSlugs.length !== actualSet.size) {
      errors.push(
        "reference.item_availability: duplicate Z-Crystal availability row in " +
          versionGroupSlug +
          ".",
      );
    }
  }

  for (const versionGroupSlug of expectedZCrystalAvailabilitySlugsByVersionGroup.keys()) {
    if (!actualZCrystalAvailabilitySlugsByVersionGroup.has(versionGroupSlug)) {
      errors.push(
        "reference.item_availability: missing source-checked Z-Crystal availability rows for version group " +
          versionGroupSlug +
          ".",
      );
    }
  }

  for (const [
    categoryLabel,
    expectedFingerprint,
  ] of sourceVerifiedItemCategoryFingerprints.entries()) {
    const scopedRows = normalizedAvailabilityRows.filter((row) => {
      const item = itemsById.get(row.item_id);
      return item && expectedFingerprint.slugs.has(item.slug);
    });
    const actualCount = scopedRows.length;
    const actualFingerprint = itemAvailabilitySourceFingerprint(scopedRows);
    if (
      actualCount !== expectedFingerprint.count ||
      actualFingerprint !== expectedFingerprint.sha256
    ) {
      errors.push(
        "reference.item_availability: " +
          categoryLabel +
          " source-verified fingerprint expected " +
          expectedFingerprint.count +
          "/" +
          expectedFingerprint.sha256 +
          ", got " +
          actualCount +
          "/" +
          actualFingerprint +
          ".",
      );
    }
  }

  for (const { row, filePath } of rows) {
    const label = itemAvailabilityRowLabel(row);

    if (!itemIds.has(row.item_id)) {
      errors.push(
        `${relative(filePath)}: item availability row ${label} references unseeded item_id ${row.item_id}.`,
      );
    }

    if (!versionGroupIds.has(row.version_group_id)) {
      errors.push(
        `${relative(filePath)}: item availability row ${label} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }

    if (
      row.availability_method_id !== null &&
      !methodIds.has(row.availability_method_id)
    ) {
      errors.push(
        `${relative(filePath)}: item availability row ${label} references unseeded availability_method_id ${row.availability_method_id}.`,
      );
    }

    if (row.game_id !== null) {
      const game = gamesById.get(row.game_id);
      if (!game) {
        errors.push(
          `${relative(filePath)}: item availability row ${label} references unseeded game_id ${row.game_id}.`,
        );
      }

      if (!contentScopeKeys.has(`${row.game_id}/${row.version_group_id}`)) {
        errors.push(
          `${relative(filePath)}: item availability row ${label} game_id/version_group_id ${row.game_id}/${row.version_group_id} is not a seeded game content scope.`,
        );
      }
    }
  }

  const availabilityRowsByVersionGroup = new Map();
  for (const { row } of rows) {
    if (!availabilityRowsByVersionGroup.has(row.version_group_id)) {
      availabilityRowsByVersionGroup.set(row.version_group_id, []);
    }
    availabilityRowsByVersionGroup.get(row.version_group_id).push(row);
  }

  for (const versionGroupId of availabilityRowsByVersionGroup.keys()) {
    if (!sourceVerifiedFingerprintsByVersionGroup.has(versionGroupId)) {
      errors.push(
        `reference.item_availability: unexpected rows for version_group_id ${versionGroupId}. Item availability scope should be added only with an explicit source decision and pinned fingerprint.`,
      );
    }
  }

  for (const [
    versionGroupId,
    expectedFingerprint,
  ] of sourceVerifiedFingerprintsByVersionGroup.entries()) {
    const scopedRows = availabilityRowsByVersionGroup.get(versionGroupId) ?? [];
    const actualCount = scopedRows.length;
    const actualFingerprint = itemAvailabilitySourceFingerprint(scopedRows);
    if (
      actualCount !== expectedFingerprint.count ||
      actualFingerprint !== expectedFingerprint.sha256
    ) {
      errors.push(
        `reference.item_availability: version_group_id ${versionGroupId} source-verified item availability fingerprint expected ${expectedFingerprint.count}/${expectedFingerprint.sha256}, got ${actualCount}/${actualFingerprint}.`,
      );
    }
  }
}

function assertNoSourceNotesColumns(tableRows) {
  for (const [tableName, rows] of tableRows) {
    for (const { row, filePath } of rows) {
      if (Object.hasOwn(row, "source_notes")) {
        errors.push(
          `${relative(filePath)}: ${tableName} row ${row.id ?? "(unknown id)"} must not seed source_notes; keep source provenance in SQL comments and docs.`,
        );
      }
    }
  }
}

function assertMoveAvailabilityRows(tableRows) {
  const rows = tableRows.get("reference.move_availability") ?? [];
  const moveRows = tableRows.get("reference.moves") ?? [];
  const versionGroups = tableRows.get("reference.version_groups") ?? [];
  const games = tableRows.get("reference.games") ?? [];
  const contentScopes = tableRows.get("reference.game_content_scopes") ?? [];

  const movesById = mapRowsByColumn(moveRows, "id");
  const versionGroupsById = mapRowsByColumn(versionGroups, "id");
  const gamesById = mapRowsByColumn(games, "id");
  const contentScopeKeys = new Set(
    contentScopes.map(({ row }) => `${row.game_id}/${row.version_group_id}`),
  );

  const expectedCountsByVersionGroup = new Map([
    [1, 165],
    [2, 165],
    [3, 251],
    [4, 251],
    [5, 354],
    [6, 354],
    [7, 354],
    [8, 467],
    [9, 467],
    [10, 467],
    [11, 559],
    [12, 559],
    [13, 617],
    [14, 621],
    [15, 701],
    [16, 710],
    [17, 227],
    [18, 698],
    [21, 512],
    [22, 177],
    [23, 697],
    [26, 340],
  ]);
  const moveIdRange = (minMoveId, maxMoveId) =>
    Array.from(
      { length: maxMoveId - minMoveId + 1 },
      (_, index) => minMoveId + index,
    );
  const moveIdsFromRanges = (ranges) =>
    ranges.flatMap((range) =>
      Array.isArray(range) ? moveIdRange(range[0], range[1]) : [range],
    );
  const genericZMoveRepresentativeIds = moveIdRange(622, 656).filter(
    (moveId) => moveId % 2 === 0,
  );
  const sourceVerifiedCompleteMoveRangesByVersionGroup = new Map([
    [1, { minMoveId: 1, maxMoveId: 165, label: "Red / Blue" }],
    [2, { minMoveId: 1, maxMoveId: 165, label: "Yellow" }],
    [3, { minMoveId: 1, maxMoveId: 251, label: "Gold / Silver" }],
    [4, { minMoveId: 1, maxMoveId: 251, label: "Crystal" }],
    [5, { minMoveId: 1, maxMoveId: 354, label: "Ruby / Sapphire" }],
    [6, { minMoveId: 1, maxMoveId: 354, label: "FireRed / LeafGreen" }],
    [7, { minMoveId: 1, maxMoveId: 354, label: "Emerald" }],
    [8, { minMoveId: 1, maxMoveId: 467, label: "Diamond / Pearl" }],
    [9, { minMoveId: 1, maxMoveId: 467, label: "Platinum" }],
    [10, { minMoveId: 1, maxMoveId: 467, label: "HeartGold / SoulSilver" }],
    [11, { minMoveId: 1, maxMoveId: 559, label: "Black / White" }],
    [12, { minMoveId: 1, maxMoveId: 559, label: "Black 2 / White 2" }],
    [13, { minMoveId: 1, maxMoveId: 617, label: "X / Y" }],
    [
      14,
      { minMoveId: 1, maxMoveId: 621, label: "Omega Ruby / Alpha Sapphire" },
    ],
  ]);
  const sourceVerifiedCompleteMoveSetsByVersionGroup = new Map([
    [
      15,
      {
        label: "Sun / Moon",
        moveIds: [
          ...moveIdRange(1, 621),
          ...genericZMoveRepresentativeIds,
          ...moveIdRange(658, 719),
        ],
      },
    ],
    [
      16,
      {
        label: "Ultra Sun / Ultra Moon",
        moveIds: [
          ...moveIdRange(1, 621),
          ...genericZMoveRepresentativeIds,
          ...moveIdRange(658, 728),
        ],
      },
    ],
    [
      17,
      {
        label: "Let's Go, Pikachu! / Let's Go, Eevee!",
        moveIds: moveIdsFromRanges([
          [1, 165],
          182,
          188,
          200,
          224,
          227,
          231,
          [242, 243],
          247,
          252,
          257,
          261,
          263,
          [269, 270],
          276,
          [280, 281],
          339,
          347,
          355,
          364,
          369,
          389,
          394,
          [398, 399],
          [403, 406],
          417,
          420,
          430,
          438,
          446,
          453,
          483,
          492,
          499,
          [503, 504],
          525,
          529,
          583,
          585,
          [605, 606],
          [729, 742],
        ]),
      },
    ],
    [
      18,
      {
        label: "Sword / Shield",
        moveIds: moveIdsFromRanges([
          1,
          [5, 12],
          [14, 25],
          [28, 40],
          [42, 48],
          [50, 81],
          [83, 95],
          [97, 98],
          [100, 111],
          [113, 116],
          118,
          120,
          [122, 124],
          [126, 127],
          [129, 130],
          [133, 139],
          [141, 144],
          147,
          [150, 157],
          [160, 165],
          [167, 168],
          170,
          [172, 184],
          [186, 192],
          [194, 215],
          217,
          [219, 221],
          [223, 227],
          [229, 236],
          [238, 264],
          [266, 273],
          [275, 286],
          288,
          [291, 292],
          [295, 299],
          [303, 315],
          317,
          319,
          [321, 323],
          [325, 326],
          [328, 345],
          [347, 353],
          [355, 356],
          [359, 362],
          [364, 372],
          [374, 375],
          [379, 380],
          [383, 385],
          [387, 390],
          [392, 425],
          [427, 428],
          430,
          [432, 442],
          444,
          [446, 447],
          [450, 455],
          [457, 463],
          [467, 476],
          [478, 480],
          [482, 484],
          [486, 497],
          [499, 506],
          [508, 515],
          [517, 530],
          [532, 536],
          [538, 546],
          [548, 562],
          [564, 568],
          [570, 592],
          [594, 599],
          [601, 616],
          [618, 620],
          [659, 664],
          [666, 670],
          [673, 685],
          [687, 689],
          [691, 694],
          [704, 718],
          [720, 722],
          [742, 826],
          [10001, 10033],
        ]),
      },
    ],
    [
      21,
      {
        label: "Brilliant Diamond / Shining Pearl",
        moveIds: moveIdsFromRanges([
          1,
          [5, 12],
          [14, 25],
          [28, 40],
          [42, 48],
          [50, 81],
          [83, 95],
          [97, 98],
          [100, 111],
          [113, 116],
          118,
          120,
          [122, 124],
          [126, 127],
          [129, 130],
          [133, 139],
          [141, 144],
          [147, 148],
          [150, 157],
          [160, 168],
          170,
          [172, 184],
          [186, 192],
          [194, 215],
          217,
          [219, 221],
          [223, 227],
          [229, 264],
          [266, 273],
          [275, 286],
          288,
          [291, 292],
          [294, 299],
          [303, 315],
          317,
          319,
          [321, 323],
          [325, 326],
          [328, 345],
          [347, 356],
          [359, 362],
          [364, 372],
          [374, 375],
          [379, 380],
          [383, 385],
          [387, 425],
          [427, 428],
          [430, 442],
          444,
          [446, 455],
          [457, 465],
          [467, 476],
          [478, 480],
          [482, 484],
          [486, 497],
          [499, 506],
          [509, 515],
          517,
          [521, 526],
          [528, 530],
          534,
          536,
          538,
          540,
          542,
          [555, 556],
          562,
          [564, 566],
          568,
          [572, 575],
          577,
          [579, 581],
          [583, 586],
          [589, 590],
          [595, 599],
          602,
          [604, 605],
          [608, 609],
          [611, 612],
          [618, 620],
          [667, 668],
          670,
          [672, 673],
          675,
          679,
          682,
          684,
          692,
          694,
          707,
          710,
          715,
          776,
          791,
        ]),
      },
    ],
    [
      22,
      {
        label: "Pokémon Legends: Arceus",
        moveIds: moveIdsFromRanges([
          [7, 9],
          14,
          16,
          33,
          38,
          40,
          42,
          44,
          [52, 53],
          56,
          [58, 59],
          63,
          71,
          [77, 80],
          [84, 87],
          [93, 95],
          98,
          100,
          102,
          105,
          116,
          120,
          126,
          129,
          135,
          139,
          141,
          145,
          147,
          [150, 151],
          [156, 157],
          161,
          163,
          165,
          172,
          181,
          183,
          [188, 191],
          196,
          200,
          [205, 206],
          209,
          224,
          231,
          237,
          239,
          242,
          [246, 247],
          249,
          301,
          310,
          [314, 315],
          318,
          326,
          332,
          334,
          337,
          339,
          [344, 345],
          [347, 348],
          352,
          355,
          370,
          394,
          396,
          [398, 401],
          [403, 406],
          [408, 409],
          [412, 414],
          [416, 418],
          [420, 428],
          430,
          434,
          437,
          440,
          442,
          444,
          446,
          449,
          [451, 453],
          [457, 460],
          [462, 467],
          474,
          491,
          506,
          [522, 523],
          528,
          542,
          [555, 556],
          577,
          [583, 585],
          595,
          605,
          608,
          667,
          670,
          710,
          796,
          [827, 850],
        ]),
      },
    ],
    [
      23,
      {
        label: "Scarlet / Violet",
        moveIds: moveIdsFromRanges([
          1,
          [5, 12],
          [14, 25],
          [28, 40],
          [42, 48],
          [50, 65],
          [67, 81],
          [83, 95],
          [97, 98],
          [100, 111],
          [113, 116],
          118,
          120,
          [122, 124],
          [126, 127],
          129,
          133,
          [135, 139],
          141,
          [143, 144],
          147,
          [150, 154],
          [156, 157],
          [160, 168],
          [172, 184],
          [186, 189],
          [191, 192],
          [194, 215],
          217,
          [219, 221],
          [223, 227],
          [229, 232],
          [234, 236],
          [238, 257],
          [259, 264],
          266,
          [268, 273],
          [275, 276],
          278,
          [280, 286],
          [291, 292],
          [294, 299],
          [303, 311],
          [313, 315],
          317,
          319,
          [321, 323],
          [325, 326],
          [328, 345],
          [347, 356],
          [359, 362],
          [364, 372],
          374,
          [379, 380],
          [383, 385],
          [387, 425],
          [427, 428],
          430,
          [432, 442],
          444,
          [446, 447],
          [449, 455],
          [457, 465],
          [467, 474],
          476,
          [478, 479],
          [482, 484],
          [486, 497],
          [499, 506],
          [508, 515],
          [517, 529],
          [532, 535],
          [538, 542],
          [547, 560],
          562,
          [564, 566],
          568,
          [570, 577],
          [580, 581],
          [583, 587],
          [589, 598],
          [602, 611],
          [618, 621],
          [659, 670],
          672,
          [675, 676],
          [678, 684],
          686,
          [688, 694],
          [705, 707],
          [709, 711],
          [713, 716],
          722,
          [744, 752],
          756,
          [775, 778],
          [780, 791],
          793,
          [796, 919],
        ]),
      },
    ],
    [
      26,
      {
        label: "Pokémon Legends: Z-A",
        moveIds: moveIdsFromRanges([
          4,
          [6, 9],
          [13, 14],
          [16, 19],
          22,
          29,
          [33, 34],
          36,
          [38, 40],
          [42, 48],
          [52, 61],
          [63, 64],
          71,
          [73, 81],
          [83, 95],
          [97, 98],
          100,
          [102, 106],
          [108, 109],
          [113, 116],
          118,
          120,
          122,
          [126, 127],
          [129, 130],
          133,
          [137, 138],
          141,
          143,
          147,
          [150, 151],
          153,
          155,
          157,
          [160, 164],
          172,
          174,
          176,
          [182, 183],
          188,
          [191, 192],
          [195, 197],
          200,
          [202, 207],
          209,
          211,
          219,
          [223, 225],
          [231, 232],
          [234, 236],
          239,
          242,
          [245, 250],
          252,
          257,
          259,
          261,
          263,
          [268, 269],
          273,
          280,
          282,
          [295, 297],
          299,
          [304, 305],
          [307, 308],
          313,
          315,
          [317, 319],
          325,
          [328, 334],
          [337, 341],
          [344, 345],
          [347, 348],
          350,
          352,
          [369, 370],
          377,
          390,
          392,
          394,
          396,
          [398, 400],
          [402, 414],
          [416, 418],
          [420, 425],
          [427, 428],
          430,
          [434, 438],
          [441, 444],
          446,
          [451, 453],
          [457, 458],
          [463, 464],
          466,
          473,
          480,
          482,
          484,
          488,
          [490, 491],
          503,
          509,
          521,
          [523, 524],
          [526, 530],
          [532, 533],
          535,
          538,
          540,
          542,
          [546, 548],
          [555, 556],
          560,
          564,
          [566, 567],
          [570, 571],
          [573, 577],
          [583, 586],
          588,
          [591, 596],
          598,
          601,
          605,
          609,
          [611, 621],
          [659, 660],
          665,
          [669, 670],
          679,
          687,
          693,
          [705, 706],
          708,
          710,
          712,
          721,
          742,
          748,
          753,
          [783, 784],
          786,
          794,
          796,
          [799, 800],
          [812, 815],
          830,
          839,
          854,
          856,
          858,
          862,
          864,
          866,
          874,
          880,
          [885, 886],
          [889, 891],
          893,
          920,
        ]),
      },
    ],
  ]);

  if (rows.length !== 9713) {
    errors.push(
      `reference.move_availability: expected 9713 curated move availability rows, got ${rows.length}.`,
    );
  }

  addCompositeDuplicateErrors(
    "reference.move_availability",
    rows.filter(({ row }) => row.game_id === null),
    "move_id/version_group_id where game_id IS NULL",
    (row) => `${row.move_id}/${row.version_group_id}`,
  );
  addCompositeDuplicateErrors(
    "reference.move_availability",
    rows.filter(({ row }) => row.game_id !== null),
    "move_id/version_group_id/game_id where game_id IS NOT NULL",
    (row) => `${row.move_id}/${row.version_group_id}/${row.game_id}`,
  );

  const countsByVersionGroup = new Map();
  for (const { row } of rows) {
    countsByVersionGroup.set(
      row.version_group_id,
      (countsByVersionGroup.get(row.version_group_id) ?? 0) + 1,
    );
  }
  for (const [
    versionGroupId,
    expectedCount,
  ] of expectedCountsByVersionGroup.entries()) {
    const actualCount = countsByVersionGroup.get(versionGroupId) ?? 0;
    if (actualCount !== expectedCount) {
      errors.push(
        `reference.move_availability: version_group_id ${versionGroupId} expected ${expectedCount} rows, got ${actualCount}.`,
      );
    }
  }

  const seededVersionGroupIds = new Set(versionGroups.map(({ row }) => row.id));
  for (const versionGroupId of countsByVersionGroup.keys()) {
    if (
      !expectedCountsByVersionGroup.has(versionGroupId) &&
      seededVersionGroupIds.has(versionGroupId)
    ) {
      errors.push(
        `reference.move_availability: unexpected rows for version_group_id ${versionGroupId}. Optional DLC move scope should be added only with an explicit source decision.`,
      );
    }
  }

  for (const [
    versionGroupId,
    expectedRange,
  ] of sourceVerifiedCompleteMoveRangesByVersionGroup.entries()) {
    const actualMoveIds = rows
      .filter(
        ({ row }) =>
          row.version_group_id === versionGroupId && row.game_id === null,
      )
      .map(({ row }) => row.move_id)
      .sort((a, b) => a - b);
    const expectedMoveIds = moveIdRange(
      expectedRange.minMoveId,
      expectedRange.maxMoveId,
    );

    if (actualMoveIds.join("|") !== expectedMoveIds.join("|")) {
      errors.push(
        `reference.move_availability: ${expectedRange.label} source-verified complete move range expected ${expectedRange.minMoveId}-${expectedRange.maxMoveId}, got [${actualMoveIds.join(", ")}].`,
      );
    }
  }

  for (const [
    versionGroupId,
    expectedSet,
  ] of sourceVerifiedCompleteMoveSetsByVersionGroup.entries()) {
    const actualMoveIds = rows
      .filter(
        ({ row }) =>
          row.version_group_id === versionGroupId && row.game_id === null,
      )
      .map(({ row }) => row.move_id)
      .sort((a, b) => a - b);

    if (actualMoveIds.join("|") !== expectedSet.moveIds.join("|")) {
      errors.push(
        `reference.move_availability: ${expectedSet.label} source-verified complete move set expected [${expectedSet.moveIds.join(", ")}], got [${actualMoveIds.join(", ")}].`,
      );
    }
  }

  const zMoveVersionGroupIds = new Set([15, 16]);
  const maxMoveVersionGroupIds = new Set([18]);
  const gMaxMoveVersionGroupIds = new Set([18]);

  for (const { row, filePath } of rows) {
    const label = moveAvailabilityRowLabel(row);
    const move = movesById.get(row.move_id);
    if (!move) {
      errors.push(
        `${relative(filePath)}: move availability row ${label} references unseeded move_id ${row.move_id}.`,
      );
      continue;
    }

    const versionGroup = versionGroupsById.get(row.version_group_id);
    if (!versionGroup) {
      errors.push(
        `${relative(filePath)}: move availability row ${label} references unseeded version_group_id ${row.version_group_id}.`,
      );
      continue;
    }

    if (versionGroup.generation_id < move.introduced_generation_id) {
      errors.push(
        `${relative(filePath)}: move availability row ${label} makes move ${move.slug} available before its introduced generation.`,
      );
    }

    if (scopeOperation(row) !== "add") {
      errors.push(
        `${relative(filePath)}: move availability row ${label} must remain a positive add row until a source-backed remove/override move scope is explicitly modeled.`,
      );
    }
    if (row.game_id !== null) {
      errors.push(
        `${relative(filePath)}: move availability row ${label} uses game_id ${row.game_id}, but the current audited move availability scope is version-group-wide only. Add a source decision before seeding game-specific move availability.`,
      );
    }

    if (
      move.move_kind_id === 2 &&
      !zMoveVersionGroupIds.has(row.version_group_id)
    ) {
      errors.push(
        `${relative(filePath)}: Z-Move ${move.slug} is only expected in Sun/Moon or Ultra Sun/Ultra Moon availability.`,
      );
    }
    if (
      move.move_kind_id === 3 &&
      !maxMoveVersionGroupIds.has(row.version_group_id)
    ) {
      errors.push(
        `${relative(filePath)}: Max Move ${move.slug} is only expected in Sword/Shield availability.`,
      );
    }
    if (
      move.move_kind_id === 4 &&
      !gMaxMoveVersionGroupIds.has(row.version_group_id)
    ) {
      errors.push(
        `${relative(filePath)}: G-Max Move ${move.slug} is only expected in Sword/Shield availability.`,
      );
    }

    if (row.game_id !== null) {
      const game = gamesById.get(row.game_id);
      if (!game) {
        errors.push(
          `${relative(filePath)}: move availability row ${label} references unseeded game_id ${row.game_id}.`,
        );
      }

      if (!contentScopeKeys.has(`${row.game_id}/${row.version_group_id}`)) {
        errors.push(
          `${relative(filePath)}: move availability row ${label} game_id/version_group_id ${row.game_id}/${row.version_group_id} is not a seeded game content scope.`,
        );
      }
    }
  }
}

function assertMoveMachineRows(tableRows) {
  const rows = tableRows.get("reference.move_machines") ?? [];
  const moveRows = tableRows.get("reference.moves") ?? [];
  const versionGroupRows = tableRows.get("reference.version_groups") ?? [];
  const dependencyRows =
    tableRows.get("reference.content_scope_dependencies") ?? [];
  const gameRows = tableRows.get("reference.games") ?? [];
  const methodRows = tableRows.get("reference.learn_methods") ?? [];
  const contentScopeRows = tableRows.get("reference.game_content_scopes") ?? [];
  const moveAvailabilityRows =
    tableRows.get("reference.move_availability") ?? [];

  const movesById = mapRowsByColumn(moveRows, "id");
  const versionGroupsById = mapRowsByColumn(versionGroupRows, "id");
  const gamesById = mapRowsByColumn(gameRows, "id");
  const methodsById = mapRowsByColumn(methodRows, "id");
  const methodsBySlug = mapRowsByColumn(methodRows, "slug");
  const machineMethodIds = new Set(
    [
      methodsBySlug.get("tm")?.id,
      methodsBySlug.get("hm")?.id,
      methodsBySlug.get("tr")?.id,
    ].filter((id) => id !== undefined),
  );
  const methodLabelPatterns = new Map([
    [methodsBySlug.get("tm")?.id, /^TM[0-9]{2,3}$/],
    [methodsBySlug.get("hm")?.id, /^HM[0-9]{2}$/],
    [methodsBySlug.get("tr")?.id, /^TR[0-9]{2}$/],
  ]);
  const contentScopeKeys = new Set(
    contentScopeRows.map(({ row }) => `${row.game_id}/${row.version_group_id}`),
  );
  const moveAvailabilityKeys = new Set(
    moveAvailabilityRows.map(
      ({ row }) =>
        `${row.move_id}/${row.version_group_id}/${row.game_id ?? "vg"}`,
    ),
  );
  const hasMoveAvailability = (moveId, versionGroupId, gameId) => {
    for (const currentVersionGroupId of collectVersionGroupClosureIds(
      versionGroupsById,
      dependencyRows,
      versionGroupId,
    )) {
      if (
        moveAvailabilityKeys.has(
          `${moveId}/${currentVersionGroupId}/${gameId ?? "vg"}`,
        )
      )
        return true;
      if (moveAvailabilityKeys.has(`${moveId}/${currentVersionGroupId}/vg`))
        return true;
    }
    return false;
  };

  const expectedCountsByVersionGroup = new Map([
    [1, 55],
    [2, 55],
    [3, 57],
    [4, 57],
    [5, 58],
    [6, 57],
    [7, 58],
    [8, 100],
    [9, 100],
    [10, 100],
    [11, 101],
    [12, 101],
    [13, 105],
    [14, 107],
    [15, 100],
    [16, 100],
    [17, 60],
    [18, 200],
    [19, 0],
    [20, 0],
    [21, 100],
    [23, 171],
    [24, 30],
    [25, 28],
    [26, 160],
  ]);
  const sourceVerifiedFingerprintsByVersionGroup = new Map([
    [
      1,
      {
        count: 55,
        sha256:
          "bb5e3dda5f4f089d3c54ee8fb52358e02a3503dbf5d92e527160fb08175104fe",
      },
    ],
    [
      2,
      {
        count: 55,
        sha256:
          "bb5e3dda5f4f089d3c54ee8fb52358e02a3503dbf5d92e527160fb08175104fe",
      },
    ],
    [
      3,
      {
        count: 57,
        sha256:
          "a9798bccd6fabcd8b7af2a83c6bc7229a2079870f8640d3c15fe6507dab6575c",
      },
    ],
    [
      4,
      {
        count: 57,
        sha256:
          "a9798bccd6fabcd8b7af2a83c6bc7229a2079870f8640d3c15fe6507dab6575c",
      },
    ],
    [
      5,
      {
        count: 58,
        sha256:
          "28ea6af103fc375a092477d068d025b18795f3a3861883a109d1eb08901c3350",
      },
    ],
    [
      6,
      {
        count: 57,
        sha256:
          "575d7a03b2862eee19892151074029b1929bd9e0373a723c153c43f1cc4a9e9c",
      },
    ],
    [
      7,
      {
        count: 58,
        sha256:
          "28ea6af103fc375a092477d068d025b18795f3a3861883a109d1eb08901c3350",
      },
    ],
    [
      8,
      {
        count: 100,
        sha256:
          "d198003bfbdd42d695f217c46e2b3e1235c40ce54a3b9c44d3625ce54da8ac4c",
      },
    ],
    [
      9,
      {
        count: 100,
        sha256:
          "d198003bfbdd42d695f217c46e2b3e1235c40ce54a3b9c44d3625ce54da8ac4c",
      },
    ],
    [
      10,
      {
        count: 100,
        sha256:
          "08cb4febad957bc4726eff1c4904caf8b334f651e7c418a67ba8f930f766ecf5",
      },
    ],
    [
      11,
      {
        count: 101,
        sha256:
          "74db78f9db36334e792699c300ca2f5e6192bc31fa443af377ecd62503631550",
      },
    ],
    [
      12,
      {
        count: 101,
        sha256:
          "74db78f9db36334e792699c300ca2f5e6192bc31fa443af377ecd62503631550",
      },
    ],
    [
      13,
      {
        count: 105,
        sha256:
          "e1696e8ceb6bba648ac31747404884ab02945d2a34400e77d8df0f771efbc5b4",
      },
    ],
    [
      14,
      {
        count: 107,
        sha256:
          "b8f625374dbdecaf6ab4fa9dc56da2055044e1c55ae50efee0d855055ef9ae66",
      },
    ],
    [
      15,
      {
        count: 100,
        sha256:
          "3ab67a1e22d54e361db82423511c7339f9565a513033d09f4128fe18c17e1d32",
      },
    ],
    [
      16,
      {
        count: 100,
        sha256:
          "3ab67a1e22d54e361db82423511c7339f9565a513033d09f4128fe18c17e1d32",
      },
    ],
    [
      17,
      {
        count: 60,
        sha256:
          "78f794c660d7dc62156fcf8c81b42abe12c5f1fce27a116562b8106f860f5edb",
      },
    ],
    [
      18,
      {
        count: 200,
        sha256:
          "e135d0a2affd74f2e7b84e681c25cb6eeb6dfcea069a2267206d1b492d291d6d",
      },
    ],
    [
      21,
      {
        count: 100,
        sha256:
          "222c58504ecacfdfdb8d87b4b358df987f6732f9ce8013b3475d54fc8ebc30ea",
      },
    ],
    [
      23,
      {
        count: 171,
        sha256:
          "f9c0302a0cc5b916b052f66bfbb6760bafe018e7507fb35c1d5c1ef1168232d8",
      },
    ],
    [
      24,
      {
        count: 30,
        sha256:
          "20461c8ef78beb0bf682c127e2ea80b4aab96de7684b1931101e9a03b22c6a42",
      },
    ],
    [
      25,
      {
        count: 28,
        sha256:
          "f760829ef84e656420a57f7cf898465337c37faada608d8af9085fa4bef17ce6",
      },
    ],
    [
      26,
      {
        count: 160,
        sha256:
          "113af21815d27e4a0ec731a8805994cc18090f19891fe0e5ebdf58a770963a66",
      },
    ],
  ]);
  const moveMachineMappingFingerprint = (machineRows) =>
    createHash("sha256")
      .update(
        machineRows
          .toSorted(
            (a, b) =>
              (a.game_id ?? 0) - (b.game_id ?? 0) ||
              a.learn_method_id - b.learn_method_id ||
              String(a.machine_label).localeCompare(String(b.machine_label)),
          )
          .map(
            (row) =>
              `${row.game_id ?? "vg"}:${row.learn_method_id}:${row.machine_label}:${row.move_id}`,
          )
          .join("|"),
      )
      .digest("hex");
  const countsByVersionGroup = new Map();
  for (const { row } of rows) {
    countsByVersionGroup.set(
      row.version_group_id,
      (countsByVersionGroup.get(row.version_group_id) ?? 0) + 1,
    );
  }
  for (const [
    versionGroupId,
    expectedCount,
  ] of expectedCountsByVersionGroup.entries()) {
    const actualCount = countsByVersionGroup.get(versionGroupId) ?? 0;
    if (actualCount !== expectedCount) {
      errors.push(
        `reference.move_machines: version_group_id ${versionGroupId} expected ${expectedCount} rows, got ${actualCount}.`,
      );
    }
  }
  const seededVersionGroupIds = new Set(
    versionGroupRows.map(({ row }) => row.id),
  );
  for (const versionGroupId of countsByVersionGroup.keys()) {
    if (
      !expectedCountsByVersionGroup.has(versionGroupId) &&
      seededVersionGroupIds.has(versionGroupId)
    ) {
      errors.push(
        `reference.move_machines: unexpected rows for version_group_id ${versionGroupId}. Machine catalog scope should be added only with an explicit source decision.`,
      );
    }
  }
  for (const [
    versionGroupId,
    expectedFingerprint,
  ] of sourceVerifiedFingerprintsByVersionGroup.entries()) {
    const scopedRows = rows
      .filter(({ row }) => row.version_group_id === versionGroupId)
      .map(({ row }) => row);
    const actualCount = scopedRows.length;
    const actualFingerprint = moveMachineMappingFingerprint(scopedRows);
    if (
      actualCount !== expectedFingerprint.count ||
      actualFingerprint !== expectedFingerprint.sha256
    ) {
      errors.push(
        `reference.move_machines: version_group_id ${versionGroupId} source-verified machine mapping fingerprint expected ${expectedFingerprint.count}/${expectedFingerprint.sha256}, got ${actualCount}/${actualFingerprint}.`,
      );
    }
  }

  addCompositeDuplicateErrors(
    "reference.move_machines",
    rows.filter(({ row }) => row.game_id === null),
    "version_group_id/learn_method_id/machine_label where game_id IS NULL",
    (row) =>
      `${row.version_group_id}/${row.learn_method_id}/${row.machine_label}`,
  );
  addCompositeDuplicateErrors(
    "reference.move_machines",
    rows.filter(({ row }) => row.game_id !== null),
    "version_group_id/game_id/learn_method_id/machine_label where game_id IS NOT NULL",
    (row) =>
      `${row.version_group_id}/${row.game_id}/${row.learn_method_id}/${row.machine_label}`,
  );
  assertScopedContiguousSortOrder(
    "reference.move_machines",
    rows,
    "version_group_id/game_id",
    (row) => `${row.version_group_id}/${row.game_id ?? "vg"}`,
  );

  for (const { row, filePath } of rows) {
    const label = moveMachineRowLabel(row);
    const expectedId = expectedMoveMachineId(row);
    if (expectedId !== null && row.id !== expectedId) {
      errors.push(
        `${relative(filePath)}: move machine ${label} expected deterministic id ${expectedId}, got ${row.id}.`,
      );
    }

    const move = movesById.get(row.move_id);
    if (!move) {
      errors.push(
        `${relative(filePath)}: move machine ${label} references unseeded move_id ${row.move_id}.`,
      );
    }

    const versionGroup = versionGroupsById.get(row.version_group_id);
    if (!versionGroup) {
      errors.push(
        `${relative(filePath)}: move machine ${label} references unseeded version_group_id ${row.version_group_id}.`,
      );
    } else if (
      move &&
      versionGroup.generation_id < move.introduced_generation_id
    ) {
      errors.push(
        `${relative(filePath)}: move machine ${label} assigns move ${move.slug} before its introduced generation.`,
      );
    }

    if (!machineMethodIds.has(row.learn_method_id)) {
      errors.push(
        `${relative(filePath)}: move machine ${label} must use TM/HM/TR learn_method_id, got ${row.learn_method_id}.`,
      );
    }

    const labelPattern = methodLabelPatterns.get(row.learn_method_id);
    if (!labelPattern || !labelPattern.test(row.machine_label)) {
      const method =
        methodsById.get(row.learn_method_id)?.slug ?? row.learn_method_id;
      errors.push(
        `${relative(filePath)}: move machine ${label} has machine_label ${row.machine_label} that does not match method ${method}.`,
      );
    }

    if (row.game_id !== null) {
      if (!gamesById.has(row.game_id)) {
        errors.push(
          `${relative(filePath)}: move machine ${label} references unseeded game_id ${row.game_id}.`,
        );
      }
      if (!contentScopeKeys.has(`${row.game_id}/${row.version_group_id}`)) {
        errors.push(
          `${relative(filePath)}: move machine ${label} game_id/version_group_id ${row.game_id}/${row.version_group_id} is not a seeded game content scope.`,
        );
      }
    }

    if (
      move &&
      versionGroup &&
      !hasMoveAvailability(row.move_id, row.version_group_id, row.game_id)
    ) {
      errors.push(
        `${relative(filePath)}: move machine ${label} references move ${move.slug}, which is not available in version_group_id ${row.version_group_id}.`,
      );
    }
  }

  const machineRowsByVersionGroup = new Map();
  for (const { row } of rows) {
    if (!machineRowsByVersionGroup.has(row.version_group_id)) {
      machineRowsByVersionGroup.set(row.version_group_id, []);
    }
    machineRowsByVersionGroup.get(row.version_group_id).push(row);
  }

  for (const { row, filePath } of rows) {
    if (scopeOperation(row) !== "add") continue;
    const priorScopeIds = [
      ...collectVersionGroupClosureIds(
        versionGroupsById,
        dependencyRows,
        row.version_group_id,
      ),
    ].filter((versionGroupId) => versionGroupId !== row.version_group_id);
    const key = `${row.game_id ?? "vg"}/${row.learn_method_id}/${row.machine_label}`;
    for (const priorScopeId of priorScopeIds) {
      const duplicate = (
        machineRowsByVersionGroup.get(priorScopeId) ?? []
      ).find(
        (priorRow) =>
          `${priorRow.game_id ?? "vg"}/${priorRow.learn_method_id}/${priorRow.machine_label}` ===
          key,
      );
      if (duplicate) {
        errors.push(
          `${relative(filePath)}: move machine ${moveMachineRowLabel(row)} duplicates parent/dependency scope machine ${moveMachineRowLabel(duplicate)}; child content scopes should seed only delta rows unless using override/remove.`,
        );
        break;
      }
    }
  }
}
function assertPokemonLearnsetRows(tableRows) {
  const rows = tableRows.get("reference.pokemon_learnsets") ?? [];
  if (rows.length === 0) return;

  const speciesRows = tableRows.get("reference.pokemon_species") ?? [];
  const formRows = tableRows.get("reference.pokemon_forms") ?? [];
  const moveRows = tableRows.get("reference.moves") ?? [];
  const versionGroupRows = tableRows.get("reference.version_groups") ?? [];
  const dependencyRows =
    tableRows.get("reference.content_scope_dependencies") ?? [];
  const gameRows = tableRows.get("reference.games") ?? [];
  const methodRows = tableRows.get("reference.learn_methods") ?? [];
  const itemRows = tableRows.get("reference.items") ?? [];
  const contentScopeRows = tableRows.get("reference.game_content_scopes") ?? [];
  const moveAvailabilityRows =
    tableRows.get("reference.move_availability") ?? [];
  const moveMachineRows = tableRows.get("reference.move_machines") ?? [];

  const speciesIds = new Set(speciesRows.map(({ row }) => row.id));
  const formKeys = new Set(
    formRows.map(({ row }) => `${row.species_id}/${row.id}`),
  );
  const movesById = mapRowsByColumn(moveRows, "id");
  const versionGroupsById = mapRowsByColumn(versionGroupRows, "id");
  const gamesById = mapRowsByColumn(gameRows, "id");
  const methodsById = mapRowsByColumn(methodRows, "id");
  const methodsBySlug = mapRowsByColumn(methodRows, "slug");
  const itemIds = new Set(itemRows.map(({ row }) => row.id));
  const contentScopeKeys = new Set(
    contentScopeRows.map(({ row }) => `${row.game_id}/${row.version_group_id}`),
  );
  const moveAvailabilityKeys = new Set(
    moveAvailabilityRows.map(
      ({ row }) =>
        `${row.move_id}/${row.version_group_id}/${row.game_id ?? "vg"}`,
    ),
  );
  const moveMachinesById = mapRowsByColumn(moveMachineRows, "id");

  const levelUpMethodId = methodsBySlug.get("level_up")?.id;
  const machineMethodPrefixes = new Map([
    [methodsBySlug.get("tm")?.id, /^TM[0-9]{2,3}$/],
    [methodsBySlug.get("hm")?.id, /^HM[0-9]{2}$/],
    [methodsBySlug.get("tr")?.id, /^TR[0-9]{2}$/],
  ]);
  const documentedExceptionMethodIds = new Set(
    [methodsBySlug.get("event")?.id, methodsBySlug.get("transfer")?.id].filter(
      (id) => id !== undefined,
    ),
  );
  const sourceVerifiedFingerprintsByVersionGroup = new Map([
    [
      1,
      {
        count: 4127,
        sha256:
          "4e1a6a98c773dd728813de1b92a2c1e95eba7dd2a2a4fb16537fb7dffed3013e",
      },
    ],
    [
      2,
      {
        count: 4152,
        sha256:
          "ff13aa74737170c4d1ac99cfc9504328c4cefc114c8cdc292b2d3269434db4c2",
      },
    ],
    [
      3,
      {
        count: 9054,
        sha256:
          "0a444f9157f5be3b5b65cddce037b01a7fd5cc0a46941b21eec23603c737af73",
      },
    ],
    [
      4,
      {
        count: 9288,
        sha256:
          "a5e6ba654f996dcddd11171791368de56778c9b8d9f10bf3ba14093b2cd0c7f7",
      },
    ],
    [
      5,
      {
        count: 13852,
        sha256:
          "64e51b42c81b0b8c55b1bf132595451e2fb692e7f9f5f453e900d48153be551d",
      },
    ],
    [
      6,
      {
        count: 16325,
        sha256:
          "1db8b1ea341a4c6a9e706bfe89bc209cff88ad0eae3ea346b57047fdc67e5ad8",
      },
    ],
    [
      7,
      {
        count: 19195,
        sha256:
          "4b862a2fd1392caf521727eb56f0a39aefc23af70f34b0422197f6674b2a7db4",
      },
    ],
    [
      8,
      {
        count: 26310,
        sha256:
          "9037d29c7d350829ebd319b1db53336be943e813344053ba888c8c7254553e8f",
      },
    ],
    [
      9,
      {
        count: 30857,
        sha256:
          "660973cdcfb4b1083a29617b5d124caf1b8b13c19e4181fb1950bd93416b17c1",
      },
    ],
    [
      10,
      {
        count: 32053,
        sha256:
          "0bad8e498e2bbbb6f015a35e814baace2b4c109b671bcffd2884ad98132dcac3",
      },
    ],
    [
      11,
      {
        count: 33580,
        sha256:
          "a1ba9963e3b72a6f98f16e3cd5f9407c6d2dd352c4d0d455437dbad0dbe8a529",
      },
    ],
    [
      12,
      {
        count: 41267,
        sha256:
          "c2f4121779240356022cd39dec9d3bc893ffad7866ba553281d88468ffab3dc5",
      },
    ],
    [
      13,
      {
        count: 40541,
        sha256:
          "6838d6422c6827d84554d327f8ad0936916c3ba02426555a082bdf3a76447608",
      },
    ],
    [
      14,
      {
        count: 49620,
        sha256:
          "ba9538a4ad999bafda90c545f6b9e6381fa2a0c33b688f940c0fc7bf55f35555",
      },
    ],
    [
      15,
      {
        count: 44348,
        sha256:
          "2e2eaac4ef6f1854cfd676de90c310d17e28ade10218ee9e5909c7bbfb892a74",
      },
    ],
    [
      16,
      {
        count: 54989,
        sha256:
          "7c0d9563974321046ccd44696f51bedcaa146ffd65aee331a9d955cde117fe42",
      },
    ],
    [
      17,
      {
        count: 5193,
        sha256:
          "cba184924f33d18a7a05b0aaf25f5bf35d9ef7606ceb475d522b7114d01e0bff",
      },
    ],
    [
      18,
      {
        count: 44520,
        sha256:
          "2712fb71edcff83361f1a4bd98253b333ee3e82ac1a15d02f869de4a2299c09b",
      },
    ],
    [
      19,
      {
        count: 972,
        sha256:
          "e518a5addb0007d72c3f920e3573c163f7acea4a925c390427a759ac7bbe5027",
      },
    ],
    [
      21,
      {
        count: 27086,
        sha256:
          "29a5c44f438ed87e274e6fda566d26e7493926b84044684746ac155997941d4f",
      },
    ],
    [
      22,
      {
        count: 6257,
        sha256:
          "fbb4b41d1116a7b945207fb40597db4a3c6fc021e142a7391cc95b4ded1f5c02",
      },
    ],
    [
      23,
      {
        count: 47045,
        sha256:
          "c4385b0135b8b1df07adb22c2e15d29a0da2f0d597658a7313e0f8b8968706ca",
      },
    ],
    [
      24,
      {
        count: 2166,
        sha256:
          "43585e3078f44f4ec9ce210998fa8e5a9cde1ca90b4ac2d99b6462ca362d136a",
      },
    ],
    [
      25,
      {
        count: 3233,
        sha256:
          "1a2ae2114a939b3bc85a82f16d48eacbf4524719af9941d3b627b57feaa438ef",
      },
    ],
    [
      26,
      {
        count: 10232,
        sha256:
          "9c751d79c65e23262e94778b4ad1ef10481106fc487c7295eae25a7e962ad5be",
      },
    ],
    [
      27,
      {
        count: 7086,
        sha256:
          "9b9d13ae9dc22695a8b6fecd7431d29d4bd9890b8b8ab08c41fd68b2c481a6a8",
      },
    ],
  ]);
  const learnsetSourceFingerprint = (learnsetRows) =>
    createHash("sha256")
      .update(
        learnsetRows
          .toSorted(
            (a, b) =>
              a.species_id - b.species_id ||
              a.form_id - b.form_id ||
              a.move_id - b.move_id ||
              a.version_group_id - b.version_group_id ||
              (a.game_id ?? 0) - (b.game_id ?? 0) ||
              a.learn_method_id - b.learn_method_id ||
              (a.level_learned_at ?? 0) - (b.level_learned_at ?? 0) ||
              (a.source_item_id ?? 0) - (b.source_item_id ?? 0) ||
              (a.move_machine_id ?? 0) - (b.move_machine_id ?? 0) ||
              sourceFingerprintString(a.condition_summary).localeCompare(
                sourceFingerprintString(b.condition_summary),
              ),
          )
          .map((row) =>
            [
              row.species_id,
              row.form_id,
              row.move_id,
              row.version_group_id,
              row.game_id ?? "vg",
              row.learn_method_id,
              row.level_learned_at ?? 0,
              row.source_item_id ?? 0,
              row.move_machine_id ?? 0,
              sourceFingerprintString(row.condition_summary),
            ].join("/"),
          )
          .join("|"),
      )
      .digest("hex");

  addCompositeDuplicateErrors(
    "reference.pokemon_learnsets",
    rows.filter(({ row }) => row.game_id === null),
    "species_id/form_id/move_id/version_group_id/learn_method_id/level/source_item/move_machine where game_id IS NULL",
    (row) =>
      `${row.species_id}/${row.form_id}/${row.move_id}/${row.version_group_id}/${row.learn_method_id}/${row.level_learned_at ?? 0}/${row.source_item_id ?? 0}/${row.move_machine_id ?? 0}`,
  );
  addCompositeDuplicateErrors(
    "reference.pokemon_learnsets",
    rows.filter(({ row }) => row.game_id !== null),
    "species_id/form_id/move_id/version_group_id/game_id/learn_method_id/level/source_item/move_machine where game_id IS NOT NULL",
    (row) =>
      `${row.species_id}/${row.form_id}/${row.move_id}/${row.version_group_id}/${row.game_id}/${row.learn_method_id}/${row.level_learned_at ?? 0}/${row.source_item_id ?? 0}/${row.move_machine_id ?? 0}`,
  );
  assertScopedContiguousSortOrder(
    "reference.pokemon_learnsets",
    rows,
    "species_id/form_id/version_group_id/game_id",
    (row) =>
      `${row.species_id}/${row.form_id}/${row.version_group_id}/${row.game_id ?? "vg"}`,
  );

  const hasMoveAvailability = (moveId, versionGroupId, gameId) => {
    for (const currentVersionGroupId of collectVersionGroupClosureIds(
      versionGroupsById,
      dependencyRows,
      versionGroupId,
    )) {
      if (
        moveAvailabilityKeys.has(
          `${moveId}/${currentVersionGroupId}/${gameId ?? "vg"}`,
        )
      )
        return true;
      if (moveAvailabilityKeys.has(`${moveId}/${currentVersionGroupId}/vg`))
        return true;
    }
    return false;
  };

  for (const { row, filePath } of rows) {
    const label = pokemonLearnsetRowLabel(row);

    if (!speciesIds.has(row.species_id)) {
      errors.push(
        `${relative(filePath)}: Pokémon learnset row ${label} references unseeded species_id ${row.species_id}.`,
      );
    }

    if (!formKeys.has(`${row.species_id}/${row.form_id}`)) {
      errors.push(
        `${relative(filePath)}: Pokémon learnset row ${label} has invalid species/form pair ${row.species_id}/${row.form_id}.`,
      );
    }

    const move = movesById.get(row.move_id);
    if (!move) {
      errors.push(
        `${relative(filePath)}: Pokémon learnset row ${label} references unseeded move_id ${row.move_id}.`,
      );
    }

    const versionGroup = versionGroupsById.get(row.version_group_id);
    if (!versionGroup) {
      errors.push(
        `${relative(filePath)}: Pokémon learnset row ${label} references unseeded version_group_id ${row.version_group_id}.`,
      );
    } else if (
      move &&
      versionGroup.generation_id < move.introduced_generation_id
    ) {
      errors.push(
        `${relative(filePath)}: Pokémon learnset row ${label} teaches move ${move.slug} before its introduced generation.`,
      );
    }

    const method = methodsById.get(row.learn_method_id);
    if (!method) {
      errors.push(
        `${relative(filePath)}: Pokémon learnset row ${label} references unseeded learn_method_id ${row.learn_method_id}.`,
      );
      continue;
    }

    if (
      row.learn_method_id === levelUpMethodId &&
      row.level_learned_at === null
    ) {
      errors.push(
        `${relative(filePath)}: level-up learnset row ${label} must set level_learned_at.`,
      );
    }
    if (
      row.learn_method_id !== levelUpMethodId &&
      row.level_learned_at !== null
    ) {
      errors.push(
        `${relative(filePath)}: non-level learnset row ${label} (${method.slug}) must not set level_learned_at.`,
      );
    }

    const machinePattern = machineMethodPrefixes.get(row.learn_method_id);
    if (machinePattern) {
      if (row.move_machine_id === null) {
        errors.push(
          `${relative(filePath)}: ${method.slug} learnset row ${label} must set move_machine_id.`,
        );
      } else {
        const machine = moveMachinesById.get(row.move_machine_id);
        if (!machine) {
          errors.push(
            `${relative(filePath)}: ${method.slug} learnset row ${label} references unseeded move_machine_id ${row.move_machine_id}.`,
          );
        } else {
          if (!machinePattern.test(machine.machine_label)) {
            errors.push(
              `${relative(filePath)}: ${method.slug} learnset row ${label} references machine ${machine.machine_label}, which does not match the learn method.`,
            );
          }
          if (machine.move_id !== row.move_id) {
            errors.push(
              `${relative(filePath)}: ${method.slug} learnset row ${label} move_id ${row.move_id} does not match machine move_id ${machine.move_id}.`,
            );
          }
          const machineVersionGroupIds = collectVersionGroupClosureIds(
            versionGroupsById,
            dependencyRows,
            row.version_group_id,
          );
          if (!machineVersionGroupIds.has(machine.version_group_id)) {
            errors.push(
              `${relative(filePath)}: ${method.slug} learnset row ${label} version_group_id ${row.version_group_id} cannot use machine version_group_id ${machine.version_group_id}; machine must be in the resolved content-scope closure.`,
            );
          }
          if (machine.game_id !== row.game_id) {
            errors.push(
              `${relative(filePath)}: ${method.slug} learnset row ${label} game_id ${row.game_id ?? "vg"} does not match machine game_id ${machine.game_id ?? "vg"}.`,
            );
          }
          if (machine.learn_method_id !== row.learn_method_id) {
            errors.push(
              `${relative(filePath)}: ${method.slug} learnset row ${label} learn_method_id ${row.learn_method_id} does not match machine learn_method_id ${machine.learn_method_id}.`,
            );
          }
        }
      }
      if (row.source_item_id !== null) {
        errors.push(
          `${relative(filePath)}: ${method.slug} learnset row ${label} must not set source_item_id; use move_machine_id for machines.`,
        );
      }
    } else if (row.move_machine_id !== null) {
      errors.push(
        `${relative(filePath)}: non-machine learnset row ${label} (${method.slug}) must not set move_machine_id.`,
      );
    }

    if (row.source_item_id !== null && !itemIds.has(row.source_item_id)) {
      errors.push(
        `${relative(filePath)}: Pokémon learnset row ${label} references unseeded source_item_id ${row.source_item_id}.`,
      );
    }

    if (row.game_id !== null) {
      if (!gamesById.has(row.game_id)) {
        errors.push(
          `${relative(filePath)}: Pokémon learnset row ${label} references unseeded game_id ${row.game_id}.`,
        );
      }
      if (!contentScopeKeys.has(`${row.game_id}/${row.version_group_id}`)) {
        errors.push(
          `${relative(filePath)}: Pokémon learnset row ${label} game_id/version_group_id ${row.game_id}/${row.version_group_id} is not a seeded game content scope.`,
        );
      }
    }

    if (
      move &&
      versionGroup &&
      !hasMoveAvailability(row.move_id, row.version_group_id, row.game_id)
    ) {
      if (
        !documentedExceptionMethodIds.has(row.learn_method_id) ||
        row.condition_summary === null
      ) {
        errors.push(
          `${relative(filePath)}: Pokémon learnset row ${label} teaches unavailable move ${move.slug} in version_group_id ${row.version_group_id}; event/transfer exceptions need condition_summary.`,
        );
      }
    }
  }

  const learnsetRowsByVersionGroup = new Map();
  const learnsetDeltaKey = (row) => {
    const machineLabel =
      row.move_machine_id === null
        ? "no-machine"
        : (moveMachinesById.get(row.move_machine_id)?.machine_label ??
          row.move_machine_id);
    return [
      row.species_id,
      row.form_id,
      row.move_id,
      row.game_id ?? "vg",
      row.learn_method_id,
      row.level_learned_at ?? 0,
      row.source_item_id ?? 0,
      machineLabel,
      row.condition_summary ?? "",
    ].join("/");
  };

  for (const { row } of rows) {
    if (!learnsetRowsByVersionGroup.has(row.version_group_id)) {
      learnsetRowsByVersionGroup.set(row.version_group_id, []);
    }
    learnsetRowsByVersionGroup.get(row.version_group_id).push(row);
  }

  const seededVersionGroupIds = new Set(
    versionGroupRows.map(({ row }) => row.id),
  );
  for (const versionGroupId of learnsetRowsByVersionGroup.keys()) {
    if (
      !sourceVerifiedFingerprintsByVersionGroup.has(versionGroupId) &&
      seededVersionGroupIds.has(versionGroupId)
    ) {
      errors.push(
        "reference.pokemon_learnsets: unexpected rows for version_group_id " +
          versionGroupId +
          ". Learnset scope should be added only with an explicit source decision and pinned fingerprint.",
      );
    }
  }

  for (const [
    versionGroupId,
    expectedFingerprint,
  ] of sourceVerifiedFingerprintsByVersionGroup.entries()) {
    const scopedRows = learnsetRowsByVersionGroup.get(versionGroupId) ?? [];
    const actualCount = scopedRows.length;
    const actualFingerprint = learnsetSourceFingerprint(scopedRows);
    if (
      actualCount !== expectedFingerprint.count ||
      actualFingerprint !== expectedFingerprint.sha256
    ) {
      errors.push(
        `reference.pokemon_learnsets: version_group_id ${versionGroupId} source-verified learnset fingerprint expected ${expectedFingerprint.count}/${expectedFingerprint.sha256}, got ${actualCount}/${actualFingerprint}.`,
      );
    }
  }

  for (const { row, filePath } of rows) {
    if (scopeOperation(row) !== "add") continue;
    const priorScopeIds = [
      ...collectVersionGroupClosureIds(
        versionGroupsById,
        dependencyRows,
        row.version_group_id,
      ),
    ].filter((versionGroupId) => versionGroupId !== row.version_group_id);
    const key = learnsetDeltaKey(row);
    for (const priorScopeId of priorScopeIds) {
      const duplicate = (
        learnsetRowsByVersionGroup.get(priorScopeId) ?? []
      ).find((priorRow) => learnsetDeltaKey(priorRow) === key);
      if (duplicate) {
        errors.push(
          `${relative(filePath)}: Pokémon learnset row ${pokemonLearnsetRowLabel(row)} duplicates parent/dependency scope row ${pokemonLearnsetRowLabel(duplicate)}; child content scopes should seed only delta rows unless using override/remove.`,
        );
        break;
      }
    }
  }
}
function assertPokemonAvailabilityRows(tableRows) {
  const rows = tableRows.get("reference.pokemon_availability") ?? [];
  const speciesRows = tableRows.get("reference.pokemon_species") ?? [];
  const formRows = tableRows.get("reference.pokemon_forms") ?? [];
  const versionGroups = tableRows.get("reference.version_groups") ?? [];
  const games = tableRows.get("reference.games") ?? [];
  const methods = tableRows.get("reference.availability_methods") ?? [];
  const contentScopes = tableRows.get("reference.game_content_scopes") ?? [];

  const speciesIds = new Set(speciesRows.map(({ row }) => row.id));
  const formKeys = new Set(
    formRows.map(({ row }) => `${row.species_id}/${row.id}`),
  );
  const versionGroupIds = new Set(versionGroups.map(({ row }) => row.id));
  const gamesById = mapRowsByColumn(games, "id");
  const methodIds = new Set(methods.map(({ row }) => row.id));
  const contentScopeKeys = new Set(
    contentScopes.map(({ row }) => `${row.game_id}/${row.version_group_id}`),
  );
  const sourceVerifiedFingerprintsByVersionGroup = new Map([
    [
      1,
      {
        count: 173,
        sha256:
          "5402377f7e19e3f403d135f29fca2a2d88508772b90eed7bbc207b850b83b48d",
      },
    ],
    [
      2,
      {
        count: 151,
        sha256:
          "a455d981f2b4385651ea9207471cf7a27868d9f605b7ca5ecc1397b10701f114",
      },
    ],
    [
      3,
      {
        count: 275,
        sha256:
          "7bf80fb2b99e2ba1e7771c9e6dde1dba69ff9fb81c0db1e8814d5690659ca312",
      },
    ],
    [
      4,
      {
        count: 251,
        sha256:
          "53c05cee2709ebc2fb21881f3f5fa3965e428ff37323c0814f5355686f360317",
      },
    ],
    [
      5,
      {
        count: 402,
        sha256:
          "02a4ff5e1b849c5e4c64c27161b7202ac27fb83ff8f5abed3bc24e1883234908",
      },
    ],
    [
      6,
      {
        count: 432,
        sha256:
          "dd43003fccbcf5f055b6ffa9c6a48ec86444440649584bad29a4c5621e49fc7d",
      },
    ],
    [
      7,
      {
        count: 388,
        sha256:
          "fb7718f3ce6b75e6367f136021c6fcc4e43cc95f460f089fa3af8d1865ee999e",
      },
    ],
    [
      8,
      {
        count: 563,
        sha256:
          "e023ee3b169a6b9458586410f44e3feb1c1c2ba00d949ad64a9d58a84fe48bb8",
      },
    ],
    [
      9,
      {
        count: 523,
        sha256:
          "9e64cd236b62f6e8b367465cece20736a06c50e72f297f1f56d648dbef1602b4",
      },
    ],
    [
      10,
      {
        count: 563,
        sha256:
          "65c509606af28b598194f35f4dcd549335bf8568a290d6032e084fd8404f0ff6",
      },
    ],
    [
      11,
      {
        count: 818,
        sha256:
          "f4bf656cdd04df76ee48cfa183682875ec4d4c5cb8b59fe7c71698bd88157472",
      },
    ],
    [
      12,
      {
        count: 743,
        sha256:
          "5e5edfbf0d87fd065d2aab80ff00586c183b0668620373e0c242cb7382c20e46",
      },
    ],
    [
      13,
      {
        count: 809,
        sha256:
          "8c4f4d250ed3996421bc7281c389edf7e139690ec0789b85cb2fb77c59858cf2",
      },
    ],
    [
      14,
      {
        count: 808,
        sha256:
          "d609f290faf09ead70b9fe1c9c2eeff03bb03f0e015e27b35de2a8d0f8281aa2",
      },
    ],
    [
      15,
      {
        count: 928,
        sha256:
          "fe77fc03e6f1d6488ba53e67b70668ba31f75f893ed60f3a9f2b21d9b1310735",
      },
    ],
    [
      16,
      {
        count: 950,
        sha256:
          "c975ab8d5515987e4a47fd5f22928fd8c47603d1ec365ec351f0d01fc229a4f1",
      },
    ],
    [
      17,
      {
        count: 212,
        sha256:
          "dedcf401c11668cb92f4b865faa217679e4392a2213b1ed8b50878bd0eae9ca3",
      },
    ],
    [
      18,
      {
        count: 616,
        sha256:
          "91aea79584350c63ff9ce4a79c9a02c1ce39d1b1f3601981ba0ea273f0bf0d03",
      },
    ],
    [
      19,
      {
        count: 230,
        sha256:
          "53b6459c40768a49001a07027d33f68793e44233da50430a9078c2a804ab4ef6",
      },
    ],
    [
      20,
      {
        count: 340,
        sha256:
          "d600c140e8244e66320c9ba178da266c14e3ea3205f7388159f3a5daf0397da2",
      },
    ],
    [
      21,
      {
        count: 579,
        sha256:
          "7c90860f9e15d3ec1d1276f0cbf27ba5801a60c1921f042184d7ae0ad3cd13e3",
      },
    ],
    [
      22,
      {
        count: 280,
        sha256:
          "4ef303f64187a0e4ead7cacdef6547474ce2dca7f9aa8035d322f81bb8fcb11f",
      },
    ],
    [
      23,
      {
        count: 692,
        sha256:
          "1708da1788b3e5db432c0b68cfeac9e67e64993afa09cc2e495ca4939db9ff48",
      },
    ],
    [
      24,
      {
        count: 230,
        sha256:
          "6cc27111044f2bce68030231b21f3c71173c0ef96cffde661d988ff5515ddb1d",
      },
    ],
    [
      25,
      {
        count: 299,
        sha256:
          "53c11de4fe37be5d77ada4a0989acccb61751f388fead6b814f99fd810dd0c21",
      },
    ],
    [
      26,
      {
        count: 246,
        sha256:
          "a76652ae527e87020ea152b99c42640a76716a33baea7e1f2786fbae5efb800f",
      },
    ],
    [
      27,
      {
        count: 152,
        sha256:
          "3b6b18d1f1dfbf8a58c92d838f350258f877579b023d2cccabb473f17a30b64e",
      },
    ],
  ]);
  const pokemonAvailabilitySourceFingerprint = (availabilityRows) =>
    sourceVerifiedRowsetFingerprint(
      availabilityRows,
      [
        "species_id",
        "form_id",
        "version_group_id",
        "game_id",
        "availability_method_id",
        "scope_operation",
        "notes",
      ],
      compareRowsByColumns([
        "species_id",
        "form_id",
        "game_id",
        "availability_method_id",
        "scope_operation",
        "notes",
      ]),
    );
  const rowsByVersionGroup = new Map();

  for (const { row } of rows) {
    if (!rowsByVersionGroup.has(row.version_group_id))
      rowsByVersionGroup.set(row.version_group_id, []);
    rowsByVersionGroup.get(row.version_group_id).push({
      row: {
        ...row,
        scope_operation: scopeOperation(row),
        notes: row.notes ?? null,
      },
    });
  }

  for (const [versionGroupId, scopedRows] of rowsByVersionGroup.entries()) {
    const actualCount = scopedRows.length;
    const actualFingerprint = pokemonAvailabilitySourceFingerprint(scopedRows);
    const expectedFingerprint =
      sourceVerifiedFingerprintsByVersionGroup.get(versionGroupId);

    if (!expectedFingerprint) {
      errors.push(
        `reference.pokemon_availability: unexpected rows for version_group_id ${versionGroupId}; add an explicit source-verified Pokémon availability fingerprint. Got ${actualCount}/${actualFingerprint}.`,
      );
      continue;
    }

    if (
      actualCount !== expectedFingerprint.count ||
      actualFingerprint !== expectedFingerprint.sha256
    ) {
      errors.push(
        `reference.pokemon_availability: version_group_id ${versionGroupId} source-verified Pokémon availability fingerprint expected ${expectedFingerprint.count}/${expectedFingerprint.sha256}, got ${actualCount}/${actualFingerprint}.`,
      );
    }
  }

  addCompositeDuplicateErrors(
    "reference.pokemon_availability",
    rows.filter(({ row }) => row.game_id === null),
    "species_id/form_id/version_group_id/availability_method_id where game_id IS NULL",
    (row) =>
      `${row.species_id}/${row.form_id}/${row.version_group_id}/${row.availability_method_id}`,
  );
  addCompositeDuplicateErrors(
    "reference.pokemon_availability",
    rows.filter(({ row }) => row.game_id !== null),
    "species_id/form_id/version_group_id/game_id/availability_method_id where game_id IS NOT NULL",
    (row) =>
      `${row.species_id}/${row.form_id}/${row.version_group_id}/${row.game_id}/${row.availability_method_id}`,
  );

  for (const { row, filePath } of rows) {
    const label = pokemonAvailabilityRowLabel(row);

    if (!speciesIds.has(row.species_id)) {
      errors.push(
        `${relative(filePath)}: Pokémon availability row ${label} references unseeded species_id ${row.species_id}.`,
      );
    }

    if (!formKeys.has(`${row.species_id}/${row.form_id}`)) {
      errors.push(
        `${relative(filePath)}: Pokémon availability row ${label} has invalid species/form pair ${row.species_id}/${row.form_id}.`,
      );
    }

    if (!versionGroupIds.has(row.version_group_id)) {
      errors.push(
        `${relative(filePath)}: Pokémon availability row ${label} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }

    if (!methodIds.has(row.availability_method_id)) {
      errors.push(
        `${relative(filePath)}: Pokémon availability row ${label} references unseeded availability_method_id ${row.availability_method_id}.`,
      );
    }

    if (row.game_id !== null) {
      const game = gamesById.get(row.game_id);
      if (!game) {
        errors.push(
          `${relative(filePath)}: Pokémon availability row ${label} references unseeded game_id ${row.game_id}.`,
        );
      }

      if (!contentScopeKeys.has(`${row.game_id}/${row.version_group_id}`)) {
        errors.push(
          `${relative(filePath)}: Pokémon availability row ${label} game_id/version_group_id ${row.game_id}/${row.version_group_id} is not a seeded game content scope.`,
        );
      }
    }
  }
}

function assertPokemonEvolutionEdgeRows(tableRows) {
  const edgeRows = tableRows.get("reference.pokemon_evolution_edges") ?? [];
  const pokemonAvailabilityRows =
    tableRows.get("reference.pokemon_availability") ?? [];
  const itemAvailabilityRows =
    tableRows.get("reference.item_availability") ?? [];
  const dependencyRows =
    tableRows.get("reference.content_scope_dependencies") ?? [];
  const speciesRows = tableRows.get("reference.pokemon_species") ?? [];
  const formRows = tableRows.get("reference.pokemon_forms") ?? [];
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const versionGroupsById = mapRowsByColumn(
    tableRows.get("reference.version_groups") ?? [],
    "id",
  );
  const methodsById = mapRowsByColumn(
    tableRows.get("reference.evolution_methods") ?? [],
    "id",
  );
  const availabilityMethodsBySlug = mapRowsByColumn(
    tableRows.get("reference.availability_methods") ?? [],
    "slug",
  );
  const itemsById = mapRowsByColumn(
    tableRows.get("reference.items") ?? [],
    "id",
  );
  const movesById = mapRowsByColumn(
    tableRows.get("reference.moves") ?? [],
    "id",
  );
  const typesById = mapRowsByColumn(
    tableRows.get("reference.types") ?? [],
    "id",
  );
  const formsById = mapRowsByColumn(formRows, "id");
  const formsBySlug = mapRowsByColumn(formRows, "slug");
  const speciesIds = new Set(speciesRows.map(({ row }) => row.id));
  const formKeys = new Set(
    formRows.map(({ row }) => `${row.species_id}/${row.id}`),
  );
  const allowedHeldItemMethodSlugs = new Set([
    "trade",
    "time-of-day",
    "special-condition",
  ]);
  const allowedGenderMethodSlugs = new Set([
    "gender-specific",
    "item",
    "special-condition",
  ]);
  const allowedKnownMoveMethodSlugs = new Set([
    "move-known",
    "special-condition",
  ]);

  if (edgeRows.length !== 576) {
    errors.push(
      `reference.pokemon_evolution_edges: expected 576 curated evolution edge rows, got ${edgeRows.length}.`,
    );
  }

  assertContiguousSortOrder("reference.pokemon_evolution_edges", edgeRows);
  addCompositeDuplicateErrors(
    "reference.pokemon_evolution_edges",
    edgeRows,
    "natural evolution edge",
    evolutionEdgeNaturalKey,
  );

  const actualEvolutionSpeciesPairKeys = new Set(
    edgeRows.map(({ row }) => `${row.from_species_id}:${row.to_species_id}`),
  );
  const expectedEvolutionSpeciesPairKeys = new Set(
    pokeApiEvolutionSpeciesPairKeys.filter(
      (pairKey) => !acceptedEvolutionSourceDisagreementPairKeys.has(pairKey),
    ),
  );

  for (const pairKey of expectedEvolutionSpeciesPairKeys) {
    if (!actualEvolutionSpeciesPairKeys.has(pairKey)) {
      errors.push(
        `reference.pokemon_evolution_edges: missing source-audited species pair ${pairKey}.`,
      );
    }
  }

  for (const pairKey of actualEvolutionSpeciesPairKeys) {
    if (!expectedEvolutionSpeciesPairKeys.has(pairKey)) {
      errors.push(
        `reference.pokemon_evolution_edges: unexpected source-audited species pair ${pairKey}.`,
      );
    }
  }

  for (const { row, filePath } of edgeRows) {
    const label = evolutionEdgeRowLabel(row);

    if (
      row.from_species_id === row.to_species_id &&
      row.from_form_id === row.to_form_id
    ) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} cannot evolve a form into itself.`,
      );
    }
    if (!speciesIds.has(row.from_species_id)) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded from_species_id ${row.from_species_id}.`,
      );
    }
    if (!speciesIds.has(row.to_species_id)) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded to_species_id ${row.to_species_id}.`,
      );
    }
    if (!formKeys.has(`${row.from_species_id}/${row.from_form_id}`)) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded from species/form ${row.from_species_id}/${row.from_form_id}.`,
      );
    }
    if (!formKeys.has(`${row.to_species_id}/${row.to_form_id}`)) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded to species/form ${row.to_species_id}/${row.to_form_id}.`,
      );
    }
    if (!generationIds.has(row.introduced_generation_id)) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded introduced_generation_id ${row.introduced_generation_id}.`,
      );
    }
    if (!methodsById.has(row.evolution_method_id)) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded evolution_method_id ${row.evolution_method_id}.`,
      );
    }
    if (
      row.version_group_id !== null &&
      !versionGroupsById.has(row.version_group_id)
    ) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }
    if (row.item_id !== null && !itemsById.has(row.item_id)) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded item_id ${row.item_id}.`,
      );
    }
    if (row.held_item_id !== null && !itemsById.has(row.held_item_id)) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded held_item_id ${row.held_item_id}.`,
      );
    }
    if (row.known_move_id !== null && !movesById.has(row.known_move_id)) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded known_move_id ${row.known_move_id}.`,
      );
    }
    if (row.known_type_id !== null && !typesById.has(row.known_type_id)) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded known_type_id ${row.known_type_id}.`,
      );
    }
    if (row.condition_data !== null) {
      let conditionData = null;
      try {
        conditionData = JSON.parse(row.condition_data);
      } catch {
        errors.push(
          `${relative(filePath)}: evolution edge ${label} condition_data is not valid JSON.`,
        );
      }
      if (
        conditionData !== null &&
        typeof conditionData === "object" &&
        !Array.isArray(conditionData) &&
        Object.hasOwn(conditionData, "base_form")
      ) {
        errors.push(
          `${relative(filePath)}: evolution edge ${label} condition_data must not store redundant source base_form; use from_form_id.`,
        );
      }
      if (
        conditionData !== null &&
        typeof conditionData === "object" &&
        !Array.isArray(conditionData)
      ) {
        if (Object.hasOwn(conditionData, "source")) {
          errors.push(
            `${relative(filePath)}: evolution edge ${label} condition_data must not store source/provenance fields; keep provenance in seed comments and audit docs.`,
          );
        }
        if (
          conditionData.source_trigger === "manual-curated" ||
          JSON.stringify(conditionData).includes("manual-curated")
        ) {
          errors.push(
            `${relative(filePath)}: evolution edge ${label} condition_data must store product mechanics, not manual-curated provenance markers.`,
          );
        }
      }
    }

    const methodSlug = methodsById.get(row.evolution_method_id)?.slug;
    if (row.item_id !== null && methodSlug !== "item") {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} has item_id but method is ${methodSlug}.`,
      );
    }
    if (
      row.held_item_id !== null &&
      !allowedHeldItemMethodSlugs.has(methodSlug)
    ) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} has held_item_id but method is ${methodSlug}.`,
      );
    }
    if (row.gender !== null && !allowedGenderMethodSlugs.has(methodSlug)) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} has gender ${row.gender} but method is ${methodSlug}.`,
      );
    }
    if (
      row.known_move_id !== null &&
      !allowedKnownMoveMethodSlugs.has(methodSlug)
    ) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} has known_move_id but method is ${methodSlug}.`,
      );
    }

    const fromForm = formsById.get(row.from_form_id);
    const toForm = formsById.get(row.to_form_id);
    if (fromForm && fromForm.species_id !== row.from_species_id) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} from_form_id ${row.from_form_id} belongs to species ${fromForm.species_id}, not ${row.from_species_id}.`,
      );
    }
    if (toForm && toForm.species_id !== row.to_species_id) {
      errors.push(
        `${relative(filePath)}: evolution edge ${label} to_form_id ${row.to_form_id} belongs to species ${toForm.species_id}, not ${row.to_species_id}.`,
      );
    }
  }

  const edgeMatches = (edge, expected) => {
    const fromForm = formsBySlug.get(expected.fromForm);
    const toForm = formsBySlug.get(expected.toForm);
    if (!fromForm || !toForm) return false;
    if (
      edge.from_species_id !== fromForm.species_id ||
      edge.from_form_id !== fromForm.id
    )
      return false;
    if (
      edge.to_species_id !== toForm.species_id ||
      edge.to_form_id !== toForm.id
    )
      return false;

    if (
      expected.methodSlug &&
      methodsById.get(edge.evolution_method_id)?.slug !== expected.methodSlug
    )
      return false;
    if (
      expected.versionGroupSlug &&
      versionGroupsById.get(edge.version_group_id)?.slug !==
        expected.versionGroupSlug
    )
      return false;
    if (
      expected.itemSlug &&
      itemsById.get(edge.item_id)?.slug !== expected.itemSlug
    )
      return false;
    if (
      expected.heldItemSlug &&
      itemsById.get(edge.held_item_id)?.slug !== expected.heldItemSlug
    )
      return false;
    if (
      expected.knownMoveSlug &&
      movesById.get(edge.known_move_id)?.slug !== expected.knownMoveSlug
    )
      return false;
    if (
      expected.minimumLevel !== undefined &&
      edge.minimum_level !== expected.minimumLevel
    )
      return false;
    return true;
  };

  const gen1SourceVerifiedEvolutionEdges = [
    ["bulbasaur", "ivysaur", "level-up", 16, null],
    ["ivysaur", "venusaur", "level-up", 32, null],
    ["charmander", "charmeleon", "level-up", 16, null],
    ["charmeleon", "charizard", "level-up", 36, null],
    ["squirtle", "wartortle", "level-up", 16, null],
    ["wartortle", "blastoise", "level-up", 36, null],
    ["caterpie", "metapod", "level-up", 7, null],
    ["metapod", "butterfree", "level-up", 10, null],
    ["weedle", "kakuna", "level-up", 7, null],
    ["kakuna", "beedrill", "level-up", 10, null],
    ["pidgey", "pidgeotto", "level-up", 18, null],
    ["pidgeotto", "pidgeot", "level-up", 36, null],
    ["rattata", "raticate", "level-up", 20, null],
    ["spearow", "fearow", "level-up", 20, null],
    ["ekans", "arbok", "level-up", 22, null],
    ["pikachu", "raichu", "item", null, "thunder-stone"],
    ["sandshrew", "sandslash", "level-up", 22, null],
    ["nidoran-f", "nidorina", "level-up", 16, null],
    ["nidorina", "nidoqueen", "item", null, "moon-stone"],
    ["nidoran-m", "nidorino", "level-up", 16, null],
    ["nidorino", "nidoking", "item", null, "moon-stone"],
    ["clefairy", "clefable", "item", null, "moon-stone"],
    ["vulpix", "ninetales", "item", null, "fire-stone"],
    ["jigglypuff", "wigglytuff", "item", null, "moon-stone"],
    ["zubat", "golbat", "level-up", 22, null],
    ["oddish", "gloom", "level-up", 21, null],
    ["gloom", "vileplume", "item", null, "leaf-stone"],
    ["paras", "parasect", "level-up", 24, null],
    ["venonat", "venomoth", "level-up", 31, null],
    ["diglett", "dugtrio", "level-up", 26, null],
    ["meowth", "persian", "level-up", 28, null],
    ["psyduck", "golduck", "level-up", 33, null],
    ["mankey", "primeape", "level-up", 28, null],
    ["growlithe", "arcanine", "item", null, "fire-stone"],
    ["poliwag", "poliwhirl", "level-up", 25, null],
    ["poliwhirl", "poliwrath", "item", null, "water-stone"],
    ["abra", "kadabra", "level-up", 16, null],
    ["kadabra", "alakazam", "trade", null, null],
    ["machop", "machoke", "level-up", 28, null],
    ["machoke", "machamp", "trade", null, null],
    ["bellsprout", "weepinbell", "level-up", 21, null],
    ["weepinbell", "victreebel", "item", null, "leaf-stone"],
    ["tentacool", "tentacruel", "level-up", 30, null],
    ["geodude", "graveler", "level-up", 25, null],
    ["graveler", "golem", "trade", null, null],
    ["ponyta", "rapidash", "level-up", 40, null],
    ["slowpoke", "slowbro", "level-up", 37, null],
    ["magnemite", "magneton", "level-up", 30, null],
    ["doduo", "dodrio", "level-up", 31, null],
    ["seel", "dewgong", "level-up", 34, null],
    ["grimer", "muk", "level-up", 38, null],
    ["shellder", "cloyster", "item", null, "water-stone"],
    ["gastly", "haunter", "level-up", 25, null],
    ["haunter", "gengar", "trade", null, null],
    ["drowzee", "hypno", "level-up", 26, null],
    ["krabby", "kingler", "level-up", 28, null],
    ["voltorb", "electrode", "level-up", 30, null],
    ["exeggcute", "exeggutor", "item", null, "leaf-stone"],
    ["cubone", "marowak", "level-up", 28, null],
    ["koffing", "weezing", "level-up", 35, null],
    ["rhyhorn", "rhydon", "level-up", 42, null],
    ["horsea", "seadra", "level-up", 32, null],
    ["goldeen", "seaking", "level-up", 33, null],
    ["staryu", "starmie", "item", null, "water-stone"],
    ["magikarp", "gyarados", "level-up", 20, null],
    ["eevee", "vaporeon", "item", null, "water-stone"],
    ["eevee", "jolteon", "item", null, "thunder-stone"],
    ["eevee", "flareon", "item", null, "fire-stone"],
    ["omanyte", "omastar", "level-up", 40, null],
    ["kabuto", "kabutops", "level-up", 40, null],
    ["dratini", "dragonair", "level-up", 30, null],
    ["dragonair", "dragonite", "level-up", 55, null],
  ].map(([fromForm, toForm, methodSlug, minimumLevel, itemSlug]) => ({
    fromForm,
    toForm,
    methodSlug,
    minimumLevel,
    itemSlug,
  }));

  const itemSlugForId = (itemId) =>
    itemId === null ? null : itemsById.get(itemId)?.slug;
  const moveSlugForId = (moveId) =>
    moveId === null ? null : movesById.get(moveId)?.slug;
  const typeSlugForId = (typeId) =>
    typeId === null ? null : typesById.get(typeId)?.slug;

  const conditionDataMatches = (edgeConditionData, expectedConditionData) => {
    if (expectedConditionData === undefined) return true;
    if (expectedConditionData === null) return edgeConditionData === null;
    if (edgeConditionData === null) return false;
    let parsed = null;
    try {
      parsed = JSON.parse(edgeConditionData);
    } catch {
      return false;
    }
    return Object.entries(expectedConditionData).every(
      ([key, value]) => parsed?.[key] === value,
    );
  };

  const sourceVerifiedEdgeMatches = (edge, expected) =>
    edgeMatches(edge, expected) &&
    methodsById.get(edge.evolution_method_id)?.slug === expected.methodSlug &&
    (expected.versionGroupSlug === undefined
      ? edge.version_group_id === null
      : versionGroupsById.get(edge.version_group_id)?.slug ===
        expected.versionGroupSlug) &&
    edge.minimum_level === expected.minimumLevel &&
    itemSlugForId(edge.item_id) === (expected.itemSlug ?? null) &&
    itemSlugForId(edge.held_item_id) === (expected.heldItemSlug ?? null) &&
    moveSlugForId(edge.known_move_id) === (expected.knownMoveSlug ?? null) &&
    typeSlugForId(edge.known_type_id) === (expected.knownTypeSlug ?? null) &&
    edge.gender === (expected.gender ?? null) &&
    edge.time_of_day === (expected.timeOfDay ?? null) &&
    edge.location_label === (expected.locationLabel ?? null) &&
    conditionDataMatches(edge.condition_data, expected.conditionData);

  const gen1EdgeRows = edgeRows
    .map(({ row }) => row)
    .filter((row) => row.introduced_generation_id === 1);
  if (gen1EdgeRows.length !== gen1SourceVerifiedEvolutionEdges.length) {
    errors.push(
      `reference.pokemon_evolution_edges: expected ${gen1SourceVerifiedEvolutionEdges.length} source-verified Generation I evolution rows, got ${gen1EdgeRows.length}.`,
    );
  }

  for (const expected of gen1SourceVerifiedEvolutionEdges) {
    if (
      !gen1EdgeRows.some((edge) => sourceVerifiedEdgeMatches(edge, expected))
    ) {
      errors.push(
        `reference.pokemon_evolution_edges: missing or mismatched source-verified Generation I edge ${expected.fromForm} -> ${expected.toForm}.`,
      );
    }
  }

  for (const edge of gen1EdgeRows) {
    if (
      !gen1SourceVerifiedEvolutionEdges.some((expected) =>
        sourceVerifiedEdgeMatches(edge, expected),
      )
    ) {
      errors.push(
        `reference.pokemon_evolution_edges: unexpected source-verified Generation I edge ${evolutionEdgeRowLabel(edge)}.`,
      );
    }
  }

  const gen2SourceVerifiedEvolutionEdges = [
    [
      "golbat",
      "crobat",
      "friendship",
      null,
      null,
      null,
      null,
      { min_happiness: 220 },
    ],
    ["gloom", "bellossom", "item", null, "sun-stone"],
    ["poliwhirl", "politoed", "trade", null, null, "kings-rock"],
    ["slowpoke", "slowking", "trade", null, null, "kings-rock"],
    ["onix", "steelix", "trade", null, null, "metal-coat"],
    [
      "chansey",
      "blissey",
      "friendship",
      null,
      null,
      null,
      null,
      { min_happiness: 220 },
    ],
    ["seadra", "kingdra", "trade", null, null, "dragon-scale"],
    ["scyther", "scizor", "trade", null, null, "metal-coat"],
    [
      "eevee",
      "espeon",
      "friendship",
      null,
      null,
      null,
      "day",
      { min_happiness: 220 },
    ],
    [
      "eevee",
      "umbreon",
      "friendship",
      null,
      null,
      null,
      "night",
      { min_happiness: 220 },
    ],
    ["porygon", "porygon2", "trade", null, null, "up-grade"],
    ["chikorita", "bayleef", "level-up", 16],
    ["bayleef", "meganium", "level-up", 32],
    ["cyndaquil", "quilava", "level-up", 14],
    ["quilava", "typhlosion", "level-up", 36],
    ["totodile", "croconaw", "level-up", 18],
    ["croconaw", "feraligatr", "level-up", 30],
    ["sentret", "furret", "level-up", 15],
    ["hoothoot", "noctowl", "level-up", 20],
    ["ledyba", "ledian", "level-up", 18],
    ["spinarak", "ariados", "level-up", 22],
    ["chinchou", "lanturn", "level-up", 27],
    [
      "pichu",
      "pikachu",
      "friendship",
      null,
      null,
      null,
      null,
      { min_happiness: 220 },
    ],
    [
      "cleffa",
      "clefairy",
      "friendship",
      null,
      null,
      null,
      null,
      { min_happiness: 220 },
    ],
    [
      "igglybuff",
      "jigglypuff",
      "friendship",
      null,
      null,
      null,
      null,
      { min_happiness: 220 },
    ],
    [
      "togepi",
      "togetic",
      "friendship",
      null,
      null,
      null,
      null,
      { min_happiness: 220 },
    ],
    ["natu", "xatu", "level-up", 25],
    ["mareep", "flaaffy", "level-up", 15],
    ["flaaffy", "ampharos", "level-up", 30],
    ["marill", "azumarill", "level-up", 18],
    ["hoppip", "skiploom", "level-up", 18],
    ["skiploom", "jumpluff", "level-up", 27],
    ["sunkern", "sunflora", "item", null, "sun-stone"],
    ["wooper", "quagsire", "level-up", 20],
    ["pineco", "forretress", "level-up", 31],
    ["snubbull", "granbull", "level-up", 23],
    ["teddiursa", "ursaring", "level-up", 30],
    ["slugma", "magcargo", "level-up", 38],
    ["swinub", "piloswine", "level-up", 33],
    ["remoraid", "octillery", "level-up", 25],
    ["houndour", "houndoom", "level-up", 24],
    ["phanpy", "donphan", "level-up", 25],
    [
      "tyrogue",
      "hitmonlee",
      "special-condition",
      20,
      null,
      null,
      null,
      { relative_physical_stats: 1 },
    ],
    [
      "tyrogue",
      "hitmonchan",
      "special-condition",
      20,
      null,
      null,
      null,
      { relative_physical_stats: -1 },
    ],
    [
      "tyrogue",
      "hitmontop",
      "special-condition",
      20,
      null,
      null,
      null,
      { relative_physical_stats: 0 },
    ],
    ["smoochum", "jynx", "level-up", 30],
    ["elekid", "electabuzz", "level-up", 30],
    ["magby", "magmar", "level-up", 30],
    ["larvitar", "pupitar", "level-up", 30],
    ["pupitar", "tyranitar", "level-up", 55],
  ].map(
    ([
      fromForm,
      toForm,
      methodSlug,
      minimumLevel,
      itemSlug,
      heldItemSlug,
      timeOfDay,
      conditionData,
    ]) => ({
      fromForm,
      toForm,
      methodSlug,
      minimumLevel,
      itemSlug,
      heldItemSlug,
      timeOfDay,
      conditionData,
    }),
  );

  const gen2EdgeRows = edgeRows
    .map(({ row }) => row)
    .filter((row) => row.introduced_generation_id === 2);
  if (gen2EdgeRows.length !== gen2SourceVerifiedEvolutionEdges.length) {
    errors.push(
      `reference.pokemon_evolution_edges: expected ${gen2SourceVerifiedEvolutionEdges.length} source-verified Generation II evolution rows, got ${gen2EdgeRows.length}.`,
    );
  }

  for (const expected of gen2SourceVerifiedEvolutionEdges) {
    if (
      !gen2EdgeRows.some((edge) => sourceVerifiedEdgeMatches(edge, expected))
    ) {
      errors.push(
        `reference.pokemon_evolution_edges: missing or mismatched source-verified Generation II edge ${expected.fromForm} -> ${expected.toForm}.`,
      );
    }
  }

  for (const edge of gen2EdgeRows) {
    if (
      !gen2SourceVerifiedEvolutionEdges.some((expected) =>
        sourceVerifiedEdgeMatches(edge, expected),
      )
    ) {
      errors.push(
        `reference.pokemon_evolution_edges: unexpected source-verified Generation II edge ${evolutionEdgeRowLabel(edge)}.`,
      );
    }
  }

  const gen3SourceVerifiedEvolutionEdges = [
    ["treecko", "grovyle", "level-up", 16],
    ["grovyle", "sceptile", "level-up", 36],
    ["torchic", "combusken", "level-up", 16],
    ["combusken", "blaziken", "level-up", 36],
    ["mudkip", "marshtomp", "level-up", 16],
    ["marshtomp", "swampert", "level-up", 36],
    ["poochyena", "mightyena", "level-up", 18],
    ["zigzagoon", "linoone", "level-up", 20],
    [
      "wurmple",
      "silcoon",
      "level-up",
      7,
      null,
      null,
      null,
      { branch_rule: "personality-or-encryption", target_branch: "silcoon" },
    ],
    [
      "wurmple",
      "cascoon",
      "level-up",
      7,
      null,
      null,
      null,
      { branch_rule: "personality-or-encryption", target_branch: "cascoon" },
    ],
    ["silcoon", "beautifly", "level-up", 10],
    ["cascoon", "dustox", "level-up", 10],
    ["lotad", "lombre", "level-up", 14],
    ["lombre", "ludicolo", "item", null, "water-stone"],
    ["seedot", "nuzleaf", "level-up", 14],
    ["nuzleaf", "shiftry", "item", null, "leaf-stone"],
    ["taillow", "swellow", "level-up", 22],
    ["wingull", "pelipper", "level-up", 25],
    ["ralts", "kirlia", "level-up", 20],
    ["kirlia", "gardevoir", "level-up", 30],
    ["surskit", "masquerain", "level-up", 22],
    ["shroomish", "breloom", "level-up", 23],
    ["slakoth", "vigoroth", "level-up", 18],
    ["vigoroth", "slaking", "level-up", 36],
    ["nincada", "ninjask", "level-up", 20],
    [
      "nincada",
      "shedinja",
      "special-condition",
      20,
      null,
      null,
      null,
      { requires_empty_party_slot: true, requires_poke_ball: false },
    ],
    ["whismur", "loudred", "level-up", 20],
    ["loudred", "exploud", "level-up", 40],
    ["makuhita", "hariyama", "level-up", 24],
    [
      "azurill",
      "marill",
      "friendship",
      null,
      null,
      null,
      null,
      { min_happiness: 220 },
    ],
    ["skitty", "delcatty", "item", null, "moon-stone"],
    ["aron", "lairon", "level-up", 32],
    ["lairon", "aggron", "level-up", 42],
    ["meditite", "medicham", "level-up", 37],
    ["electrike", "manectric", "level-up", 26],
    ["gulpin", "swalot", "level-up", 26],
    ["carvanha", "sharpedo", "level-up", 30],
    ["wailmer", "wailord", "level-up", 40],
    ["numel", "camerupt", "level-up", 33],
    ["spoink", "grumpig", "level-up", 32],
    ["trapinch", "vibrava", "level-up", 35],
    ["vibrava", "flygon", "level-up", 45],
    ["cacnea", "cacturne", "level-up", 32],
    ["swablu", "altaria", "level-up", 35],
    ["barboach", "whiscash", "level-up", 30],
    ["corphish", "crawdaunt", "level-up", 30],
    ["baltoy", "claydol", "level-up", 36],
    ["lileep", "cradily", "level-up", 40],
    ["anorith", "armaldo", "level-up", 40],
    [
      "feebas",
      "milotic",
      "level-up",
      null,
      null,
      null,
      null,
      { min_beauty: 170 },
    ],
    ["shuppet", "banette", "level-up", 37],
    ["duskull", "dusclops", "level-up", 37],
    ["wynaut", "wobbuffet", "level-up", 15],
    ["snorunt", "glalie", "level-up", 42],
    ["spheal", "sealeo", "level-up", 32],
    ["sealeo", "walrein", "level-up", 44],
    ["clamperl", "huntail", "trade", null, null, "deep-sea-tooth"],
    ["clamperl", "gorebyss", "trade", null, null, "deep-sea-scale"],
    ["bagon", "shelgon", "level-up", 30],
    ["shelgon", "salamence", "level-up", 50],
    ["beldum", "metang", "level-up", 20],
    ["metang", "metagross", "level-up", 45],
  ].map(
    ([
      fromForm,
      toForm,
      methodSlug,
      minimumLevel,
      itemSlug,
      heldItemSlug,
      timeOfDay,
      conditionData,
    ]) => ({
      fromForm,
      toForm,
      methodSlug,
      minimumLevel,
      itemSlug,
      heldItemSlug,
      timeOfDay,
      conditionData,
    }),
  );

  const gen3EdgeRows = edgeRows
    .map(({ row }) => row)
    .filter((row) => row.introduced_generation_id === 3);
  if (gen3EdgeRows.length !== gen3SourceVerifiedEvolutionEdges.length) {
    errors.push(
      `reference.pokemon_evolution_edges: expected ${gen3SourceVerifiedEvolutionEdges.length} source-verified Generation III evolution rows, got ${gen3EdgeRows.length}.`,
    );
  }

  for (const expected of gen3SourceVerifiedEvolutionEdges) {
    if (
      !gen3EdgeRows.some((edge) => sourceVerifiedEdgeMatches(edge, expected))
    ) {
      errors.push(
        `reference.pokemon_evolution_edges: missing or mismatched source-verified Generation III edge ${expected.fromForm} -> ${expected.toForm}.`,
      );
    }
  }

  for (const edge of gen3EdgeRows) {
    if (
      !gen3SourceVerifiedEvolutionEdges.some((expected) =>
        sourceVerifiedEdgeMatches(edge, expected),
      )
    ) {
      errors.push(
        `reference.pokemon_evolution_edges: unexpected source-verified Generation III edge ${evolutionEdgeRowLabel(edge)}.`,
      );
    }
  }

  const gen4SourceVerifiedEvolutionEdges = [
    [
      "nincada",
      "shedinja",
      "special-condition",
      20,
      null,
      null,
      null,
      null,
      null,
      null,
      {
        requires_empty_party_slot: true,
        requires_poke_ball: true,
        poke_ball_kind: "regular-poke-ball",
      },
    ],
    [
      "magneton",
      "magnezone",
      "location",
      null,
      null,
      null,
      null,
      null,
      null,
      "Mt. Coronet",
      { location: "mt-coronet" },
    ],
    ["lickitung", "lickilicky", "move-known", null, null, null, "rollout"],
    ["rhydon", "rhyperior", "trade", null, null, "protector"],
    ["tangela", "tangrowth", "move-known", null, null, null, "ancient-power"],
    ["electabuzz", "electivire", "trade", null, null, "electirizer"],
    ["magmar", "magmortar", "trade", null, null, "magmarizer"],
    [
      "eevee",
      "leafeon",
      "location",
      null,
      null,
      null,
      null,
      null,
      null,
      "Eterna Forest",
      { location: "eterna-forest" },
    ],
    [
      "eevee",
      "glaceon",
      "location",
      null,
      null,
      null,
      null,
      null,
      null,
      "Sinnoh Route 217",
      { location: "sinnoh-route-217" },
    ],
    ["togetic", "togekiss", "item", null, "shiny-stone"],
    ["aipom", "ambipom", "move-known", null, null, null, "double-hit"],
    ["yanma", "yanmega", "move-known", null, null, null, "ancient-power"],
    ["murkrow", "honchkrow", "item", null, "dusk-stone"],
    ["misdreavus", "mismagius", "item", null, "dusk-stone"],
    [
      "gligar",
      "gliscor",
      "time-of-day",
      null,
      null,
      "razor-fang",
      null,
      null,
      "night",
      null,
      { held_item: "razor-fang" },
    ],
    [
      "sneasel",
      "weavile",
      "time-of-day",
      null,
      null,
      "razor-claw",
      null,
      null,
      "night",
      null,
      { held_item: "razor-claw" },
    ],
    ["piloswine", "mamoswine", "move-known", null, null, null, "ancient-power"],
    ["porygon2", "porygon-z", "trade", null, null, "dubious-disc"],
    ["kirlia", "gallade", "item", null, "dawn-stone", null, null, "male"],
    [
      "nosepass",
      "probopass",
      "location",
      null,
      null,
      null,
      null,
      null,
      null,
      "Mt. Coronet",
      { location: "mt-coronet" },
    ],
    ["roselia", "roserade", "item", null, "shiny-stone"],
    ["dusclops", "dusknoir", "trade", null, null, "reaper-cloth"],
    ["snorunt", "froslass", "item", null, "dawn-stone", null, null, "female"],
    ["turtwig", "grotle", "level-up", 18],
    ["grotle", "torterra", "level-up", 32],
    ["chimchar", "monferno", "level-up", 14],
    ["monferno", "infernape", "level-up", 36],
    ["piplup", "prinplup", "level-up", 16],
    ["prinplup", "empoleon", "level-up", 36],
    ["starly", "staravia", "level-up", 14],
    ["staravia", "staraptor", "level-up", 34],
    ["bidoof", "bibarel", "level-up", 15],
    ["kricketot", "kricketune", "level-up", 10],
    ["shinx", "luxio", "level-up", 15],
    ["luxio", "luxray", "level-up", 30],
    [
      "budew",
      "roselia",
      "friendship",
      null,
      null,
      null,
      null,
      null,
      "day",
      null,
      { min_happiness: 220 },
    ],
    ["cranidos", "rampardos", "level-up", 30],
    ["shieldon", "bastiodon", "level-up", 30],
    ["burmy", "wormadam", "gender-specific", 20, null, null, null, "female"],
    ["burmy", "mothim", "gender-specific", 20, null, null, null, "male"],
    [
      "burmy-sandy",
      "wormadam-sandy",
      "gender-specific",
      20,
      null,
      null,
      null,
      "female",
      null,
      null,
      { form_rule: "sandy_cloak" },
    ],
    [
      "burmy-trash",
      "wormadam-trash",
      "gender-specific",
      20,
      null,
      null,
      null,
      "female",
      null,
      null,
      { form_rule: "trash_cloak" },
    ],
    ["combee", "vespiquen", "gender-specific", 21, null, null, null, "female"],
    ["buizel", "floatzel", "level-up", 26],
    ["cherubi", "cherrim", "level-up", 25],
    ["shellos", "gastrodon", "level-up", 30],
    ["drifloon", "drifblim", "level-up", 28],
    [
      "buneary",
      "lopunny",
      "friendship",
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      { min_happiness: 220 },
    ],
    ["glameow", "purugly", "level-up", 38],
    [
      "chingling",
      "chimecho",
      "friendship",
      null,
      null,
      null,
      null,
      null,
      "night",
      null,
      { min_happiness: 220 },
    ],
    ["stunky", "skuntank", "level-up", 34],
    ["bronzor", "bronzong", "level-up", 33],
    ["bonsly", "sudowoodo", "move-known", null, null, null, "mimic"],
    ["mime-jr", "mr-mime", "move-known", null, null, null, "mimic"],
    [
      "happiny",
      "chansey",
      "time-of-day",
      null,
      null,
      "oval-stone",
      null,
      null,
      "day",
      null,
      { held_item: "oval-stone" },
    ],
    ["gible", "gabite", "level-up", 24],
    ["gabite", "garchomp", "level-up", 48],
    [
      "munchlax",
      "snorlax",
      "friendship",
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      { min_happiness: 220 },
    ],
    [
      "riolu",
      "lucario",
      "friendship",
      null,
      null,
      null,
      null,
      null,
      "day",
      null,
      { min_happiness: 220 },
    ],
    ["hippopotas", "hippowdon", "level-up", 34],
    ["skorupi", "drapion", "level-up", 40],
    ["croagunk", "toxicroak", "level-up", 37],
    ["finneon", "lumineon", "level-up", 31],
    [
      "mantyke",
      "mantine",
      "special-condition",
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      { party_species: "remoraid" },
    ],
    ["snover", "abomasnow", "level-up", 40],
  ].map(
    ([
      fromForm,
      toForm,
      methodSlug,
      minimumLevel,
      itemSlug,
      heldItemSlug,
      knownMoveSlug,
      gender,
      timeOfDay,
      locationLabel,
      conditionData,
    ]) => ({
      fromForm,
      toForm,
      methodSlug,
      minimumLevel,
      itemSlug,
      heldItemSlug,
      knownMoveSlug,
      gender,
      timeOfDay,
      locationLabel,
      conditionData,
    }),
  );

  const gen4EdgeRows = edgeRows
    .map(({ row }) => row)
    .filter((row) => row.introduced_generation_id === 4);
  if (gen4EdgeRows.length !== gen4SourceVerifiedEvolutionEdges.length) {
    errors.push(
      `reference.pokemon_evolution_edges: expected ${gen4SourceVerifiedEvolutionEdges.length} source-verified Generation IV evolution rows, got ${gen4EdgeRows.length}.`,
    );
  }

  for (const expected of gen4SourceVerifiedEvolutionEdges) {
    if (
      !gen4EdgeRows.some((edge) => sourceVerifiedEdgeMatches(edge, expected))
    ) {
      errors.push(
        `reference.pokemon_evolution_edges: missing or mismatched source-verified Generation IV edge ${expected.fromForm} -> ${expected.toForm}.`,
      );
    }
  }

  for (const edge of gen4EdgeRows) {
    if (
      !gen4SourceVerifiedEvolutionEdges.some((expected) =>
        sourceVerifiedEdgeMatches(edge, expected),
      )
    ) {
      errors.push(
        `reference.pokemon_evolution_edges: unexpected source-verified Generation IV edge ${evolutionEdgeRowLabel(edge)}.`,
      );
    }
  }

  const gen5SourceVerifiedEvolutionEdges = [
    [
      "magneton",
      "magnezone",
      "location",
      null,
      null,
      null,
      null,
      null,
      null,
      "Chargestone Cave",
      { location: "chargestone-cave" },
    ],
    [
      "eevee",
      "leafeon",
      "location",
      null,
      null,
      null,
      null,
      null,
      null,
      "Pinwheel Forest",
      { location: "pinwheel-forest" },
    ],
    [
      "eevee",
      "glaceon",
      "location",
      null,
      null,
      null,
      null,
      null,
      null,
      "Twist Mountain",
      { location: "twist-mountain" },
    ],
    [
      "nosepass",
      "probopass",
      "location",
      null,
      null,
      null,
      null,
      null,
      null,
      "Chargestone Cave",
      { location: "chargestone-cave" },
    ],
    [
      "feebas",
      "milotic",
      "trade",
      null,
      null,
      "prism-scale",
      null,
      null,
      null,
      null,
      { held_item: "prism-scale" },
    ],
    ["snivy", "servine", "level-up", 17],
    ["servine", "serperior", "level-up", 36],
    ["tepig", "pignite", "level-up", 17],
    ["pignite", "emboar", "level-up", 36],
    ["oshawott", "dewott", "level-up", 17],
    ["dewott", "samurott", "level-up", 36],
    ["patrat", "watchog", "level-up", 20],
    ["lillipup", "herdier", "level-up", 16],
    ["herdier", "stoutland", "level-up", 32],
    ["purrloin", "liepard", "level-up", 20],
    ["pansage", "simisage", "item", null, "leaf-stone"],
    ["pansear", "simisear", "item", null, "fire-stone"],
    ["panpour", "simipour", "item", null, "water-stone"],
    ["munna", "musharna", "item", null, "moon-stone"],
    ["pidove", "tranquill", "level-up", 21],
    ["tranquill", "unfezant", "level-up", 32],
    ["blitzle", "zebstrika", "level-up", 27],
    ["roggenrola", "boldore", "level-up", 25],
    ["boldore", "gigalith", "trade", null],
    [
      "woobat",
      "swoobat",
      "friendship",
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      { min_happiness: 220 },
    ],
    ["drilbur", "excadrill", "level-up", 31],
    ["timburr", "gurdurr", "level-up", 25],
    ["gurdurr", "conkeldurr", "trade", null],
    ["tympole", "palpitoad", "level-up", 25],
    ["palpitoad", "seismitoad", "level-up", 36],
    ["sewaddle", "swadloon", "level-up", 20],
    [
      "swadloon",
      "leavanny",
      "friendship",
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      { min_happiness: 220 },
    ],
    ["venipede", "whirlipede", "level-up", 22],
    ["whirlipede", "scolipede", "level-up", 30],
    ["cottonee", "whimsicott", "item", null, "sun-stone"],
    ["petilil", "lilligant", "item", null, "sun-stone"],
    ["sandile", "krokorok", "level-up", 29],
    ["krokorok", "krookodile", "level-up", 40],
    ["darumaka", "darmanitan", "level-up", 35],
    ["dwebble", "crustle", "level-up", 34],
    ["scraggy", "scrafty", "level-up", 39],
    ["yamask", "cofagrigus", "level-up", 34],
    ["tirtouga", "carracosta", "level-up", 37],
    ["archen", "archeops", "level-up", 37],
    ["trubbish", "garbodor", "level-up", 36],
    ["zorua", "zoroark", "level-up", 30],
    ["minccino", "cinccino", "item", null, "shiny-stone"],
    ["gothita", "gothorita", "level-up", 32],
    ["gothorita", "gothitelle", "level-up", 41],
    ["solosis", "duosion", "level-up", 32],
    ["duosion", "reuniclus", "level-up", 41],
    ["ducklett", "swanna", "level-up", 35],
    ["vanillite", "vanillish", "level-up", 35],
    ["vanillish", "vanilluxe", "level-up", 47],
    ["deerling", "sawsbuck", "level-up", 34],
    [
      "karrablast",
      "escavalier",
      "trade",
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      { trade_species: "shelmet" },
    ],
    ["foongus", "amoonguss", "level-up", 39],
    ["frillish", "jellicent", "level-up", 40],
    ["joltik", "galvantula", "level-up", 36],
    ["ferroseed", "ferrothorn", "level-up", 40],
    ["klink", "klang", "level-up", 38],
    ["klang", "klinklang", "level-up", 49],
    ["tynamo", "eelektrik", "level-up", 39],
    ["eelektrik", "eelektross", "item", null, "thunder-stone"],
    ["elgyem", "beheeyem", "level-up", 42],
    ["litwick", "lampent", "level-up", 41],
    ["lampent", "chandelure", "item", null, "dusk-stone"],
    ["axew", "fraxure", "level-up", 38],
    ["fraxure", "haxorus", "level-up", 48],
    ["cubchoo", "beartic", "level-up", 37],
    [
      "shelmet",
      "accelgor",
      "trade",
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      { trade_species: "karrablast" },
    ],
    ["mienfoo", "mienshao", "level-up", 50],
    ["golett", "golurk", "level-up", 43],
    ["pawniard", "bisharp", "level-up", 52],
    ["rufflet", "braviary", "level-up", 54],
    ["vullaby", "mandibuzz", "level-up", 54],
    ["deino", "zweilous", "level-up", 50],
    ["zweilous", "hydreigon", "level-up", 64],
    ["larvesta", "volcarona", "level-up", 59],
  ].map(
    ([
      fromForm,
      toForm,
      methodSlug,
      minimumLevel,
      itemSlug,
      heldItemSlug,
      knownMoveSlug,
      gender,
      timeOfDay,
      locationLabel,
      conditionData,
    ]) => ({
      fromForm,
      toForm,
      methodSlug,
      minimumLevel,
      itemSlug,
      heldItemSlug,
      knownMoveSlug,
      gender,
      timeOfDay,
      locationLabel,
      conditionData,
    }),
  );

  const gen5EdgeRows = edgeRows
    .map(({ row }) => row)
    .filter((row) => row.introduced_generation_id === 5);
  if (gen5EdgeRows.length !== gen5SourceVerifiedEvolutionEdges.length) {
    errors.push(
      `reference.pokemon_evolution_edges: expected ${gen5SourceVerifiedEvolutionEdges.length} source-verified Generation V evolution rows, got ${gen5EdgeRows.length}.`,
    );
  }

  for (const expected of gen5SourceVerifiedEvolutionEdges) {
    if (
      !gen5EdgeRows.some((edge) => sourceVerifiedEdgeMatches(edge, expected))
    ) {
      errors.push(
        `reference.pokemon_evolution_edges: missing or mismatched source-verified Generation V edge ${expected.fromForm} -> ${expected.toForm}.`,
      );
    }
  }

  for (const edge of gen5EdgeRows) {
    if (
      !gen5SourceVerifiedEvolutionEdges.some((expected) =>
        sourceVerifiedEdgeMatches(edge, expected),
      )
    ) {
      errors.push(
        `reference.pokemon_evolution_edges: unexpected source-verified Generation V edge ${evolutionEdgeRowLabel(edge)}.`,
      );
    }
  }

  const gen6SourceVerifiedEvolutionEdges = [
    {
      fromForm: "magneton",
      toForm: "magnezone",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "Kalos Route 13",
      conditionData: { location: "kalos-route-13" },
    },
    {
      fromForm: "magneton",
      toForm: "magnezone",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "New Mauville",
      conditionData: { location: "new-mauville" },
    },
    {
      fromForm: "eevee",
      toForm: "leafeon",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "Kalos Route 20",
      conditionData: { location: "kalos-route-20" },
    },
    {
      fromForm: "eevee",
      toForm: "leafeon",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "Petalburg Woods",
      conditionData: { location: "petalburg-woods" },
    },
    {
      fromForm: "eevee",
      toForm: "glaceon",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "Frost Cavern",
      conditionData: { location: "frost-cavern" },
    },
    {
      fromForm: "eevee",
      toForm: "glaceon",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "Shoal Cave",
      conditionData: { location: "shoal-cave" },
    },
    {
      fromForm: "nosepass",
      toForm: "probopass",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "Kalos Route 13",
      conditionData: { location: "kalos-route-13" },
    },
    {
      fromForm: "nosepass",
      toForm: "probopass",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "New Mauville",
      conditionData: { location: "new-mauville" },
    },
    {
      fromForm: "eevee",
      toForm: "sylveon",
      methodSlug: "friendship",
      minimumLevel: null,
      knownTypeSlug: "fairy",
      conditionData: { known_move_type: "fairy", min_affection: 2 },
    },
    {
      fromForm: "chespin",
      toForm: "quilladin",
      methodSlug: "level-up",
      minimumLevel: 16,
    },
    {
      fromForm: "quilladin",
      toForm: "chesnaught",
      methodSlug: "level-up",
      minimumLevel: 36,
    },
    {
      fromForm: "fennekin",
      toForm: "braixen",
      methodSlug: "level-up",
      minimumLevel: 16,
    },
    {
      fromForm: "braixen",
      toForm: "delphox",
      methodSlug: "level-up",
      minimumLevel: 36,
    },
    {
      fromForm: "froakie",
      toForm: "frogadier",
      methodSlug: "level-up",
      minimumLevel: 16,
    },
    {
      fromForm: "frogadier",
      toForm: "greninja",
      methodSlug: "level-up",
      minimumLevel: 36,
    },
    {
      fromForm: "bunnelby",
      toForm: "diggersby",
      methodSlug: "level-up",
      minimumLevel: 20,
    },
    {
      fromForm: "fletchling",
      toForm: "fletchinder",
      methodSlug: "level-up",
      minimumLevel: 17,
    },
    {
      fromForm: "fletchinder",
      toForm: "talonflame",
      methodSlug: "level-up",
      minimumLevel: 35,
    },
    {
      fromForm: "scatterbug",
      toForm: "spewpa",
      methodSlug: "level-up",
      minimumLevel: 9,
    },
    {
      fromForm: "spewpa",
      toForm: "vivillon",
      methodSlug: "level-up",
      minimumLevel: 12,
    },
    {
      fromForm: "litleo",
      toForm: "pyroar",
      methodSlug: "level-up",
      minimumLevel: 35,
    },
    {
      fromForm: "flabebe",
      toForm: "floette",
      methodSlug: "level-up",
      minimumLevel: 19,
    },
    {
      fromForm: "floette",
      toForm: "florges",
      methodSlug: "item",
      minimumLevel: null,
      itemSlug: "shiny-stone",
    },
    {
      fromForm: "skiddo",
      toForm: "gogoat",
      methodSlug: "level-up",
      minimumLevel: 32,
    },
    {
      fromForm: "pancham",
      toForm: "pangoro",
      methodSlug: "special-condition",
      minimumLevel: 32,
      conditionData: { party_type: "dark" },
    },
    {
      fromForm: "espurr",
      toForm: "meowstic",
      methodSlug: "gender-specific",
      minimumLevel: 25,
      gender: "male",
      conditionData: { target_form_rule: "male" },
    },
    {
      fromForm: "espurr",
      toForm: "meowstic-female",
      methodSlug: "gender-specific",
      minimumLevel: 25,
      gender: "female",
      conditionData: { target_form_rule: "female" },
    },
    {
      fromForm: "honedge",
      toForm: "doublade",
      methodSlug: "level-up",
      minimumLevel: 35,
    },
    {
      fromForm: "doublade",
      toForm: "aegislash",
      methodSlug: "item",
      minimumLevel: null,
      itemSlug: "dusk-stone",
    },
    {
      fromForm: "spritzee",
      toForm: "aromatisse",
      methodSlug: "trade",
      minimumLevel: null,
      heldItemSlug: "sachet",
      conditionData: { held_item: "sachet" },
    },
    {
      fromForm: "swirlix",
      toForm: "slurpuff",
      methodSlug: "trade",
      minimumLevel: null,
      heldItemSlug: "whipped-dream",
      conditionData: { held_item: "whipped-dream" },
    },
    {
      fromForm: "inkay",
      toForm: "malamar",
      methodSlug: "special-condition",
      minimumLevel: 30,
      conditionData: { turn_upside_down: true },
    },
    {
      fromForm: "binacle",
      toForm: "barbaracle",
      methodSlug: "level-up",
      minimumLevel: 39,
    },
    {
      fromForm: "skrelp",
      toForm: "dragalge",
      methodSlug: "level-up",
      minimumLevel: 48,
    },
    {
      fromForm: "clauncher",
      toForm: "clawitzer",
      methodSlug: "level-up",
      minimumLevel: 37,
    },
    {
      fromForm: "helioptile",
      toForm: "heliolisk",
      methodSlug: "item",
      minimumLevel: null,
      itemSlug: "sun-stone",
    },
    {
      fromForm: "tyrunt",
      toForm: "tyrantrum",
      methodSlug: "time-of-day",
      minimumLevel: 39,
      timeOfDay: "day",
    },
    {
      fromForm: "amaura",
      toForm: "aurorus",
      methodSlug: "time-of-day",
      minimumLevel: 39,
      timeOfDay: "night",
    },
    {
      fromForm: "goomy",
      toForm: "sliggoo",
      methodSlug: "level-up",
      minimumLevel: 40,
    },
    {
      fromForm: "sliggoo",
      toForm: "goodra",
      methodSlug: "special-condition",
      minimumLevel: 50,
      conditionData: { needs_overworld_rain: true },
    },
    {
      fromForm: "phantump",
      toForm: "trevenant",
      methodSlug: "trade",
      minimumLevel: null,
    },
    {
      fromForm: "pumpkaboo",
      toForm: "gourgeist",
      methodSlug: "trade",
      minimumLevel: null,
    },
    {
      fromForm: "pumpkaboo-small",
      toForm: "gourgeist-small",
      methodSlug: "trade",
      minimumLevel: null,
      conditionData: { target_form_rule: "same-size" },
    },
    {
      fromForm: "pumpkaboo-large",
      toForm: "gourgeist-large",
      methodSlug: "trade",
      minimumLevel: null,
      conditionData: { target_form_rule: "same-size" },
    },
    {
      fromForm: "pumpkaboo-super",
      toForm: "gourgeist-super",
      methodSlug: "trade",
      minimumLevel: null,
      conditionData: { target_form_rule: "same-size" },
    },
    {
      fromForm: "bergmite",
      toForm: "avalugg",
      methodSlug: "level-up",
      minimumLevel: 37,
    },
    {
      fromForm: "noibat",
      toForm: "noivern",
      methodSlug: "level-up",
      minimumLevel: 48,
    },
  ];

  const gen6EdgeRows = edgeRows
    .map(({ row }) => row)
    .filter((row) => row.introduced_generation_id === 6);
  if (gen6EdgeRows.length !== gen6SourceVerifiedEvolutionEdges.length) {
    errors.push(
      `reference.pokemon_evolution_edges: expected ${gen6SourceVerifiedEvolutionEdges.length} source-verified Generation VI evolution rows, got ${gen6EdgeRows.length}.`,
    );
  }

  for (const expected of gen6SourceVerifiedEvolutionEdges) {
    if (
      !gen6EdgeRows.some((edge) => sourceVerifiedEdgeMatches(edge, expected))
    ) {
      errors.push(
        `reference.pokemon_evolution_edges: missing or mismatched source-verified Generation VI edge ${expected.fromForm} -> ${expected.toForm}.`,
      );
    }
  }

  for (const edge of gen6EdgeRows) {
    if (
      !gen6SourceVerifiedEvolutionEdges.some((expected) =>
        sourceVerifiedEdgeMatches(edge, expected),
      )
    ) {
      errors.push(
        `reference.pokemon_evolution_edges: unexpected source-verified Generation VI edge ${evolutionEdgeRowLabel(edge)}.`,
      );
    }
  }

  const gen7SourceVerifiedEvolutionEdges = [
    {
      fromForm: "magneton",
      toForm: "magnezone",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "Blush Mountain",
      conditionData: { location: "blush-mountain" },
    },
    {
      fromForm: "magneton",
      toForm: "magnezone",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "Vast Poni Canyon",
      conditionData: { location: "vast-poni-canyon" },
    },
    {
      fromForm: "eevee",
      toForm: "leafeon",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "Lush Jungle",
      conditionData: { location: "lush-jungle" },
    },
    {
      fromForm: "eevee",
      toForm: "glaceon",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "Mount Lanakila",
      conditionData: { location: "mount-lanakila" },
    },
    {
      fromForm: "nosepass",
      toForm: "probopass",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "Blush Mountain",
      conditionData: { location: "blush-mountain" },
    },
    {
      fromForm: "nosepass",
      toForm: "probopass",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "Vast Poni Canyon",
      conditionData: { location: "vast-poni-canyon" },
    },
    {
      fromForm: "alolan-rattata",
      toForm: "alolan-raticate",
      methodSlug: "time-of-day",
      minimumLevel: 20,
      timeOfDay: "night",
    },
    {
      fromForm: "pikachu",
      toForm: "alolan-raichu",
      methodSlug: "item",
      minimumLevel: null,
      itemSlug: "thunder-stone",
      conditionData: { region: "alola" },
    },
    {
      fromForm: "alolan-sandshrew",
      toForm: "alolan-sandslash",
      methodSlug: "item",
      minimumLevel: null,
      itemSlug: "ice-stone",
    },
    {
      fromForm: "alolan-vulpix",
      toForm: "alolan-ninetales",
      methodSlug: "item",
      minimumLevel: null,
      itemSlug: "ice-stone",
    },
    {
      fromForm: "alolan-diglett",
      toForm: "alolan-dugtrio",
      methodSlug: "level-up",
      minimumLevel: 26,
    },
    {
      fromForm: "alolan-meowth",
      toForm: "alolan-persian",
      methodSlug: "friendship",
      minimumLevel: null,
      conditionData: { min_happiness: 220 },
    },
    {
      fromForm: "alolan-geodude",
      toForm: "alolan-graveler",
      methodSlug: "level-up",
      minimumLevel: 25,
    },
    {
      fromForm: "alolan-graveler",
      toForm: "alolan-golem",
      methodSlug: "trade",
      minimumLevel: null,
    },
    {
      fromForm: "alolan-grimer",
      toForm: "alolan-muk",
      methodSlug: "level-up",
      minimumLevel: 38,
    },
    {
      fromForm: "exeggcute",
      toForm: "alolan-exeggutor",
      methodSlug: "item",
      minimumLevel: null,
      itemSlug: "leaf-stone",
      conditionData: { region: "alola" },
    },
    {
      fromForm: "cubone",
      toForm: "alolan-marowak",
      methodSlug: "time-of-day",
      minimumLevel: 28,
      timeOfDay: "night",
      conditionData: { region: "alola" },
    },
    {
      fromForm: "rowlet",
      toForm: "dartrix",
      methodSlug: "level-up",
      minimumLevel: 17,
    },
    {
      fromForm: "dartrix",
      toForm: "decidueye",
      methodSlug: "level-up",
      minimumLevel: 34,
    },
    {
      fromForm: "litten",
      toForm: "torracat",
      methodSlug: "level-up",
      minimumLevel: 17,
    },
    {
      fromForm: "torracat",
      toForm: "incineroar",
      methodSlug: "level-up",
      minimumLevel: 34,
    },
    {
      fromForm: "popplio",
      toForm: "brionne",
      methodSlug: "level-up",
      minimumLevel: 17,
    },
    {
      fromForm: "brionne",
      toForm: "primarina",
      methodSlug: "level-up",
      minimumLevel: 34,
    },
    {
      fromForm: "pikipek",
      toForm: "trumbeak",
      methodSlug: "level-up",
      minimumLevel: 14,
    },
    {
      fromForm: "trumbeak",
      toForm: "toucannon",
      methodSlug: "level-up",
      minimumLevel: 28,
    },
    {
      fromForm: "yungoos",
      toForm: "gumshoos",
      methodSlug: "time-of-day",
      minimumLevel: 20,
      timeOfDay: "day",
    },
    {
      fromForm: "grubbin",
      toForm: "charjabug",
      methodSlug: "level-up",
      minimumLevel: 20,
    },
    {
      fromForm: "charjabug",
      toForm: "vikavolt",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "Blush Mountain",
      conditionData: { location: "blush-mountain" },
    },
    {
      fromForm: "charjabug",
      toForm: "vikavolt",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "Vast Poni Canyon",
      conditionData: { location: "vast-poni-canyon" },
    },
    {
      fromForm: "crabrawler",
      toForm: "crabominable",
      methodSlug: "location",
      minimumLevel: null,
      locationLabel: "Mount Lanakila",
      conditionData: { location: "mount-lanakila" },
    },
    {
      fromForm: "cutiefly",
      toForm: "ribombee",
      methodSlug: "level-up",
      minimumLevel: 25,
    },
    {
      fromForm: "rockruff",
      toForm: "lycanroc",
      methodSlug: "time-of-day",
      minimumLevel: 25,
      timeOfDay: "day",
      conditionData: { generation_7_version_family: "sun" },
    },
    {
      fromForm: "rockruff",
      toForm: "lycanroc-midnight",
      methodSlug: "time-of-day",
      minimumLevel: 25,
      timeOfDay: "night",
      conditionData: { generation_7_version_family: "moon" },
    },
    {
      fromForm: "rockruff-own-tempo",
      toForm: "lycanroc-dusk",
      methodSlug: "time-of-day",
      minimumLevel: 25,
      timeOfDay: "dusk",
      conditionData: { required_form: "own-tempo" },
    },
    {
      fromForm: "mareanie",
      toForm: "toxapex",
      methodSlug: "level-up",
      minimumLevel: 38,
    },
    {
      fromForm: "mudbray",
      toForm: "mudsdale",
      methodSlug: "level-up",
      minimumLevel: 30,
    },
    {
      fromForm: "dewpider",
      toForm: "araquanid",
      methodSlug: "level-up",
      minimumLevel: 22,
    },
    {
      fromForm: "fomantis",
      toForm: "lurantis",
      methodSlug: "time-of-day",
      minimumLevel: 34,
      timeOfDay: "day",
    },
    {
      fromForm: "morelull",
      toForm: "shiinotic",
      methodSlug: "level-up",
      minimumLevel: 24,
    },
    {
      fromForm: "salandit",
      toForm: "salazzle",
      methodSlug: "gender-specific",
      minimumLevel: 33,
      gender: "female",
    },
    {
      fromForm: "stufful",
      toForm: "bewear",
      methodSlug: "level-up",
      minimumLevel: 27,
    },
    {
      fromForm: "bounsweet",
      toForm: "steenee",
      methodSlug: "level-up",
      minimumLevel: 18,
    },
    {
      fromForm: "steenee",
      toForm: "tsareena",
      methodSlug: "move-known",
      minimumLevel: null,
      knownMoveSlug: "stomp",
    },
    {
      fromForm: "wimpod",
      toForm: "golisopod",
      methodSlug: "level-up",
      minimumLevel: 30,
    },
    {
      fromForm: "sandygast",
      toForm: "palossand",
      methodSlug: "level-up",
      minimumLevel: 42,
    },
    {
      fromForm: "type-null",
      toForm: "silvally",
      methodSlug: "friendship",
      minimumLevel: null,
      conditionData: { min_happiness: 220 },
    },
    {
      fromForm: "jangmo-o",
      toForm: "hakamo-o",
      methodSlug: "level-up",
      minimumLevel: 35,
    },
    {
      fromForm: "hakamo-o",
      toForm: "kommo-o",
      methodSlug: "level-up",
      minimumLevel: 45,
    },
    {
      fromForm: "cosmog",
      toForm: "cosmoem",
      methodSlug: "level-up",
      minimumLevel: 43,
    },
    {
      fromForm: "cosmoem",
      toForm: "solgaleo",
      methodSlug: "level-up",
      minimumLevel: 53,
      conditionData: { version_family: "sun" },
    },
    {
      fromForm: "cosmoem",
      toForm: "lunala",
      methodSlug: "level-up",
      minimumLevel: 53,
      conditionData: { version_family: "moon" },
    },
    {
      fromForm: "poipole",
      toForm: "naganadel",
      methodSlug: "move-known",
      minimumLevel: null,
      knownMoveSlug: "dragon-pulse",
    },
  ];

  const gen7EdgeRows = edgeRows
    .map(({ row }) => row)
    .filter((row) => row.introduced_generation_id === 7);
  if (gen7EdgeRows.length !== gen7SourceVerifiedEvolutionEdges.length) {
    errors.push(
      `reference.pokemon_evolution_edges: expected ${gen7SourceVerifiedEvolutionEdges.length} source-verified Generation VII evolution rows, got ${gen7EdgeRows.length}.`,
    );
  }

  for (const expected of gen7SourceVerifiedEvolutionEdges) {
    if (
      !gen7EdgeRows.some((edge) => sourceVerifiedEdgeMatches(edge, expected))
    ) {
      errors.push(
        `reference.pokemon_evolution_edges: missing or mismatched source-verified Generation VII edge ${expected.fromForm} -> ${expected.toForm}.`,
      );
    }
  }

  for (const edge of gen7EdgeRows) {
    if (
      !gen7SourceVerifiedEvolutionEdges.some((expected) =>
        sourceVerifiedEdgeMatches(edge, expected),
      )
    ) {
      errors.push(
        `reference.pokemon_evolution_edges: unexpected source-verified Generation VII edge ${evolutionEdgeRowLabel(edge)}.`,
      );
    }
  }

  const gen8EdgeRows = edgeRows
    .map(({ row }) => row)
    .filter((row) => row.introduced_generation_id === 8);
  if (gen8EdgeRows.length !== 93) {
    errors.push(
      `reference.pokemon_evolution_edges: expected 93 source-verified Generation VIII evolution rows, got ${gen8EdgeRows.length}.`,
    );
  }

  const gen8SeedFile = path.join(
    seedsRoot,
    "02_reference",
    "08_evolutions",
    "008_gen8.sql",
  );
  const gen8SeedFingerprint = createHash("sha256")
    .update(
      readFileSync(gen8SeedFile, "utf8")
        .split(/\r?\n/)
        .filter((line) => /^  \(.*\),?;?$/.test(line))
        .map((line) =>
          normalizeDisplayTextForSourceFingerprint(
            line.trim().replace(/,?;?$/, ""),
          ),
        )
        .join("|"),
    )
    .digest("hex");
  if (
    gen8SeedFingerprint !==
    "c1026547966421be622ee5748b8aaa3c7f697c6431b126a1ee924c679e8ec98f"
  ) {
    errors.push(
      `reference.pokemon_evolution_edges: Generation VIII source-verified rowset fingerprint changed (${gen8SeedFingerprint}).`,
    );
  }

  const gen9EdgeRows = edgeRows
    .map(({ row }) => row)
    .filter((row) => row.introduced_generation_id === 9);
  if (gen9EdgeRows.length !== 56) {
    errors.push(
      `reference.pokemon_evolution_edges: expected 56 source-verified Generation IX evolution rows, got ${gen9EdgeRows.length}.`,
    );
  }

  const gen9SeedFile = path.join(
    seedsRoot,
    "02_reference",
    "08_evolutions",
    "009_gen9.sql",
  );
  const gen9SeedFingerprint = createHash("sha256")
    .update(
      readFileSync(gen9SeedFile, "utf8")
        .split(/\r?\n/)
        .filter((line) => /^  \(.*\),?;?$/.test(line))
        .map((line) =>
          normalizeDisplayTextForSourceFingerprint(
            line.trim().replace(/,?;?$/, ""),
          ),
        )
        .join("|"),
    )
    .digest("hex");
  if (
    gen9SeedFingerprint !==
    "de997a4fcd8ddeeaf569e7bf21ce98dc41f92460b08028cb79e966e69b27f4b0"
  ) {
    errors.push(
      `reference.pokemon_evolution_edges: Generation IX source-verified rowset fingerprint changed (${gen9SeedFingerprint}).`,
    );
  }

  const expectedEdges = [
    { fromForm: "alolan-rattata", toForm: "alolan-raticate" },
    { fromForm: "alolan-sandshrew", toForm: "alolan-sandslash" },
    { fromForm: "alolan-vulpix", toForm: "alolan-ninetales" },
    { fromForm: "galarian-meowth", toForm: "perrserker" },
    { fromForm: "galarian-slowpoke", toForm: "galarian-slowbro" },
    { fromForm: "galarian-slowpoke", toForm: "galarian-slowking" },
    { fromForm: "hisuian-voltorb", toForm: "hisuian-electrode" },
    { fromForm: "hisuian-qwilfish", toForm: "overqwil" },
    { fromForm: "hisuian-sliggoo", toForm: "hisuian-goodra" },
    { fromForm: "paldea-wooper", toForm: "clodsire" },
    { fromForm: "burmy-sandy", toForm: "wormadam-sandy", minimumLevel: 20 },
    { fromForm: "burmy-trash", toForm: "wormadam-trash", minimumLevel: 20 },
    { fromForm: "rockruff-own-tempo", toForm: "lycanroc-dusk" },
    { fromForm: "toxel", toForm: "toxtricity-low-key", minimumLevel: 30 },
    { fromForm: "basculin-white-striped", toForm: "basculegion-female" },
    { fromForm: "espurr", toForm: "meowstic-female", minimumLevel: 25 },
    { fromForm: "lechonk", toForm: "oinkologne-female", minimumLevel: 18 },
    { fromForm: "dunsparce", toForm: "dudunsparce-three-segment" },
    {
      fromForm: "tandemaus",
      toForm: "maushold-family-of-three",
      minimumLevel: 25,
    },
    {
      fromForm: "sinistea-antique",
      toForm: "polteageist-antique",
      itemSlug: "chipped-pot",
    },
    {
      fromForm: "poltchageist-artisan",
      toForm: "sinistcha-masterpiece",
      itemSlug: "masterpiece-teacup",
    },
    { fromForm: "kubfu", toForm: "urshifu-rapid-strike" },
    {
      fromForm: "kadabra",
      toForm: "alakazam",
      versionGroupSlug: "pla",
      itemSlug: "linking-cord",
    },
    {
      fromForm: "haunter",
      toForm: "gengar",
      versionGroupSlug: "pla",
      itemSlug: "linking-cord",
    },
  ];

  for (const expected of expectedEdges) {
    if (!edgeRows.some(({ row }) => edgeMatches(row, expected))) {
      errors.push(
        `reference.pokemon_evolution_edges: missing curated edge ${expected.fromForm} -> ${expected.toForm}.`,
      );
    }
  }

  const evolutionMoveIds = new Set(
    edgeRows
      .filter(({ row }) => row.known_move_id !== null)
      .map(({ row }) => row.known_move_id),
  );
  for (const slug of expectedKnownEvolutionMoveSlugs) {
    const move = [...movesById.values()].find((row) => row.slug === slug);
    if (move && !evolutionMoveIds.has(move.id)) {
      errors.push(
        `reference.pokemon_evolution_edges: expected known-move evolution dependency ${slug} to be used by an edge.`,
      );
    }
  }

  const evolutionAvailabilityMethodId =
    availabilityMethodsBySlug.get("evolution")?.id;
  const positiveItemAvailabilityRows = itemAvailabilityRows
    .map(({ row }) => row)
    .filter((row) => scopeOperation(row) !== "remove");

  function edgeAppliesToVersionGroup(edgeRow, versionGroupId) {
    const versionGroup = versionGroupsById.get(versionGroupId);
    if (!versionGroup) return false;
    if (edgeRow.version_group_id !== null) {
      return collectVersionGroupClosureIds(
        versionGroupsById,
        dependencyRows,
        versionGroupId,
      ).has(edgeRow.version_group_id);
    }
    return versionGroup.generation_id >= edgeRow.introduced_generation_id;
  }

  function edgeRequiredItemIds(edgeRow) {
    return [edgeRow.item_id, edgeRow.held_item_id].filter(
      (itemId) => itemId !== null,
    );
  }

  function itemIsAvailableForScope(itemId, versionGroupId, gameId) {
    for (const currentVersionGroupId of collectVersionGroupClosureIds(
      versionGroupsById,
      dependencyRows,
      versionGroupId,
    )) {
      if (
        positiveItemAvailabilityRows.some(
          (row) =>
            row.item_id === itemId &&
            row.version_group_id === currentVersionGroupId &&
            (row.game_id === null || gameId === null || row.game_id === gameId),
        )
      ) {
        return true;
      }
    }
    return false;
  }

  if (evolutionAvailabilityMethodId !== undefined) {
    for (const { row, filePath } of pokemonAvailabilityRows) {
      if (
        row.availability_method_id !== evolutionAvailabilityMethodId ||
        scopeOperation(row) === "remove"
      )
        continue;

      const applicableEdges = edgeRows
        .map(({ row }) => row)
        .filter(
          (edgeRow) =>
            edgeRow.to_species_id === row.species_id &&
            edgeRow.to_form_id === row.form_id &&
            edgeAppliesToVersionGroup(edgeRow, row.version_group_id),
        );
      const itemBasedEdges = applicableEdges.filter(
        (edgeRow) => edgeRequiredItemIds(edgeRow).length > 0,
      );
      const hasNonItemAlternative = applicableEdges.some(
        (edgeRow) => edgeRequiredItemIds(edgeRow).length === 0,
      );

      if (itemBasedEdges.length === 0 || hasNonItemAlternative) continue;

      const hasAvailableItemPath = itemBasedEdges.some((edgeRow) =>
        edgeRequiredItemIds(edgeRow).every((itemId) =>
          itemIsAvailableForScope(itemId, row.version_group_id, row.game_id),
        ),
      );

      if (!hasAvailableItemPath) {
        const itemSummaries = itemBasedEdges
          .map((edgeRow) =>
            edgeRequiredItemIds(edgeRow)
              .map((itemId) => itemsById.get(itemId)?.slug ?? itemId)
              .join("+"),
          )
          .join(", ");
        errors.push(
          `${relative(filePath)}: Pokémon availability row ${pokemonAvailabilityRowLabel(row)} is evolution-based, but none of its item-based evolution paths has required item availability in this content scope or an ancestor scope. Required item path(s): ${itemSummaries}.`,
        );
      }
    }
  }
}

function assertPokemonFormRuleRows(tableRows) {
  const formRows = tableRows.get("reference.pokemon_forms") ?? [];
  const ruleRows = tableRows.get("reference.pokemon_form_rules") ?? [];
  const formsById = mapRowsByColumn(formRows, "id");
  const rulesByFormId = mapRowsByColumn(ruleRows, "form_id");
  const nonDefaultForms = formRows
    .filter(({ row }) => row.is_default === false)
    .map(({ row }) => row);

  assertSourceVerifiedRowsetFingerprint(
    "reference.pokemon_form_rules",
    ruleRows,
    [
      "form_id",
      "form_kind",
      "is_team_selectable",
      "is_battle_only",
      "is_cosmetic",
      "is_regional",
      "is_evolution_locked",
      "condition_summary",
      "notes",
    ],
    (a, b) => a.form_id - b.form_id,
    {
      count: expectedNonDefaultFormSlugs.length,
      sha256:
        "caf56fef5c57fabb536611a9e4d22ad810ffa51e7d7613d7e2fbabb5d2a45bb6",
    },
  );

  if (ruleRows.length !== expectedNonDefaultFormSlugs.length) {
    errors.push(
      `reference.pokemon_form_rules: expected ${expectedNonDefaultFormSlugs.length} form-rule rows, got ${ruleRows.length}.`,
    );
  }

  for (const form of nonDefaultForms) {
    if (!rulesByFormId.has(form.id)) {
      errors.push(
        `reference.pokemon_form_rules: missing rule row for non-default form ${form.slug}.`,
      );
    }
  }

  for (const { row, filePath } of ruleRows) {
    const form = formsById.get(row.form_id);
    if (!form) {
      errors.push(
        `${relative(filePath)}: form rule references unseeded form_id ${row.form_id}.`,
      );
      continue;
    }

    if (form.is_default === true) {
      errors.push(
        `${relative(filePath)}: default form ${form.slug} should use implicit default behavior, not a seeded form rule.`,
      );
    }
    if (row.is_team_selectable !== true) {
      errors.push(
        `${relative(filePath)}: curated form ${form.slug} must be team selectable.`,
      );
    }
    if (row.is_battle_only !== false) {
      errors.push(
        `${relative(filePath)}: curated form ${form.slug} must not be battle-only.`,
      );
    }
    if (row.is_cosmetic !== false) {
      errors.push(
        `${relative(filePath)}: curated form ${form.slug} must not be cosmetic-only.`,
      );
    }

    const shouldBeRegional =
      form.slug.startsWith("alolan-") ||
      form.slug.startsWith("galarian-") ||
      form.slug.startsWith("hisuian-") ||
      form.slug.startsWith("paldea-") ||
      form.slug === "basculin-white-striped";
    if (row.is_regional !== shouldBeRegional) {
      errors.push(
        `${relative(filePath)}: form ${form.slug} expected is_regional=${shouldBeRegional}.`,
      );
    }
    if (shouldBeRegional && row.form_kind !== "regional") {
      errors.push(
        `${relative(filePath)}: regional form ${form.slug} must use form_kind=regional.`,
      );
    }
  }
}

function assertPokemonFormItemRequirementRows(tableRows) {
  const requirementRows =
    tableRows.get("reference.pokemon_form_item_requirements") ?? [];
  const formRows = tableRows.get("reference.pokemon_forms") ?? [];
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const versionGroupsById = mapRowsByColumn(
    tableRows.get("reference.version_groups") ?? [],
    "id",
  );
  const versionGroupIds = new Set(versionGroupsById.keys());
  const itemAvailabilityRows =
    tableRows.get("reference.item_availability") ?? [];
  const pokemonAvailabilityRows =
    tableRows.get("reference.pokemon_availability") ?? [];
  const itemsBySlug = mapRowsByColumn(
    tableRows.get("reference.items") ?? [],
    "slug",
  );
  const formsBySlug = mapRowsByColumn(formRows, "slug");
  const formsById = mapRowsByColumn(formRows, "id");
  const itemsById = mapRowsByColumn(
    tableRows.get("reference.items") ?? [],
    "id",
  );
  const typesById = mapRowsByColumn(
    tableRows.get("reference.types") ?? [],
    "id",
  );
  const typesBySlug = mapRowsByColumn(
    tableRows.get("reference.types") ?? [],
    "slug",
  );
  const expectedRowsByKey = new Map();
  const actualKeys = new Set();

  assertSourceVerifiedRowsetFingerprint(
    "reference.pokemon_form_item_requirements",
    requirementRows,
    [
      "form_id",
      "item_id",
      "generation_start_id",
      "generation_end_id",
      "version_group_start_id",
      "version_group_end_id",
      "requirement_kind",
      "type_effect_scope",
      "type_id",
      "notes",
    ],
    (a, b) =>
      a.form_id - b.form_id ||
      a.item_id - b.item_id ||
      a.generation_start_id - b.generation_start_id,
    {
      count: 62,
      sha256:
        "c356424acd193dbb355ed2550c28a481a0aa87a316690ebbbd2e86ee690dbe0c",
    },
  );

  if (requirementRows.length !== 62) {
    errors.push(
      `reference.pokemon_form_item_requirements: expected 62 item requirement rows, got ${requirementRows.length}.`,
    );
  }

  function requirementKey(row) {
    return `${row.form_id}/${row.item_id}/${row.generation_start_id}`;
  }

  function expectRequirement({
    formSlug,
    itemSlug,
    generationStart,
    generationEnd = null,
    versionGroupStart = null,
    versionGroupEnd = null,
    kind,
    typeEffectScope = null,
    typeSlug = null,
  }) {
    const form = formsBySlug.get(formSlug);
    const item = itemsBySlug.get(itemSlug);
    const type = typeSlug ? typesBySlug.get(typeSlug) : null;
    if (!form) {
      errors.push(
        `reference.pokemon_form_item_requirements: expectation references unseeded form ${formSlug}.`,
      );
      return;
    }
    if (!item) {
      errors.push(
        `reference.pokemon_form_item_requirements: expectation references unseeded item ${itemSlug}.`,
      );
      return;
    }
    if (typeSlug && !type) {
      errors.push(
        `reference.pokemon_form_item_requirements: expectation references unseeded type ${typeSlug}.`,
      );
      return;
    }

    const expectedRow = {
      form_id: form.id,
      item_id: item.id,
      generation_start_id: generationStart,
      generation_end_id: generationEnd,
      version_group_start_id: versionGroupStart,
      version_group_end_id: versionGroupEnd,
      requirement_kind: kind,
      type_effect_scope: typeEffectScope,
      type_id: type?.id ?? null,
    };
    expectedRowsByKey.set(requirementKey(expectedRow), expectedRow);
  }

  expectRequirement({
    formSlug: "giratina-origin",
    itemSlug: "griseous-orb",
    generationStart: 4,
    generationEnd: 8,
    versionGroupEnd: 21,
    kind: "required_held_item",
  });
  expectRequirement({
    formSlug: "giratina-origin",
    itemSlug: "griseous-core",
    generationStart: 8,
    versionGroupStart: 22,
    kind: "form_change_item",
  });
  expectRequirement({
    formSlug: "dialga-origin",
    itemSlug: "adamant-crystal",
    generationStart: 8,
    versionGroupStart: 22,
    kind: "form_change_item",
  });
  expectRequirement({
    formSlug: "palkia-origin",
    itemSlug: "lustrous-globe",
    generationStart: 8,
    versionGroupStart: 22,
    kind: "form_change_item",
  });
  expectRequirement({
    formSlug: "ogerpon-wellspring",
    itemSlug: "wellspring-mask",
    generationStart: 9,
    kind: "required_held_item",
    typeEffectScope: "secondary_type",
    typeSlug: "water",
  });
  expectRequirement({
    formSlug: "ogerpon-hearthflame",
    itemSlug: "hearthflame-mask",
    generationStart: 9,
    kind: "required_held_item",
    typeEffectScope: "secondary_type",
    typeSlug: "fire",
  });
  expectRequirement({
    formSlug: "ogerpon-cornerstone",
    itemSlug: "cornerstone-mask",
    generationStart: 9,
    kind: "required_held_item",
    typeEffectScope: "secondary_type",
    typeSlug: "rock",
  });

  const typeDrivenForms = [
    ["fighting", "fist-plate", "fightinium-z", "fighting-memory"],
    ["flying", "sky-plate", "flyinium-z", "flying-memory"],
    ["poison", "toxic-plate", "poisonium-z", "poison-memory"],
    ["ground", "earth-plate", "groundium-z", "ground-memory"],
    ["rock", "stone-plate", "rockium-z", "rock-memory"],
    ["bug", "insect-plate", "buginium-z", "bug-memory"],
    ["ghost", "spooky-plate", "ghostium-z", "ghost-memory"],
    ["steel", "iron-plate", "steelium-z", "steel-memory"],
    ["fire", "flame-plate", "firium-z", "fire-memory"],
    ["water", "splash-plate", "waterium-z", "water-memory"],
    ["grass", "meadow-plate", "grassium-z", "grass-memory"],
    ["electric", "zap-plate", "electrium-z", "electric-memory"],
    ["psychic", "mind-plate", "psychium-z", "psychic-memory"],
    ["ice", "icicle-plate", "icium-z", "ice-memory"],
    ["dragon", "draco-plate", "dragonium-z", "dragon-memory"],
    ["dark", "dread-plate", "darkinium-z", "dark-memory"],
    ["fairy", "pixie-plate", "fairium-z", "fairy-memory"],
  ];

  for (const [
    typeSlug,
    plateSlug,
    zCrystalSlug,
    memorySlug,
  ] of typeDrivenForms) {
    expectRequirement({
      formSlug: `arceus-${typeSlug}`,
      itemSlug: plateSlug,
      generationStart: typeSlug === "fairy" ? 6 : 4,
      kind: "alternative_held_item",
      typeEffectScope: "form_type",
      typeSlug,
    });
    expectRequirement({
      formSlug: `arceus-${typeSlug}`,
      itemSlug: zCrystalSlug,
      generationStart: 7,
      generationEnd: 7,
      kind: "alternative_held_item",
      typeEffectScope: "form_type",
      typeSlug,
    });
    expectRequirement({
      formSlug: `silvally-${typeSlug}`,
      itemSlug: memorySlug,
      generationStart: 7,
      kind: "required_held_item",
      typeEffectScope: "form_type",
      typeSlug,
    });
  }

  for (const [formSlug, itemSlug, typeSlug] of [
    ["genesect-douse-drive", "douse-drive", "water"],
    ["genesect-shock-drive", "shock-drive", "electric"],
    ["genesect-burn-drive", "burn-drive", "fire"],
    ["genesect-chill-drive", "chill-drive", "ice"],
  ]) {
    expectRequirement({
      formSlug,
      itemSlug,
      generationStart: 5,
      kind: "required_held_item",
      typeEffectScope: "signature_move_type",
      typeSlug,
    });
  }

  for (const { row, filePath } of requirementRows) {
    const normalizedRow = {
      ...row,
      version_group_start_id: row.version_group_start_id ?? null,
      version_group_end_id: row.version_group_end_id ?? null,
    };
    const key = requirementKey(normalizedRow);
    actualKeys.add(key);

    if (!formsById.has(normalizedRow.form_id)) {
      errors.push(
        `${relative(filePath)}: form item requirement references unseeded form_id ${normalizedRow.form_id}.`,
      );
    }
    if (!itemsById.has(normalizedRow.item_id)) {
      errors.push(
        `${relative(filePath)}: form item requirement references unseeded item_id ${normalizedRow.item_id}.`,
      );
    }
    if (!generationIds.has(normalizedRow.generation_start_id)) {
      errors.push(
        `${relative(filePath)}: form item requirement references unseeded generation_start_id ${normalizedRow.generation_start_id}.`,
      );
    }
    if (
      normalizedRow.generation_end_id !== null &&
      !generationIds.has(normalizedRow.generation_end_id)
    ) {
      errors.push(
        `${relative(filePath)}: form item requirement references unseeded generation_end_id ${normalizedRow.generation_end_id}.`,
      );
    }
    if (
      normalizedRow.generation_end_id !== null &&
      normalizedRow.generation_end_id < normalizedRow.generation_start_id
    ) {
      errors.push(
        `${relative(filePath)}: form item requirement generation_end_id must be >= generation_start_id.`,
      );
    }
    if (
      normalizedRow.version_group_start_id !== null &&
      !versionGroupIds.has(normalizedRow.version_group_start_id)
    ) {
      errors.push(
        `${relative(filePath)}: form item requirement references unseeded version_group_start_id ${normalizedRow.version_group_start_id}.`,
      );
    }
    if (
      normalizedRow.version_group_end_id !== null &&
      !versionGroupIds.has(normalizedRow.version_group_end_id)
    ) {
      errors.push(
        `${relative(filePath)}: form item requirement references unseeded version_group_end_id ${normalizedRow.version_group_end_id}.`,
      );
    }
    if (
      normalizedRow.version_group_start_id !== null &&
      normalizedRow.version_group_end_id !== null &&
      normalizedRow.version_group_end_id < normalizedRow.version_group_start_id
    ) {
      errors.push(
        `${relative(filePath)}: form item requirement version_group_end_id must be >= version_group_start_id.`,
      );
    }
    if (
      (normalizedRow.type_effect_scope === null) !==
      (normalizedRow.type_id === null)
    ) {
      errors.push(
        `${relative(filePath)}: form item requirement type_effect_scope and type_id must be set together.`,
      );
    }
    if (
      normalizedRow.type_id !== null &&
      !typesById.has(normalizedRow.type_id)
    ) {
      errors.push(
        `${relative(filePath)}: form item requirement references unseeded type_id ${normalizedRow.type_id}.`,
      );
    }

    const expectedRow = expectedRowsByKey.get(key);
    if (!expectedRow) {
      errors.push(
        `${relative(filePath)}: unexpected form item requirement ${key}.`,
      );
      continue;
    }

    for (const column of [
      "generation_end_id",
      "version_group_start_id",
      "version_group_end_id",
      "requirement_kind",
      "type_effect_scope",
      "type_id",
    ]) {
      if (normalizedRow[column] !== expectedRow[column]) {
        errors.push(
          `${relative(filePath)}: form item requirement ${key} expected ${column} ${expectedRow[column]}, got ${normalizedRow[column]}.`,
        );
      }
    }
  }

  for (const expectedKey of expectedRowsByKey.keys()) {
    if (!actualKeys.has(expectedKey)) {
      errors.push(
        `reference.pokemon_form_item_requirements: missing expected requirement ${expectedKey}.`,
      );
    }
  }

  const requirementRowsByFormId = new Map();
  for (const { row } of requirementRows) {
    const normalizedRow = {
      ...row,
      version_group_start_id: row.version_group_start_id ?? null,
      version_group_end_id: row.version_group_end_id ?? null,
    };
    if (!requirementRowsByFormId.has(normalizedRow.form_id)) {
      requirementRowsByFormId.set(normalizedRow.form_id, []);
    }
    requirementRowsByFormId.get(normalizedRow.form_id).push(normalizedRow);
  }

  const availableItemScopeKeys = new Set(
    itemAvailabilityRows.map(
      ({ row }) => `${row.item_id}:${row.version_group_id}`,
    ),
  );

  function requirementAppliesToVersionGroup(requirementRow, versionGroupRow) {
    if (!versionGroupRow) return false;
    if (versionGroupRow.generation_id < requirementRow.generation_start_id)
      return false;
    if (
      requirementRow.generation_end_id !== null &&
      versionGroupRow.generation_id > requirementRow.generation_end_id
    )
      return false;
    if (
      requirementRow.version_group_start_id !== null &&
      versionGroupRow.id < requirementRow.version_group_start_id
    )
      return false;
    if (
      requirementRow.version_group_end_id !== null &&
      versionGroupRow.id > requirementRow.version_group_end_id
    )
      return false;
    return true;
  }

  function hasItemAvailabilityInScopeOrAncestor(itemId, versionGroupId) {
    let currentVersionGroupId = versionGroupId;
    while (currentVersionGroupId !== null) {
      if (availableItemScopeKeys.has(`${itemId}:${currentVersionGroupId}`))
        return true;
      const versionGroup = versionGroupsById.get(currentVersionGroupId);
      currentVersionGroupId = versionGroup?.parent_version_group_id ?? null;
    }
    return false;
  }

  for (const { row, filePath } of pokemonAvailabilityRows) {
    const versionGroup = versionGroupsById.get(row.version_group_id);
    const applicableRequirements = (
      requirementRowsByFormId.get(row.form_id) ?? []
    ).filter((requirementRow) =>
      requirementAppliesToVersionGroup(requirementRow, versionGroup),
    );

    for (const requirementRow of applicableRequirements) {
      if (
        !hasItemAvailabilityInScopeOrAncestor(
          requirementRow.item_id,
          row.version_group_id,
        )
      ) {
        errors.push(
          `${relative(filePath)}: item-driven available form ${row.form_id} in version_group_id ${row.version_group_id} requires item_id ${requirementRow.item_id}, but that item has no availability row in this scope or an ancestor scope.`,
        );
      }
    }
  }
}

function assertPokemonAttributeRows(tableRows) {
  const rows = tableRows.get("reference.pokemon_attributes") ?? [];
  const speciesRows = tableRows.get("reference.pokemon_species") ?? [];
  const formRows = tableRows.get("reference.pokemon_forms") ?? [];
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const speciesById = mapRowsByColumn(speciesRows, "id");
  const formsById = mapRowsByColumn(formRows, "id");
  const formsBySlug = mapRowsByColumn(formRows, "slug");
  const typesById = mapRowsByColumn(
    tableRows.get("reference.types") ?? [],
    "id",
  );
  const typesBySlug = mapRowsByColumn(
    tableRows.get("reference.types") ?? [],
    "slug",
  );
  const abilitiesById = mapRowsByColumn(
    tableRows.get("reference.abilities") ?? [],
    "id",
  );
  const abilitiesBySlug = mapRowsByColumn(
    tableRows.get("reference.abilities") ?? [],
    "slug",
  );
  const eggGroupsById = mapRowsByColumn(
    tableRows.get("reference.egg_groups") ?? [],
    "id",
  );
  const rowsByFormId = new Map();
  const rowsByKey = new Map();

  assertSourceVerifiedRowsetFingerprint(
    "reference.pokemon_attributes",
    rows,
    [
      "species_id",
      "form_id",
      "generation_start_id",
      "primary_type_id",
      "secondary_type_id",
      "primary_ability_id",
      "secondary_ability_id",
      "hidden_ability_id",
      "primary_egg_group_id",
      "secondary_egg_group_id",
      "base_hp",
      "base_attack",
      "base_defense",
      "base_special_attack",
      "base_special_defense",
      "base_speed",
    ],
    (a, b) =>
      a.species_id - b.species_id ||
      a.form_id - b.form_id ||
      a.generation_start_id - b.generation_start_id,
    {
      count: 2243,
      sha256:
        "b37e17352b99856ecb72c7a0696a6991d91bf1822d3303d337cf3db9b0d42301",
    },
  );

  if (rows.length !== 2243) {
    errors.push(
      `reference.pokemon_attributes: expected 2243 curated attribute rows, got ${rows.length}.`,
    );
  }

  addCompositeDuplicateErrors(
    "reference.pokemon_attributes",
    rows,
    "species_id/form_id/generation_start_id",
    (row) => `${row.species_id}/${row.form_id}/${row.generation_start_id}`,
  );

  function assertForeignTimedReference({
    row,
    filePath,
    column,
    rowsById,
    label,
    minGeneration = null,
  }) {
    const value = row[column];
    if (value === null) return;

    const referenced = rowsById.get(value);
    if (!referenced) {
      errors.push(
        `${relative(filePath)}: pokemon attribute references unseeded ${column} ${value}.`,
      );
      return;
    }

    if (minGeneration !== null && row.generation_start_id < minGeneration) {
      errors.push(
        `${relative(filePath)}: ${label} ${column} cannot be used before Generation ${minGeneration}.`,
      );
    }

    if (
      "introduced_generation_id" in referenced &&
      referenced.introduced_generation_id > row.generation_start_id
    ) {
      errors.push(
        `${relative(filePath)}: ${label} ${column} ${value} was introduced in Generation ${referenced.introduced_generation_id}, after row generation ${row.generation_start_id}.`,
      );
    }
  }

  for (const { row, filePath } of rows) {
    const species = speciesById.get(row.species_id);
    const form = formsById.get(row.form_id);

    if (!species) {
      errors.push(
        `${relative(filePath)}: pokemon attribute references unseeded species_id ${row.species_id}.`,
      );
    }
    if (!form) {
      errors.push(
        `${relative(filePath)}: pokemon attribute references unseeded form_id ${row.form_id}.`,
      );
    }
    if (form && form.species_id !== row.species_id) {
      errors.push(
        `${relative(filePath)}: pokemon attribute form ${form.slug} belongs to species_id ${form.species_id}, not ${row.species_id}.`,
      );
    }
    if (!generationIds.has(row.generation_start_id)) {
      errors.push(
        `${relative(filePath)}: pokemon attribute references unseeded generation_start_id ${row.generation_start_id}.`,
      );
    }
    if (form && row.generation_start_id < form.introduced_generation_id) {
      errors.push(
        `${relative(filePath)}: pokemon attribute for form ${form.slug} starts in Generation ${row.generation_start_id}, before form introduction Generation ${form.introduced_generation_id}.`,
      );
    }

    assertForeignTimedReference({
      row,
      filePath,
      column: "primary_type_id",
      rowsById: typesById,
      label: "type",
    });
    assertForeignTimedReference({
      row,
      filePath,
      column: "secondary_type_id",
      rowsById: typesById,
      label: "type",
    });
    if (
      row.secondary_type_id !== null &&
      row.secondary_type_id === row.primary_type_id
    ) {
      errors.push(
        `${relative(filePath)}: pokemon attribute primary_type_id and secondary_type_id must differ.`,
      );
    }

    assertForeignTimedReference({
      row,
      filePath,
      column: "primary_ability_id",
      rowsById: abilitiesById,
      label: "ability",
      minGeneration: 3,
    });
    assertForeignTimedReference({
      row,
      filePath,
      column: "secondary_ability_id",
      rowsById: abilitiesById,
      label: "ability",
      minGeneration: 3,
    });
    assertForeignTimedReference({
      row,
      filePath,
      column: "hidden_ability_id",
      rowsById: abilitiesById,
      label: "hidden ability",
      minGeneration: 5,
    });

    if (
      row.generation_start_id < 3 &&
      (row.primary_ability_id !== null ||
        row.secondary_ability_id !== null ||
        row.hidden_ability_id !== null)
    ) {
      errors.push(
        `${relative(filePath)}: Generation ${row.generation_start_id} attribute rows must not set abilities.`,
      );
    }
    if (row.generation_start_id >= 3 && row.primary_ability_id === null) {
      errors.push(
        `${relative(filePath)}: Generation ${row.generation_start_id} attribute rows must set a primary ability.`,
      );
    }
    if (row.generation_start_id < 5 && row.hidden_ability_id !== null) {
      errors.push(
        `${relative(filePath)}: hidden abilities must not be set before Generation 5.`,
      );
    }

    for (const [leftColumn, rightColumn] of [
      ["primary_ability_id", "secondary_ability_id"],
      ["primary_ability_id", "hidden_ability_id"],
      ["secondary_ability_id", "hidden_ability_id"],
    ]) {
      if (
        row[leftColumn] !== null &&
        row[rightColumn] !== null &&
        row[leftColumn] === row[rightColumn]
      ) {
        errors.push(
          `${relative(filePath)}: pokemon attribute ${leftColumn} and ${rightColumn} must differ.`,
        );
      }
    }

    assertForeignTimedReference({
      row,
      filePath,
      column: "primary_egg_group_id",
      rowsById: eggGroupsById,
      label: "egg group",
      minGeneration: 2,
    });
    assertForeignTimedReference({
      row,
      filePath,
      column: "secondary_egg_group_id",
      rowsById: eggGroupsById,
      label: "egg group",
      minGeneration: 2,
    });
    if (
      row.generation_start_id < 2 &&
      (row.primary_egg_group_id !== null || row.secondary_egg_group_id !== null)
    ) {
      errors.push(
        `${relative(filePath)}: Generation 1 attribute rows must not set egg groups.`,
      );
    }
    if (row.generation_start_id >= 2 && row.primary_egg_group_id === null) {
      errors.push(
        `${relative(filePath)}: Generation ${row.generation_start_id} attribute rows must set a primary egg group.`,
      );
    }
    if (
      row.secondary_egg_group_id !== null &&
      row.secondary_egg_group_id === row.primary_egg_group_id
    ) {
      errors.push(
        `${relative(filePath)}: pokemon attribute primary_egg_group_id and secondary_egg_group_id must differ.`,
      );
    }

    for (const statColumn of [
      "base_hp",
      "base_attack",
      "base_defense",
      "base_special_attack",
      "base_special_defense",
      "base_speed",
    ]) {
      if (
        !Number.isInteger(row[statColumn]) ||
        row[statColumn] < 1 ||
        row[statColumn] > 255
      ) {
        errors.push(
          `${relative(filePath)}: pokemon attribute ${statColumn} must be an integer between 1 and 255.`,
        );
      }
    }
    if (
      row.generation_start_id === 1 &&
      row.base_special_attack !== row.base_special_defense
    ) {
      errors.push(
        `${relative(filePath)}: Generation 1 Special must be stored equally in base_special_attack and base_special_defense.`,
      );
    }

    if (!rowsByFormId.has(row.form_id)) rowsByFormId.set(row.form_id, []);
    rowsByFormId.get(row.form_id).push(row);
    rowsByKey.set(`${row.form_id}/${row.generation_start_id}`, row);
  }

  for (const { row: form } of formRows) {
    const formAttributeRows = rowsByFormId.get(form.id) ?? [];
    if (formAttributeRows.length === 0) {
      errors.push(
        `reference.pokemon_attributes: missing attribute rows for form ${form.slug}.`,
      );
      continue;
    }

    if (
      !formAttributeRows.some(
        (row) => row.generation_start_id === form.introduced_generation_id,
      )
    ) {
      errors.push(
        `reference.pokemon_attributes: form ${form.slug} must have an attribute row at introduced_generation_id ${form.introduced_generation_id}.`,
      );
    }
  }

  function expectAttribute({
    formSlug,
    generationStart,
    primaryTypeSlug,
    secondaryTypeSlug = null,
    primaryAbilitySlug = undefined,
    hiddenAbilitySlug = undefined,
    stats = null,
  }) {
    const form = formsBySlug.get(formSlug);
    const primaryType = typesBySlug.get(primaryTypeSlug);
    const secondaryType =
      secondaryTypeSlug === null ? null : typesBySlug.get(secondaryTypeSlug);
    const primaryAbility =
      primaryAbilitySlug === undefined
        ? undefined
        : abilitiesBySlug.get(primaryAbilitySlug);
    const hiddenAbility =
      hiddenAbilitySlug === undefined || hiddenAbilitySlug === null
        ? null
        : abilitiesBySlug.get(hiddenAbilitySlug);

    if (!form) {
      errors.push(
        `reference.pokemon_attributes: expected attribute references unseeded form ${formSlug}.`,
      );
      return;
    }
    if (!primaryType) {
      errors.push(
        `reference.pokemon_attributes: expected attribute references unseeded type ${primaryTypeSlug}.`,
      );
      return;
    }
    if (secondaryTypeSlug !== null && !secondaryType) {
      errors.push(
        `reference.pokemon_attributes: expected attribute references unseeded type ${secondaryTypeSlug}.`,
      );
      return;
    }
    if (primaryAbilitySlug !== undefined && !primaryAbility) {
      errors.push(
        `reference.pokemon_attributes: expected attribute references unseeded ability ${primaryAbilitySlug}.`,
      );
      return;
    }
    if (
      hiddenAbilitySlug !== undefined &&
      hiddenAbilitySlug !== null &&
      !hiddenAbility
    ) {
      errors.push(
        `reference.pokemon_attributes: expected attribute references unseeded ability ${hiddenAbilitySlug}.`,
      );
      return;
    }

    const row = rowsByKey.get(`${form.id}/${generationStart}`);
    if (!row) {
      errors.push(
        `reference.pokemon_attributes: missing expected row for ${formSlug} at Generation ${generationStart}.`,
      );
      return;
    }

    if (row.primary_type_id !== primaryType.id) {
      errors.push(
        `reference.pokemon_attributes: ${formSlug} Generation ${generationStart} expected primary type ${primaryTypeSlug}.`,
      );
    }
    if (row.secondary_type_id !== (secondaryType?.id ?? null)) {
      errors.push(
        `reference.pokemon_attributes: ${formSlug} Generation ${generationStart} expected secondary type ${secondaryTypeSlug ?? "NULL"}.`,
      );
    }
    if (
      primaryAbilitySlug !== undefined &&
      row.primary_ability_id !== primaryAbility.id
    ) {
      errors.push(
        `reference.pokemon_attributes: ${formSlug} Generation ${generationStart} expected primary ability ${primaryAbilitySlug}.`,
      );
    }
    if (
      hiddenAbilitySlug !== undefined &&
      row.hidden_ability_id !== (hiddenAbility?.id ?? null)
    ) {
      errors.push(
        `reference.pokemon_attributes: ${formSlug} Generation ${generationStart} expected hidden ability ${hiddenAbilitySlug ?? "NULL"}.`,
      );
    }
    if (stats) {
      const [hp, attack, defense, specialAttack, specialDefense, speed] = stats;
      for (const [column, expected] of [
        ["base_hp", hp],
        ["base_attack", attack],
        ["base_defense", defense],
        ["base_special_attack", specialAttack],
        ["base_special_defense", specialDefense],
        ["base_speed", speed],
      ]) {
        if (row[column] !== expected) {
          errors.push(
            `reference.pokemon_attributes: ${formSlug} Generation ${generationStart} expected ${column} ${expected}, got ${row[column]}.`,
          );
        }
      }
    }
  }

  expectAttribute({
    formSlug: "bulbasaur",
    generationStart: 1,
    primaryTypeSlug: "grass",
    secondaryTypeSlug: "poison",
    stats: [45, 49, 49, 65, 65, 45],
  });
  expectAttribute({
    formSlug: "magnemite",
    generationStart: 2,
    primaryTypeSlug: "electric",
    secondaryTypeSlug: "steel",
  });
  expectAttribute({
    formSlug: "clefairy",
    generationStart: 6,
    primaryTypeSlug: "fairy",
    secondaryTypeSlug: null,
  });
  expectAttribute({
    formSlug: "pikachu-partner",
    generationStart: 7,
    primaryTypeSlug: "electric",
    primaryAbilitySlug: "static",
    stats: [45, 80, 50, 75, 60, 120],
  });
  expectAttribute({
    formSlug: "eevee-partner",
    generationStart: 7,
    primaryTypeSlug: "normal",
    primaryAbilitySlug: "run-away",
    stats: [65, 75, 70, 65, 85, 75],
  });
  expectAttribute({
    formSlug: "dialga-origin",
    generationStart: 8,
    primaryTypeSlug: "steel",
    secondaryTypeSlug: "dragon",
    primaryAbilitySlug: "pressure",
    hiddenAbilitySlug: "telepathy",
    stats: [100, 100, 120, 150, 120, 90],
  });
  expectAttribute({
    formSlug: "palkia-origin",
    generationStart: 8,
    primaryTypeSlug: "water",
    secondaryTypeSlug: "dragon",
    primaryAbilitySlug: "pressure",
    hiddenAbilitySlug: "telepathy",
    stats: [90, 100, 100, 150, 120, 120],
  });
  expectAttribute({
    formSlug: "arceus-fairy",
    generationStart: 6,
    primaryTypeSlug: "fairy",
    primaryAbilitySlug: "multitype",
    stats: [120, 120, 120, 120, 120, 120],
  });
  expectAttribute({
    formSlug: "silvally-fire",
    generationStart: 7,
    primaryTypeSlug: "fire",
    primaryAbilitySlug: "rks-system",
    stats: [95, 95, 95, 95, 95, 95],
  });
  expectAttribute({
    formSlug: "genesect-douse-drive",
    generationStart: 5,
    primaryTypeSlug: "bug",
    secondaryTypeSlug: "steel",
    primaryAbilitySlug: "download",
    stats: [71, 120, 95, 120, 95, 99],
  });
  expectAttribute({
    formSlug: "ogerpon-wellspring",
    generationStart: 9,
    primaryTypeSlug: "grass",
    secondaryTypeSlug: "water",
    primaryAbilitySlug: "water-absorb",
    stats: [80, 120, 84, 60, 96, 110],
  });
}

function assertTerminalStatuses(rows) {
  const terminalBySlug = new Map(
    rows.map(({ row }) => [row.slug, row.is_terminal]),
  );
  for (const slug of ["completed", "abandoned"]) {
    if (terminalBySlug.get(slug) !== true) {
      errors.push(`gameplay.mainline_play_statuses: ${slug} must be terminal.`);
    }
  }
  for (const slug of ["not_started", "playing", "paused"]) {
    if (terminalBySlug.get(slug) !== false) {
      errors.push(
        `gameplay.mainline_play_statuses: ${slug} must be non-terminal.`,
      );
    }
  }
}

function mapRowsByColumn(rows, column) {
  return new Map(
    rows
      .filter(({ row }) => column in row)
      .map(({ row }) => [row[column], row]),
  );
}

function mapParsedRowsByColumn(rows, column) {
  return new Map(
    rows
      .filter(({ row }) => column in row)
      .map((parsedRow) => [parsedRow.row[column], parsedRow]),
  );
}

function assertTrackingCoreRows(tableRows) {
  const versionGroupsById = mapRowsByColumn(
    tableRows.get("reference.version_groups") ?? [],
    "id",
  );
  const typesById = mapRowsByColumn(
    tableRows.get("reference.types") ?? [],
    "id",
  );
  const speciesById = mapRowsByColumn(
    tableRows.get("reference.pokemon_species") ?? [],
    "id",
  );
  const formKeys = new Set(
    (tableRows.get("reference.pokemon_forms") ?? []).map(
      ({ row }) => `${row.species_id}/${row.id}`,
    ),
  );
  const gameScopeRows = tableRows.get("reference.game_content_scopes") ?? [];
  const gameScopeKeys = new Set(
    gameScopeRows.map(({ row }) => `${row.game_id}/${row.version_group_id}`),
  );
  const snapshotPoliciesById = mapRowsByColumn(
    tableRows.get("tracking.mainline_snapshot_policies") ?? [],
    "id",
  );
  const milestoneTypesById = mapRowsByColumn(
    tableRows.get("tracking.mainline_milestone_types") ?? [],
    "id",
  );
  const milestonePrerequisiteKindsById = mapRowsByColumn(
    tableRows.get("tracking.mainline_milestone_prerequisite_kinds") ?? [],
    "id",
  );
  const collectibleTypesById = mapRowsByColumn(
    tableRows.get("tracking.mainline_collectible_types") ?? [],
    "id",
  );

  const categories = tableRows.get("tracking.mainline_categories") ?? [];
  const opponents = tableRows.get("tracking.mainline_opponents") ?? [];
  const badges = tableRows.get("tracking.mainline_badges") ?? [];
  const collectibles = tableRows.get("tracking.mainline_collectibles") ?? [];
  const collectibleEntries =
    tableRows.get("tracking.mainline_collectible_entries") ?? [];
  const milestones = tableRows.get("tracking.mainline_milestones") ?? [];
  const pokemonRefs =
    tableRows.get("tracking.mainline_milestone_pokemon_refs") ?? [];
  const opponentRefs =
    tableRows.get("tracking.mainline_milestone_opponent_refs") ?? [];
  const badgeRefs =
    tableRows.get("tracking.mainline_milestone_badge_refs") ?? [];
  const collectibleRefs =
    tableRows.get("tracking.mainline_milestone_collectible_refs") ?? [];
  const decisionOptions =
    tableRows.get("tracking.mainline_milestone_decision_options") ?? [];
  const prerequisites =
    tableRows.get("tracking.mainline_milestone_prerequisites") ?? [];

  const categoriesByKey = new Map(
    categories.map(({ row }) => [`${row.version_group_id}/${row.id}`, row]),
  );
  const opponentsById = mapParsedRowsByColumn(opponents, "id");
  const badgesById = mapParsedRowsByColumn(badges, "id");
  const collectiblesById = mapParsedRowsByColumn(collectibles, "id");
  const collectibleEntryKeys = new Set(
    collectibleEntries.map(({ row }) => `${row.collectible_id}/${row.id}`),
  );
  const milestonesById = mapParsedRowsByColumn(milestones, "id");

  const scopeKey = (row) =>
    `${row.version_group_id}/${row.game_id ?? "version-group"}`;
  const scopedSlugKey = (row) => `${scopeKey(row)}/${row.slug}`;
  const scopedSortKey = (row) => `${scopeKey(row)}/${row.sort_order}`;
  const milestoneCategorySortKey = (row) =>
    `${scopeKey(row)}/${row.category_id}/${row.sort_order}`;

  addCompositeDuplicateErrors(
    "tracking.mainline_categories",
    categories,
    "version_group_id/slug",
    (row) => `${row.version_group_id}/${row.slug}`,
  );
  addCompositeDuplicateErrors(
    "tracking.mainline_categories",
    categories,
    "version_group_id/sort_order",
    (row) => `${row.version_group_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    "tracking.mainline_categories",
    categories,
    "version_group_id",
    (row) => row.version_group_id,
  );

  for (const { row, filePath } of categories) {
    if (!versionGroupsById.has(row.version_group_id)) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_categories row ${row.id} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }
    if (!["story", "collectible"].includes(row.category_kind)) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_categories row ${row.id} has unsupported category_kind ${row.category_kind}.`,
      );
    }
  }

  for (const [tableName, rows] of [
    ["tracking.mainline_opponents", opponents],
    ["tracking.mainline_badges", badges],
  ]) {
    addCompositeDuplicateErrors(
      tableName,
      rows,
      "version_group/game/slug",
      scopedSlugKey,
    );
    addCompositeDuplicateErrors(
      tableName,
      rows,
      "version_group/game/sort_order",
      scopedSortKey,
    );
  }

  addCompositeDuplicateErrors(
    "tracking.mainline_milestones",
    milestones,
    "version_group/game/slug",
    scopedSlugKey,
  );
  addCompositeDuplicateErrors(
    "tracking.mainline_milestones",
    milestones,
    "version_group/game/category/sort_order",
    milestoneCategorySortKey,
  );

  for (const { row, filePath } of opponents) {
    if (!versionGroupsById.has(row.version_group_id)) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_opponents row ${row.id} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }
    if (
      row.game_id !== null &&
      !gameScopeKeys.has(`${row.game_id}/${row.version_group_id}`)
    ) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_opponents row ${row.id} references game_id ${row.game_id} outside version_group_id ${row.version_group_id}.`,
      );
    }
    for (const column of ["primary_type_id", "secondary_type_id"]) {
      if (row[column] !== null && !typesById.has(row[column])) {
        errors.push(
          `${relative(filePath)}: tracking.mainline_opponents row ${row.id} references unseeded ${column} ${row[column]}.`,
        );
      }
    }
  }

  for (const { row, filePath } of badges) {
    if (!versionGroupsById.has(row.version_group_id)) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_badges row ${row.id} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }
    if (
      row.game_id !== null &&
      !gameScopeKeys.has(`${row.game_id}/${row.version_group_id}`)
    ) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_badges row ${row.id} references game_id ${row.game_id} outside version_group_id ${row.version_group_id}.`,
      );
    }
    if (row.type_id !== null && !typesById.has(row.type_id)) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_badges row ${row.id} references unseeded type_id ${row.type_id}.`,
      );
    }
  }

  addCompositeDuplicateErrors(
    "tracking.mainline_collectibles",
    collectibles,
    "version_group/game/slug",
    scopedSlugKey,
  );
  addCompositeDuplicateErrors(
    "tracking.mainline_collectibles",
    collectibles,
    "version_group/game/sort_order",
    scopedSortKey,
  );
  assertScopedContiguousSortOrder(
    "tracking.mainline_collectibles",
    collectibles,
    "version_group/game",
    scopeKey,
  );

  for (const { row, filePath } of collectibles) {
    if (!versionGroupsById.has(row.version_group_id)) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_collectibles row ${row.id} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }
    if (
      row.game_id !== null &&
      !gameScopeKeys.has(`${row.game_id}/${row.version_group_id}`)
    ) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_collectibles row ${row.id} references game_id ${row.game_id} outside version_group_id ${row.version_group_id}.`,
      );
    }
    if (!collectibleTypesById.has(row.collectible_type_id)) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_collectibles row ${row.id} references unseeded collectible_type_id ${row.collectible_type_id}.`,
      );
    }
  }

  addCompositeDuplicateErrors(
    "tracking.mainline_collectible_entries",
    collectibleEntries,
    "collectible_id/slug",
    (row) => `${row.collectible_id}/${row.slug}`,
  );
  addCompositeDuplicateErrors(
    "tracking.mainline_collectible_entries",
    collectibleEntries,
    "collectible_id/sort_order",
    (row) => `${row.collectible_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    "tracking.mainline_collectible_entries",
    collectibleEntries,
    "collectible_id",
    (row) => row.collectible_id,
  );

  const entryCountByCollectibleId = new Map();
  for (const { row, filePath } of collectibleEntries) {
    const collectible = collectiblesById.get(row.collectible_id)?.row;
    if (!collectible) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_collectible_entries row ${row.id} references unseeded collectible_id ${row.collectible_id}.`,
      );
    }
    entryCountByCollectibleId.set(
      row.collectible_id,
      (entryCountByCollectibleId.get(row.collectible_id) ?? 0) + 1,
    );
  }

  for (const { row, filePath } of collectibles) {
    const entryCount = entryCountByCollectibleId.get(row.id) ?? 0;
    if (
      row.total_count !== null &&
      entryCount > 0 &&
      row.total_count !== entryCount
    ) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_collectibles row ${row.id} total_count ${row.total_count} does not match ${entryCount} seeded entries.`,
      );
    }
  }

  for (const { row, filePath } of milestones) {
    if (!versionGroupsById.has(row.version_group_id)) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestones row ${row.id} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }
    if (
      row.game_id !== null &&
      !gameScopeKeys.has(`${row.game_id}/${row.version_group_id}`)
    ) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestones row ${row.id} references game_id ${row.game_id} outside version_group_id ${row.version_group_id}.`,
      );
    }
    if (!categoriesByKey.has(`${row.version_group_id}/${row.category_id}`)) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestones row ${row.id} references unseeded category_id ${row.category_id} for version_group_id ${row.version_group_id}.`,
      );
    }
    if (!milestoneTypesById.has(row.milestone_type_id)) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestones row ${row.id} references unseeded milestone_type_id ${row.milestone_type_id}.`,
      );
    }
    if (!snapshotPoliciesById.has(row.snapshot_policy_id)) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestones row ${row.id} references unseeded snapshot_policy_id ${row.snapshot_policy_id}.`,
      );
    }
    if (row.parent_milestone_id !== null) {
      const parent = milestonesById.get(row.parent_milestone_id)?.row;
      if (!parent) {
        errors.push(
          `${relative(filePath)}: tracking.mainline_milestones row ${row.id} references unseeded parent_milestone_id ${row.parent_milestone_id}.`,
        );
      } else if (parent.version_group_id !== row.version_group_id) {
        errors.push(
          `${relative(filePath)}: tracking.mainline_milestones row ${row.id} references parent_milestone_id ${row.parent_milestone_id} from a different version group.`,
        );
      }
    }
  }

  const gameIdsByVersionGroup = new Map();
  for (const { row } of gameScopeRows) {
    if (!gameIdsByVersionGroup.has(row.version_group_id))
      gameIdsByVersionGroup.set(row.version_group_id, new Set());
    gameIdsByVersionGroup.get(row.version_group_id).add(row.game_id);
  }

  const versionGroupIdsWithMilestones = new Set(
    milestones.map(({ row }) => row.version_group_id),
  );
  for (const versionGroupId of versionGroupIdsWithMilestones) {
    const gameIds = [
      ...(gameIdsByVersionGroup.get(versionGroupId) ?? new Set([null])),
    ];
    for (const gameId of gameIds) {
      const rowsForGame = milestones.filter(
        ({ row }) =>
          row.version_group_id === versionGroupId &&
          (row.game_id === null || row.game_id === gameId),
      );
      const rowsByCategory = new Map();
      for (const parsedRow of rowsForGame) {
        const categoryId = parsedRow.row.category_id;
        if (!rowsByCategory.has(categoryId)) rowsByCategory.set(categoryId, []);
        rowsByCategory.get(categoryId).push(parsedRow.row);
      }

      for (const [categoryId, categoryRows] of rowsByCategory.entries()) {
        const sortOrders = categoryRows
          .map((row) => Number(row.sort_order))
          .sort((a, b) => a - b);
        const uniqueSortOrders = new Set(sortOrders);
        if (uniqueSortOrders.size !== sortOrders.length) {
          errors.push(
            `tracking.mainline_milestones: version_group/game/category ${versionGroupId}/${gameId ?? "version-group"}/${categoryId} has duplicate final sort_order values [${sortOrders.join(", ")}].`,
          );
          continue;
        }

        for (let index = 0; index < sortOrders.length; index += 1) {
          if (sortOrders[index] !== index + 1) {
            errors.push(
              `tracking.mainline_milestones: version_group/game/category ${versionGroupId}/${gameId ?? "version-group"}/${categoryId} final sort_order must be contiguous from 1; got [${sortOrders.join(", ")}].`,
            );
            break;
          }
        }
      }
    }
  }

  addCompositeDuplicateErrors(
    "tracking.mainline_milestone_prerequisites",
    prerequisites,
    "milestone_id/prerequisite_milestone_id/prerequisite_kind_id",
    (row) =>
      `${row.milestone_id}/${row.prerequisite_milestone_id}/${row.prerequisite_kind_id}`,
  );
  addCompositeDuplicateErrors(
    "tracking.mainline_milestone_prerequisites",
    prerequisites,
    "milestone_id/sort_order",
    (row) => `${row.milestone_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    "tracking.mainline_milestone_prerequisites",
    prerequisites,
    "milestone_id",
    (row) => row.milestone_id,
  );

  for (const { row, filePath } of prerequisites) {
    const milestone = milestonesById.get(row.milestone_id)?.row;
    const prerequisite = milestonesById.get(row.prerequisite_milestone_id)?.row;

    if (!milestone) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_prerequisites row ${row.milestone_id}/${row.prerequisite_milestone_id} references unseeded milestone_id ${row.milestone_id}.`,
      );
    } else if (milestone.version_group_id !== row.version_group_id) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_prerequisites row ${row.milestone_id}/${row.prerequisite_milestone_id} has version_group_id ${row.version_group_id}, but milestone ${row.milestone_id} belongs to ${milestone.version_group_id}.`,
      );
    }

    if (!prerequisite) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_prerequisites row ${row.milestone_id}/${row.prerequisite_milestone_id} references unseeded prerequisite_milestone_id ${row.prerequisite_milestone_id}.`,
      );
    } else if (prerequisite.version_group_id !== row.version_group_id) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_prerequisites row ${row.milestone_id}/${row.prerequisite_milestone_id} has version_group_id ${row.version_group_id}, but prerequisite milestone ${row.prerequisite_milestone_id} belongs to ${prerequisite.version_group_id}.`,
      );
    }

    if (
      milestone &&
      prerequisite &&
      milestone.game_id !== null &&
      prerequisite.game_id !== null &&
      milestone.game_id !== prerequisite.game_id
    ) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_prerequisites row ${row.milestone_id}/${row.prerequisite_milestone_id} links game-specific milestones from different games.`,
      );
    }

    if (row.milestone_id === row.prerequisite_milestone_id) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_prerequisites row ${row.milestone_id}/${row.prerequisite_milestone_id} cannot reference itself.`,
      );
    }

    if (!milestonePrerequisiteKindsById.has(row.prerequisite_kind_id)) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_prerequisites row ${row.milestone_id}/${row.prerequisite_milestone_id} references unseeded prerequisite_kind_id ${row.prerequisite_kind_id}.`,
      );
    }
  }

  addCompositeDuplicateErrors(
    "tracking.mainline_milestone_pokemon_refs",
    pokemonRefs,
    "milestone_id/species_id/form_id/relation_kind",
    (row) =>
      `${row.milestone_id}/${row.species_id}/${row.form_id ?? "species"}/${row.relation_kind}`,
  );
  addCompositeDuplicateErrors(
    "tracking.mainline_milestone_pokemon_refs",
    pokemonRefs,
    "milestone_id/sort_order",
    (row) => `${row.milestone_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    "tracking.mainline_milestone_pokemon_refs",
    pokemonRefs,
    "milestone_id",
    (row) => row.milestone_id,
  );

  for (const { row, filePath } of pokemonRefs) {
    if (!milestonesById.has(row.milestone_id)) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_pokemon_refs row ${row.milestone_id}/${row.species_id}/${row.form_id ?? "species"} references unseeded milestone_id ${row.milestone_id}.`,
      );
    }
    if (!speciesById.has(row.species_id)) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_pokemon_refs row ${row.milestone_id}/${row.species_id}/${row.form_id ?? "species"} references unseeded species_id ${row.species_id}.`,
      );
    }
    if (
      row.form_id !== null &&
      !formKeys.has(`${row.species_id}/${row.form_id}`)
    ) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_pokemon_refs row ${row.milestone_id}/${row.species_id}/${row.form_id} references an unseeded or mismatched species_id/form_id pair.`,
      );
    }
  }

  addCompositeDuplicateErrors(
    "tracking.mainline_milestone_opponent_refs",
    opponentRefs,
    "milestone_id/opponent_id/version_group_id/relation_kind",
    (row) =>
      `${row.milestone_id}/${row.opponent_id}/${row.version_group_id}/${row.relation_kind}`,
  );
  addCompositeDuplicateErrors(
    "tracking.mainline_milestone_opponent_refs",
    opponentRefs,
    "milestone_id/sort_order",
    (row) => `${row.milestone_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    "tracking.mainline_milestone_opponent_refs",
    opponentRefs,
    "milestone_id",
    (row) => row.milestone_id,
  );

  for (const { row, filePath } of opponentRefs) {
    const milestone = milestonesById.get(row.milestone_id)?.row;
    const opponent = opponentsById.get(row.opponent_id)?.row;
    if (!milestone) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_opponent_refs row ${row.milestone_id}/${row.opponent_id} references unseeded milestone_id ${row.milestone_id}.`,
      );
    } else if (milestone.version_group_id !== row.version_group_id) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_opponent_refs row ${row.milestone_id}/${row.opponent_id} has version_group_id ${row.version_group_id}, but milestone ${row.milestone_id} belongs to ${milestone.version_group_id}.`,
      );
    }
    if (!opponent) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_opponent_refs row ${row.milestone_id}/${row.opponent_id} references unseeded opponent_id ${row.opponent_id}.`,
      );
    } else if (opponent.version_group_id !== row.version_group_id) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_opponent_refs row ${row.milestone_id}/${row.opponent_id} has version_group_id ${row.version_group_id}, but opponent ${row.opponent_id} belongs to ${opponent.version_group_id}.`,
      );
    }
  }

  addCompositeDuplicateErrors(
    "tracking.mainline_milestone_badge_refs",
    badgeRefs,
    "milestone_id/badge_id/version_group_id/relation_kind",
    (row) =>
      `${row.milestone_id}/${row.badge_id}/${row.version_group_id}/${row.relation_kind}`,
  );
  addCompositeDuplicateErrors(
    "tracking.mainline_milestone_badge_refs",
    badgeRefs,
    "milestone_id/sort_order",
    (row) => `${row.milestone_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    "tracking.mainline_milestone_badge_refs",
    badgeRefs,
    "milestone_id",
    (row) => row.milestone_id,
  );

  for (const { row, filePath } of badgeRefs) {
    const milestone = milestonesById.get(row.milestone_id)?.row;
    const badge = badgesById.get(row.badge_id)?.row;
    if (!milestone) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_badge_refs row ${row.milestone_id}/${row.badge_id} references unseeded milestone_id ${row.milestone_id}.`,
      );
    } else if (milestone.version_group_id !== row.version_group_id) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_badge_refs row ${row.milestone_id}/${row.badge_id} has version_group_id ${row.version_group_id}, but milestone ${row.milestone_id} belongs to ${milestone.version_group_id}.`,
      );
    }
    if (!badge) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_badge_refs row ${row.milestone_id}/${row.badge_id} references unseeded badge_id ${row.badge_id}.`,
      );
    } else if (badge.version_group_id !== row.version_group_id) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_badge_refs row ${row.milestone_id}/${row.badge_id} has version_group_id ${row.version_group_id}, but badge ${row.badge_id} belongs to ${badge.version_group_id}.`,
      );
    }
  }

  addCompositeDuplicateErrors(
    "tracking.mainline_milestone_collectible_refs",
    collectibleRefs,
    "milestone_id/collectible_id/collectible_entry_id/relation_kind",
    (row) =>
      `${row.milestone_id}/${row.collectible_id}/${row.collectible_entry_id ?? "group"}/${row.relation_kind}`,
  );
  addCompositeDuplicateErrors(
    "tracking.mainline_milestone_collectible_refs",
    collectibleRefs,
    "milestone_id/sort_order",
    (row) => `${row.milestone_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    "tracking.mainline_milestone_collectible_refs",
    collectibleRefs,
    "milestone_id",
    (row) => row.milestone_id,
  );

  for (const { row, filePath } of collectibleRefs) {
    const milestone = milestonesById.get(row.milestone_id)?.row;
    const collectible = collectiblesById.get(row.collectible_id)?.row;
    if (!milestone) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_collectible_refs row ${row.milestone_id}/${row.collectible_id}/${row.collectible_entry_id ?? "group"} references unseeded milestone_id ${row.milestone_id}.`,
      );
    } else if (milestone.version_group_id !== row.version_group_id) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_collectible_refs row ${row.milestone_id}/${row.collectible_id}/${row.collectible_entry_id ?? "group"} has version_group_id ${row.version_group_id}, but milestone ${row.milestone_id} belongs to ${milestone.version_group_id}.`,
      );
    }
    if (!collectible) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_collectible_refs row ${row.milestone_id}/${row.collectible_id}/${row.collectible_entry_id ?? "group"} references unseeded collectible_id ${row.collectible_id}.`,
      );
    } else if (collectible.version_group_id !== row.version_group_id) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_collectible_refs row ${row.milestone_id}/${row.collectible_id}/${row.collectible_entry_id ?? "group"} has version_group_id ${row.version_group_id}, but collectible ${row.collectible_id} belongs to ${collectible.version_group_id}.`,
      );
    }
    if (
      row.collectible_entry_id !== null &&
      !collectibleEntryKeys.has(
        `${row.collectible_id}/${row.collectible_entry_id}`,
      )
    ) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_collectible_refs row ${row.milestone_id}/${row.collectible_id}/${row.collectible_entry_id} references an unseeded or mismatched collectible_id/collectible_entry_id pair.`,
      );
    }
  }

  addCompositeDuplicateErrors(
    "tracking.mainline_milestone_decision_options",
    decisionOptions,
    "milestone_id/slug",
    (row) => `${row.milestone_id}/${row.slug}`,
  );
  addCompositeDuplicateErrors(
    "tracking.mainline_milestone_decision_options",
    decisionOptions,
    "milestone_id/sort_order",
    (row) => `${row.milestone_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    "tracking.mainline_milestone_decision_options",
    decisionOptions,
    "milestone_id",
    (row) => row.milestone_id,
  );

  for (const { row, filePath } of decisionOptions) {
    if (!milestonesById.has(row.milestone_id)) {
      errors.push(
        `${relative(filePath)}: tracking.mainline_milestone_decision_options row ${row.milestone_id}/${row.slug} references unseeded milestone_id ${row.milestone_id}.`,
      );
    }
  }
}

function collectVersionGroupClosureIds(
  versionGroupsById,
  dependencyRows,
  versionGroupId,
) {
  const dependenciesByVersionGroup = new Map();
  for (const { row } of dependencyRows) {
    if (!dependenciesByVersionGroup.has(row.version_group_id)) {
      dependenciesByVersionGroup.set(row.version_group_id, []);
    }
    dependenciesByVersionGroup
      .get(row.version_group_id)
      .push(row.required_version_group_id);
  }

  const visited = new Set();
  const visit = (currentVersionGroupId) => {
    if (
      currentVersionGroupId === null ||
      currentVersionGroupId === undefined ||
      visited.has(currentVersionGroupId)
    )
      return;
    visited.add(currentVersionGroupId);

    const versionGroup = versionGroupsById.get(currentVersionGroupId);
    if (!versionGroup) return;

    visit(versionGroup.parent_version_group_id);
    for (const requiredVersionGroupId of dependenciesByVersionGroup.get(
      currentVersionGroupId,
    ) ?? []) {
      visit(requiredVersionGroupId);
    }
  };

  visit(versionGroupId);
  return visited;
}

function assertVersionGroupRows(tableRows) {
  const rows = tableRows.get("reference.version_groups") ?? [];
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const versionGroupsById = mapRowsByColumn(rows, "id");

  addCompositeDuplicateErrors(
    "reference.version_groups",
    rows,
    "generation_id/sort_order",
    (row) => `${row.generation_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    "reference.version_groups",
    rows,
    "generation_id",
    (row) => row.generation_id,
  );

  for (const { row, filePath } of rows) {
    if (!generationIds.has(row.generation_id)) {
      errors.push(
        `${relative(filePath)}: reference.version_groups.generation_id ${row.generation_id} is not seeded.`,
      );
    }

    if (row.parent_version_group_id === null) continue;

    const parent = versionGroupsById.get(row.parent_version_group_id);
    if (!parent) {
      errors.push(
        `${relative(filePath)}: version group ${row.slug} references unseeded parent_version_group_id ${row.parent_version_group_id}.`,
      );
      continue;
    }

    if (parent.id === row.id) {
      errors.push(
        `${relative(filePath)}: version group ${row.slug} cannot parent itself.`,
      );
    }

    if (parent.generation_id !== row.generation_id) {
      errors.push(
        `${relative(filePath)}: version group ${row.slug} parent must be in generation ${row.generation_id}, got ${parent.generation_id}.`,
      );
    }
  }
}

function assertGameRows(tableRows) {
  const rows = tableRows.get("reference.games") ?? [];
  const productFamiliesById = mapRowsByColumn(
    tableRows.get("reference.product_families") ?? [],
    "id",
  );
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const regionIds = new Set(
    (tableRows.get("reference.regions") ?? []).map(({ row }) => row.id),
  );
  const gameTypeIds = new Set(
    (tableRows.get("reference.game_types") ?? []).map(({ row }) => row.id),
  );
  const versionGroupsById = mapRowsByColumn(
    tableRows.get("reference.version_groups") ?? [],
    "id",
  );

  addCompositeDuplicateErrors(
    "reference.games",
    rows,
    "version_group_id/sort_order",
    (row) => `${row.version_group_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    "reference.games",
    rows,
    "version_group_id",
    (row) => row.version_group_id,
  );

  for (const { row, filePath } of rows) {
    const productFamily = productFamiliesById.get(row.product_family_id);
    if (!productFamily) {
      errors.push(
        `${relative(filePath)}: game ${row.slug} references unseeded product_family_id ${row.product_family_id}.`,
      );
    } else if (productFamily.slug !== "mainline") {
      errors.push(
        `${relative(filePath)}: current seeded game ${row.slug} must belong to mainline product family, got ${productFamily.slug}.`,
      );
    }

    if (!generationIds.has(row.generation_id)) {
      errors.push(
        `${relative(filePath)}: reference.games.generation_id ${row.generation_id} is not seeded.`,
      );
    }

    if (!regionIds.has(row.region_id)) {
      errors.push(
        `${relative(filePath)}: game ${row.slug} references unseeded region_id ${row.region_id}.`,
      );
    }

    if (!gameTypeIds.has(row.game_type_id)) {
      errors.push(
        `${relative(filePath)}: game ${row.slug} references unseeded game_type_id ${row.game_type_id}.`,
      );
    }

    const versionGroup = versionGroupsById.get(row.version_group_id);
    if (!versionGroup) {
      errors.push(
        `${relative(filePath)}: game ${row.slug} references unseeded version_group_id ${row.version_group_id}.`,
      );
      continue;
    }

    if (versionGroup.generation_id !== row.generation_id) {
      errors.push(
        `${relative(filePath)}: game ${row.slug} generation_id ${row.generation_id} does not match version group ${versionGroup.slug} generation_id ${versionGroup.generation_id}.`,
      );
    }
  }
}

function assertGameContentScopeRows(tableRows) {
  const rows = tableRows.get("reference.game_content_scopes") ?? [];
  const games = tableRows.get("reference.games") ?? [];
  const gamesById = mapRowsByColumn(games, "id");
  const versionGroups = tableRows.get("reference.version_groups") ?? [];
  const versionGroupsById = mapRowsByColumn(versionGroups, "id");
  const scopesByGame = new Map();
  const scopeKeys = new Set();

  addCompositeDuplicateErrors(
    "reference.game_content_scopes",
    rows,
    "game_id/version_group_id",
    (row) => `${row.game_id}/${row.version_group_id}`,
  );
  addCompositeDuplicateErrors(
    "reference.game_content_scopes",
    rows,
    "game_id/sort_order",
    (row) => `${row.game_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    "reference.game_content_scopes",
    rows,
    "game_id",
    (row) => row.game_id,
  );

  for (const { row, filePath } of rows) {
    scopeKeys.add(`${row.game_id}/${row.version_group_id}`);

    if (!scopesByGame.has(row.game_id)) scopesByGame.set(row.game_id, []);
    scopesByGame.get(row.game_id).push(row);

    const game = gamesById.get(row.game_id);
    if (!game) {
      errors.push(
        `${relative(filePath)}: game content scope references unseeded game_id ${row.game_id}.`,
      );
      continue;
    }

    const versionGroup = versionGroupsById.get(row.version_group_id);
    if (!versionGroup) {
      errors.push(
        `${relative(filePath)}: game content scope for game_id ${row.game_id} references unseeded version_group_id ${row.version_group_id}.`,
      );
      continue;
    }

    if (
      row.is_base_scope === true &&
      row.version_group_id !== game.version_group_id
    ) {
      errors.push(
        `${relative(filePath)}: base content scope for game_id ${row.game_id} must use version_group_id ${game.version_group_id}, got ${row.version_group_id}.`,
      );
    }

    if (
      row.is_base_scope === false &&
      row.version_group_id === game.version_group_id
    ) {
      errors.push(
        `${relative(filePath)}: game_id ${row.game_id} base version_group_id ${row.version_group_id} must be marked as base.`,
      );
    }

    if (
      row.is_base_scope === false &&
      versionGroup.parent_version_group_id !== game.version_group_id
    ) {
      errors.push(
        `${relative(filePath)}: optional content scope ${versionGroup.slug} for game_id ${row.game_id} must be a child of base version_group_id ${game.version_group_id}.`,
      );
    }
  }

  for (const { row: game, filePath } of games) {
    const gameScopes = scopesByGame.get(game.id) ?? [];
    const baseScopes = gameScopes.filter(
      (scope) => scope.is_base_scope === true,
    );

    if (baseScopes.length !== 1) {
      errors.push(
        `${relative(filePath)}: game ${game.slug} must have exactly one base content scope, got ${baseScopes.length}.`,
      );
    }
  }

  const gamesByBaseVersionGroup = new Map();
  for (const { row: game } of games) {
    if (!gamesByBaseVersionGroup.has(game.version_group_id)) {
      gamesByBaseVersionGroup.set(game.version_group_id, []);
    }
    gamesByBaseVersionGroup.get(game.version_group_id).push(game);
  }

  for (const { row: versionGroup, filePath } of versionGroups) {
    if (versionGroup.parent_version_group_id === null) continue;

    const parentGames =
      gamesByBaseVersionGroup.get(versionGroup.parent_version_group_id) ?? [];
    for (const game of parentGames) {
      if (!scopeKeys.has(`${game.id}/${versionGroup.id}`)) {
        errors.push(
          `${relative(filePath)}: optional version group ${versionGroup.slug} must be mapped to game ${game.slug}.`,
        );
      }
    }
  }
}

function assertContentScopeDependencyRows(tableRows) {
  const rows = tableRows.get("reference.content_scope_dependencies") ?? [];
  const versionGroups = tableRows.get("reference.version_groups") ?? [];
  const versionGroupsById = mapRowsByColumn(versionGroups, "id");
  const dependencyKinds = new Set(["required"]);
  const dependenciesByVersionGroup = new Map();

  addCompositeDuplicateErrors(
    "reference.content_scope_dependencies",
    rows,
    "version_group_id/required_version_group_id",
    (row) => `${row.version_group_id}/${row.required_version_group_id}`,
  );
  addCompositeDuplicateErrors(
    "reference.content_scope_dependencies",
    rows,
    "version_group_id/sort_order",
    (row) => `${row.version_group_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    "reference.content_scope_dependencies",
    rows,
    "version_group_id",
    (row) => row.version_group_id,
  );

  for (const { row, filePath } of rows) {
    if (!dependencyKinds.has(row.dependency_kind)) {
      errors.push(
        `${relative(filePath)}: content scope dependency ${row.version_group_id}/${row.required_version_group_id} has unsupported dependency_kind ${row.dependency_kind}.`,
      );
    }

    const versionGroup = versionGroupsById.get(row.version_group_id);
    const requiredVersionGroup = versionGroupsById.get(
      row.required_version_group_id,
    );

    if (!versionGroup) {
      errors.push(
        `${relative(filePath)}: content scope dependency references unseeded version_group_id ${row.version_group_id}.`,
      );
      continue;
    }
    if (!requiredVersionGroup) {
      errors.push(
        `${relative(filePath)}: content scope dependency references unseeded required_version_group_id ${row.required_version_group_id}.`,
      );
      continue;
    }
    if (versionGroup.id === requiredVersionGroup.id) {
      errors.push(
        `${relative(filePath)}: content scope dependency ${versionGroup.slug} cannot require itself.`,
      );
    }
    if (versionGroup.generation_id !== requiredVersionGroup.generation_id) {
      errors.push(
        `${relative(filePath)}: content scope dependency ${versionGroup.slug} and ${requiredVersionGroup.slug} must be in the same generation.`,
      );
    }
    if (versionGroup.parent_version_group_id === null) {
      errors.push(
        `${relative(filePath)}: base version group ${versionGroup.slug} should not require optional content scopes.`,
      );
    }
    if (
      requiredVersionGroup.parent_version_group_id !==
      versionGroup.parent_version_group_id
    ) {
      errors.push(
        `${relative(filePath)}: content scope dependency ${versionGroup.slug} must require a sibling optional content scope with the same base parent.`,
      );
    }

    if (!dependenciesByVersionGroup.has(row.version_group_id)) {
      dependenciesByVersionGroup.set(row.version_group_id, []);
    }
    dependenciesByVersionGroup
      .get(row.version_group_id)
      .push(row.required_version_group_id);
  }

  const visiting = new Set();
  const visited = new Set();
  const visit = (versionGroupId, pathIds = []) => {
    if (visiting.has(versionGroupId)) {
      errors.push(
        `reference.content_scope_dependencies: dependency cycle detected: ${[...pathIds, versionGroupId].join(" -> ")}.`,
      );
      return;
    }
    if (visited.has(versionGroupId)) return;

    visiting.add(versionGroupId);
    for (const requiredVersionGroupId of dependenciesByVersionGroup.get(
      versionGroupId,
    ) ?? []) {
      visit(requiredVersionGroupId, [...pathIds, versionGroupId]);
    }
    visiting.delete(versionGroupId);
    visited.add(versionGroupId);
  };

  for (const versionGroupId of dependenciesByVersionGroup.keys()) {
    visit(versionGroupId);
  }
}

function assertGamePlatformRows(tableRows) {
  const rows = tableRows.get("reference.game_platforms") ?? [];
  const games = tableRows.get("reference.games") ?? [];
  const gamesById = mapRowsByColumn(games, "id");
  const platformRows = tableRows.get("reference.platforms") ?? [];
  const platformsById = mapRowsByColumn(platformRows, "id");
  const platformsBySlug = mapRowsByColumn(platformRows, "slug");
  const gamePlatformRows = new Map();

  addCompositeDuplicateErrors(
    "reference.game_platforms",
    rows,
    "game_id/platform_id",
    (row) => `${row.game_id}/${row.platform_id}`,
  );
  addCompositeDuplicateErrors(
    "reference.game_platforms",
    rows,
    "game_id/sort_order",
    (row) => `${row.game_id}/${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    "reference.game_platforms",
    rows,
    "game_id",
    (row) => row.game_id,
  );

  for (const { row, filePath } of rows) {
    if (!gamesById.has(row.game_id)) {
      errors.push(
        `${relative(filePath)}: game platform references unseeded game_id ${row.game_id}.`,
      );
    }

    if (!platformsById.has(row.platform_id)) {
      errors.push(
        `${relative(filePath)}: game platform for game_id ${row.game_id} references unseeded platform_id ${row.platform_id}.`,
      );
    }

    if (!allowedGamePlatformReleaseKinds.has(row.release_kind)) {
      errors.push(
        `${relative(filePath)}: game platform for game_id ${row.game_id} has invalid release_kind ${row.release_kind}.`,
      );
    }

    if (!gamePlatformRows.has(row.game_id))
      gamePlatformRows.set(row.game_id, []);
    gamePlatformRows.get(row.game_id).push(row);
  }

  for (const { row: game, filePath } of games) {
    const platformMappings = gamePlatformRows.get(game.id) ?? [];
    const nativeMappings = platformMappings.filter(
      (row) => row.release_kind === "native",
    );
    const expectedPlatformSlugs = expectedGamePlatformSlugs[game.slug];

    if (platformMappings.length === 0) {
      errors.push(
        `${relative(filePath)}: game ${game.slug} must have at least one platform mapping.`,
      );
    }

    if (nativeMappings.length !== 1) {
      errors.push(
        `${relative(filePath)}: game ${game.slug} must have exactly one native platform mapping, got ${nativeMappings.length}.`,
      );
    }

    if (!expectedPlatformSlugs) {
      errors.push(
        `${relative(filePath)}: game ${game.slug} has no exact platform expectation.`,
      );
      continue;
    }

    const actualPlatformSlugs = platformMappings
      .sort((a, b) => a.sort_order - b.sort_order)
      .map(
        (row) =>
          platformsById.get(row.platform_id)?.slug ??
          `unknown-platform-${row.platform_id}`,
      );

    if (actualPlatformSlugs.join("|") !== expectedPlatformSlugs.join("|")) {
      errors.push(
        `reference.game_platforms: game ${game.slug} expected platforms [${expectedPlatformSlugs.join(", ")}], got [${actualPlatformSlugs.join(", ")}].`,
      );
    }
  }

  for (const [gameSlug, platformSlugs] of Object.entries(
    expectedGamePlatformSlugs,
  )) {
    if (![...gamesById.values()].some((game) => game.slug === gameSlug)) {
      errors.push(
        `reference.game_platforms: platform expectation references unseeded game ${gameSlug}.`,
      );
    }

    for (const platformSlug of platformSlugs) {
      if (!platformsBySlug.has(platformSlug)) {
        errors.push(
          `reference.game_platforms: platform expectation for game ${gameSlug} references unseeded platform ${platformSlug}.`,
        );
      }
    }
  }
}

function assertPokedexRows(tableRows) {
  const rows = tableRows.get("reference.pokedex") ?? [];
  const versionGroupsById = mapRowsByColumn(
    tableRows.get("reference.version_groups") ?? [],
    "id",
  );
  const allowedKinds = new Set([
    "national",
    "regional",
    "local",
    "dlc",
    "special",
  ]);
  const expectedNationalPokedexDefinitionsById = new Map([
    [502, { versionGroupId: 5, maxSpeciesId: 386 }],
    [602, { versionGroupId: 6, maxSpeciesId: 386 }],
    [702, { versionGroupId: 7, maxSpeciesId: 386 }],
    [802, { versionGroupId: 8, maxSpeciesId: 493 }],
    [902, { versionGroupId: 9, maxSpeciesId: 493 }],
    [1002, { versionGroupId: 10, maxSpeciesId: 493 }],
    [1102, { versionGroupId: 11, maxSpeciesId: 649 }],
    [1202, { versionGroupId: 12, maxSpeciesId: 649 }],
    [1304, { versionGroupId: 13, maxSpeciesId: 721 }],
    [1402, { versionGroupId: 14, maxSpeciesId: 721 }],
    [2102, { versionGroupId: 21, maxSpeciesId: 493 }],
  ]);
  const expectedDefinitions = [
    {
      id: 101,
      versionGroupId: 1,
      slug: "kanto",
      name: "Kanto Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 201,
      versionGroupId: 2,
      slug: "kanto",
      name: "Kanto Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 301,
      versionGroupId: 3,
      slug: "new",
      name: "New Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 401,
      versionGroupId: 4,
      slug: "new",
      name: "New Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 501,
      versionGroupId: 5,
      slug: "hoenn",
      name: "Hoenn Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 502,
      versionGroupId: 5,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 601,
      versionGroupId: 6,
      slug: "kanto",
      name: "Kanto Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 602,
      versionGroupId: 6,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 701,
      versionGroupId: 7,
      slug: "hoenn",
      name: "Hoenn Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 702,
      versionGroupId: 7,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 801,
      versionGroupId: 8,
      slug: "sinnoh",
      name: "Sinnoh Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 802,
      versionGroupId: 8,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 901,
      versionGroupId: 9,
      slug: "enhanced-sinnoh",
      name: "Enhanced Sinnoh Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 902,
      versionGroupId: 9,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 1001,
      versionGroupId: 10,
      slug: "johto",
      name: "Johto Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1002,
      versionGroupId: 10,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 1101,
      versionGroupId: 11,
      slug: "unova",
      name: "Unova Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1102,
      versionGroupId: 11,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 1201,
      versionGroupId: 12,
      slug: "unova",
      name: "Unova Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1202,
      versionGroupId: 12,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 1301,
      versionGroupId: 13,
      slug: "central-kalos",
      name: "Central Kalos Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1302,
      versionGroupId: 13,
      slug: "coastal-kalos",
      name: "Coastal Kalos Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 1303,
      versionGroupId: 13,
      slug: "mountain-kalos",
      name: "Mountain Kalos Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: true,
      sortOrder: 3,
    },
    {
      id: 1304,
      versionGroupId: 13,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 4,
    },
    {
      id: 1401,
      versionGroupId: 14,
      slug: "hoenn",
      name: "Hoenn Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1402,
      versionGroupId: 14,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 1501,
      versionGroupId: 15,
      slug: "alola",
      name: "Alola Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1502,
      versionGroupId: 15,
      slug: "melemele",
      name: "Melemele Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 2,
    },
    {
      id: 1503,
      versionGroupId: 15,
      slug: "akala",
      name: "Akala Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 3,
    },
    {
      id: 1504,
      versionGroupId: 15,
      slug: "ulaula",
      name: "Ulaula Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 4,
    },
    {
      id: 1505,
      versionGroupId: 15,
      slug: "poni",
      name: "Poni Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 5,
    },
    {
      id: 1601,
      versionGroupId: 16,
      slug: "alola",
      name: "Alola Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1602,
      versionGroupId: 16,
      slug: "melemele",
      name: "Melemele Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 2,
    },
    {
      id: 1603,
      versionGroupId: 16,
      slug: "akala",
      name: "Akala Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 3,
    },
    {
      id: 1604,
      versionGroupId: 16,
      slug: "ulaula",
      name: "Ulaula Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 4,
    },
    {
      id: 1605,
      versionGroupId: 16,
      slug: "poni",
      name: "Poni Pokedex",
      pokedexKind: "local",
      isCompletionRelevant: false,
      sortOrder: 5,
    },
    {
      id: 1701,
      versionGroupId: 17,
      slug: "kanto",
      name: "Kanto Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1801,
      versionGroupId: 18,
      slug: "galar",
      name: "Galar Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 1901,
      versionGroupId: 19,
      slug: "isle-of-armor",
      name: "Isle of Armor Pokedex",
      pokedexKind: "dlc",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2001,
      versionGroupId: 20,
      slug: "crown-tundra",
      name: "Crown Tundra Pokedex",
      pokedexKind: "dlc",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2101,
      versionGroupId: 21,
      slug: "sinnoh",
      name: "Sinnoh Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2102,
      versionGroupId: 21,
      slug: "national",
      name: "National Pokedex",
      pokedexKind: "national",
      isCompletionRelevant: true,
      sortOrder: 2,
    },
    {
      id: 2201,
      versionGroupId: 22,
      slug: "hisui",
      name: "Hisui Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2301,
      versionGroupId: 23,
      slug: "paldea",
      name: "Paldea Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2401,
      versionGroupId: 24,
      slug: "kitakami",
      name: "Kitakami Pokedex",
      pokedexKind: "dlc",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2501,
      versionGroupId: 25,
      slug: "blueberry",
      name: "Blueberry Pokedex",
      pokedexKind: "dlc",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2601,
      versionGroupId: 26,
      slug: "lumiose",
      name: "Lumiose Pokedex",
      pokedexKind: "regional",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
    {
      id: 2701,
      versionGroupId: 27,
      slug: "hyperspace",
      name: "Hyperspace Pokedex",
      pokedexKind: "dlc",
      isCompletionRelevant: true,
      sortOrder: 1,
    },
  ];
  const expectedKeys = expectedDefinitions.map(
    ({ id, versionGroupId, slug }) =>
      String(id) + ":" + versionGroupId + ":" + slug,
  );
  const expectedDefinitionsById = new Map(
    expectedDefinitions.map((definition) => [definition.id, definition]),
  );

  const sortPokedexKeys = (keys) =>
    [...keys].sort((a, b) => {
      const [aId, aVersionGroup, aSlug] = a.split(":");
      const [bId, bVersionGroup, bSlug] = b.split(":");
      return (
        Number(aId) - Number(bId) ||
        Number(aVersionGroup) - Number(bVersionGroup) ||
        aSlug.localeCompare(bSlug)
      );
    });
  const actualKeys = sortPokedexKeys(
    rows.map(({ row }) => `${row.id}:${row.version_group_id}:${row.slug}`),
  );
  const sortedExpectedKeys = sortPokedexKeys(expectedKeys);

  if (actualKeys.join("|") !== sortedExpectedKeys.join("|")) {
    errors.push(
      `reference.pokedex: expected keys [${sortedExpectedKeys.join(", ")}], got [${actualKeys.join(", ")}].`,
    );
  }

  const actualNationalPokedexIds = new Set(
    rows
      .filter(
        ({ row }) => row.pokedex_kind === "national" || row.slug === "national",
      )
      .map(({ row }) => row.id),
  );
  const expectedNationalPokedexIds = new Set(
    expectedNationalPokedexDefinitionsById.keys(),
  );
  for (const pokedexId of actualNationalPokedexIds) {
    if (!expectedNationalPokedexIds.has(pokedexId)) {
      errors.push(
        `reference.pokedex: unexpected National Pokedex scope ${pokedexId}; National scopes should exist only for source-confirmed in-game National Mode/National Pokedex features.`,
      );
    }
  }
  for (const pokedexId of expectedNationalPokedexIds) {
    if (!actualNationalPokedexIds.has(pokedexId)) {
      errors.push(
        `reference.pokedex: missing source-confirmed National Pokedex scope ${pokedexId}.`,
      );
    }
  }

  for (const { row, filePath } of rows) {
    if (!versionGroupsById.has(row.version_group_id)) {
      errors.push(
        `${relative(filePath)}: reference.pokedex row ${row.id} references missing version_group_id ${row.version_group_id}.`,
      );
    }

    if (!allowedKinds.has(row.pokedex_kind)) {
      errors.push(
        `${relative(filePath)}: reference.pokedex row ${row.id} has invalid pokedex_kind ${row.pokedex_kind}.`,
      );
    }

    const expectedDefinition = expectedDefinitionsById.get(row.id);
    if (expectedDefinition) {
      if (row.version_group_id !== expectedDefinition.versionGroupId) {
        errors.push(
          relative(filePath) +
            ": reference.pokedex row " +
            row.id +
            " expected version_group_id " +
            expectedDefinition.versionGroupId +
            ", got " +
            row.version_group_id +
            ".",
        );
      }
      if (row.slug !== expectedDefinition.slug) {
        errors.push(
          relative(filePath) +
            ": reference.pokedex row " +
            row.id +
            " expected slug " +
            expectedDefinition.slug +
            ", got " +
            row.slug +
            ".",
        );
      }
      if (row.name !== expectedDefinition.name) {
        errors.push(
          relative(filePath) +
            ": reference.pokedex row " +
            row.id +
            " expected name " +
            expectedDefinition.name +
            ", got " +
            row.name +
            ".",
        );
      }
      if (row.pokedex_kind !== expectedDefinition.pokedexKind) {
        errors.push(
          relative(filePath) +
            ": reference.pokedex row " +
            row.id +
            " expected pokedex_kind " +
            expectedDefinition.pokedexKind +
            ", got " +
            row.pokedex_kind +
            ".",
        );
      }
      if (
        row.is_completion_relevant !== expectedDefinition.isCompletionRelevant
      ) {
        errors.push(
          relative(filePath) +
            ": reference.pokedex row " +
            row.id +
            " expected is_completion_relevant " +
            expectedDefinition.isCompletionRelevant +
            ", got " +
            row.is_completion_relevant +
            ".",
        );
      }
      if (row.sort_order !== expectedDefinition.sortOrder) {
        errors.push(
          relative(filePath) +
            ": reference.pokedex row " +
            row.id +
            " expected sort_order " +
            expectedDefinition.sortOrder +
            ", got " +
            row.sort_order +
            ".",
        );
      }
    }

    if (row.slug === "national" || row.pokedex_kind === "national") {
      const expectedNational = expectedNationalPokedexDefinitionsById.get(
        row.id,
      );
      if (!expectedNational) {
        errors.push(
          `${relative(filePath)}: reference.pokedex row ${row.id} is not a source-confirmed National Pokedex scope.`,
        );
      } else {
        if (row.version_group_id !== expectedNational.versionGroupId) {
          errors.push(
            `${relative(filePath)}: reference.pokedex National scope ${row.id} expected version_group_id ${expectedNational.versionGroupId}, got ${row.version_group_id}.`,
          );
        }
        if (row.slug !== "national") {
          errors.push(
            `${relative(filePath)}: reference.pokedex National scope ${row.id} must use slug national, got ${row.slug}.`,
          );
        }
        if (row.pokedex_kind !== "national") {
          errors.push(
            `${relative(filePath)}: reference.pokedex National scope ${row.id} must use pokedex_kind national, got ${row.pokedex_kind}.`,
          );
        }
        if (row.is_completion_relevant !== true) {
          errors.push(
            `${relative(filePath)}: reference.pokedex National scope ${row.id} should be completion relevant when optional Pokedex scopes are enabled.`,
          );
        }
      }
    }

    if (row.pokedex_kind === "dlc" && row.is_completion_relevant !== true) {
      errors.push(
        `${relative(filePath)}: reference.pokedex DLC scope ${row.slug} should be completion relevant by default.`,
      );
    }

    const isKalosLocal = [
      "central-kalos",
      "coastal-kalos",
      "mountain-kalos",
    ].includes(row.slug);
    if (
      row.pokedex_kind === "local" &&
      !isKalosLocal &&
      row.is_completion_relevant !== false
    ) {
      errors.push(
        `${relative(filePath)}: reference.pokedex local subset ${row.slug} should not be completion relevant while an overall regional dex exists.`,
      );
    }
  }

  addCompositeDuplicateErrors(
    "reference.pokedex",
    rows,
    "version_group_id + slug",
    (row) => `${row.version_group_id}:${row.slug}`,
  );
  addCompositeDuplicateErrors(
    "reference.pokedex",
    rows,
    "version_group_id + sort_order",
    (row) => `${row.version_group_id}:${row.sort_order}`,
  );
  assertScopedContiguousSortOrder(
    "reference.pokedex",
    rows,
    "version_group_id",
    (row) => row.version_group_id,
  );
}

const expectedNewPokedexSpeciesIds = [
  152, 153, 154, 155, 156, 157, 158, 159, 160, 16, 17, 18, 21, 22, 163, 164, 19,
  20, 161, 162, 172, 25, 26, 10, 11, 12, 13, 14, 15, 165, 166, 167, 168, 74, 75,
  76, 41, 42, 169, 173, 35, 36, 174, 39, 40, 175, 176, 27, 28, 23, 24, 206, 179,
  180, 181, 194, 195, 92, 93, 94, 201, 95, 208, 69, 70, 71, 187, 188, 189, 46,
  47, 60, 61, 62, 186, 129, 130, 118, 119, 79, 80, 199, 43, 44, 45, 182, 96, 97,
  63, 64, 65, 132, 204, 205, 29, 30, 31, 32, 33, 34, 193, 191, 192, 102, 103,
  185, 202, 48, 49, 123, 212, 127, 214, 109, 110, 88, 89, 81, 82, 100, 101, 190,
  209, 210, 37, 38, 58, 59, 234, 183, 184, 50, 51, 56, 57, 52, 53, 54, 55, 66,
  67, 68, 236, 106, 107, 237, 203, 128, 241, 240, 126, 238, 124, 239, 125, 122,
  235, 83, 177, 178, 211, 72, 73, 98, 99, 213, 120, 121, 90, 91, 222, 223, 224,
  170, 171, 86, 87, 108, 114, 133, 134, 135, 136, 196, 197, 116, 117, 230, 207,
  225, 220, 221, 216, 217, 231, 232, 226, 227, 84, 85, 77, 78, 104, 105, 115,
  111, 112, 198, 228, 229, 218, 219, 215, 200, 137, 233, 113, 242, 131, 138,
  139, 140, 141, 142, 143, 1, 2, 3, 4, 5, 6, 7, 8, 9, 144, 145, 146, 243, 244,
  245, 147, 148, 149, 246, 247, 248, 249, 250, 150, 151, 251,
];

const expectedJohtoPokedexSpeciesIds = [
  152, 153, 154, 155, 156, 157, 158, 159, 160, 16, 17, 18, 21, 22, 163, 164, 19,
  20, 161, 162, 172, 25, 26, 10, 11, 12, 13, 14, 15, 165, 166, 167, 168, 74, 75,
  76, 41, 42, 169, 173, 35, 36, 174, 39, 40, 175, 176, 27, 28, 23, 24, 206, 179,
  180, 181, 194, 195, 92, 93, 94, 201, 95, 208, 69, 70, 71, 187, 188, 189, 46,
  47, 60, 61, 62, 186, 129, 130, 118, 119, 79, 80, 199, 43, 44, 45, 182, 96, 97,
  63, 64, 65, 132, 204, 205, 29, 30, 31, 32, 33, 34, 193, 469, 191, 192, 102,
  103, 185, 202, 48, 49, 123, 212, 127, 214, 109, 110, 88, 89, 81, 82, 100, 101,
  190, 424, 209, 210, 37, 38, 58, 59, 234, 183, 184, 50, 51, 56, 57, 52, 53, 54,
  55, 66, 67, 68, 236, 106, 107, 237, 203, 128, 241, 240, 126, 238, 124, 239,
  125, 122, 235, 83, 177, 178, 211, 72, 73, 98, 99, 213, 120, 121, 90, 91, 222,
  223, 224, 170, 171, 86, 87, 108, 463, 114, 465, 133, 134, 135, 136, 196, 197,
  116, 117, 230, 207, 225, 220, 221, 473, 216, 217, 231, 232, 226, 227, 84, 85,
  77, 78, 104, 105, 115, 111, 112, 198, 228, 229, 218, 219, 215, 200, 137, 233,
  113, 242, 131, 138, 139, 140, 141, 142, 143, 1, 2, 3, 4, 5, 6, 7, 8, 9, 144,
  145, 146, 243, 244, 245, 147, 148, 149, 246, 247, 248, 249, 250, 150, 151,
  251,
];

const expectedHoennPokedexSpeciesIds = [
  252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266,
  267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281,
  282, 283, 284, 285, 286, 287, 288, 289, 63, 64, 65, 290, 291, 292, 293, 294,
  295, 296, 297, 118, 119, 129, 130, 298, 183, 184, 74, 75, 76, 299, 300, 301,
  41, 42, 169, 72, 73, 302, 303, 304, 305, 306, 66, 67, 68, 307, 308, 309, 310,
  311, 312, 81, 82, 100, 101, 313, 314, 43, 44, 45, 182, 84, 85, 315, 316, 317,
  318, 319, 320, 321, 322, 323, 218, 219, 324, 88, 89, 109, 110, 325, 326, 27,
  28, 327, 227, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340,
  341, 342, 343, 344, 345, 346, 347, 348, 174, 39, 40, 349, 350, 351, 120, 121,
  352, 353, 354, 355, 356, 357, 358, 359, 37, 38, 172, 25, 26, 54, 55, 360, 202,
  177, 178, 203, 231, 232, 127, 214, 111, 112, 361, 362, 363, 364, 365, 366,
  367, 368, 369, 222, 170, 171, 370, 116, 117, 230, 371, 372, 373, 374, 375,
  376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386,
];

const expectedUpdatedHoennPokedexSpeciesIds = [
  252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266,
  267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281,
  282, 475, 283, 284, 285, 286, 287, 288, 289, 63, 64, 65, 290, 291, 292, 293,
  294, 295, 296, 297, 118, 119, 129, 130, 298, 183, 184, 74, 75, 76, 299, 476,
  300, 301, 41, 42, 169, 72, 73, 302, 303, 304, 305, 306, 66, 67, 68, 307, 308,
  309, 310, 311, 312, 81, 82, 462, 100, 101, 313, 314, 43, 44, 45, 182, 84, 85,
  406, 315, 407, 316, 317, 318, 319, 320, 321, 322, 323, 218, 219, 324, 88, 89,
  109, 110, 325, 326, 27, 28, 327, 227, 328, 329, 330, 331, 332, 333, 334, 335,
  336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 174, 39, 40,
  349, 350, 351, 120, 121, 352, 353, 354, 355, 356, 477, 357, 433, 358, 359, 37,
  38, 172, 25, 26, 54, 55, 360, 202, 177, 178, 203, 231, 232, 127, 214, 111,
  112, 464, 361, 362, 478, 363, 364, 365, 366, 367, 368, 369, 222, 170, 171,
  370, 116, 117, 230, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381,
  382, 383, 384, 385, 386,
];

const expectedSinnohPokedexSpeciesIds = [
  387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401,
  402, 403, 404, 405, 63, 64, 65, 129, 130, 406, 315, 407, 41, 42, 169, 74, 75,
  76, 95, 208, 408, 409, 410, 411, 66, 67, 68, 54, 55, 412, 413, 414, 265, 266,
  267, 268, 269, 415, 416, 417, 418, 419, 420, 421, 422, 423, 214, 190, 424,
  425, 426, 427, 428, 92, 93, 94, 200, 429, 198, 430, 431, 432, 118, 119, 339,
  340, 433, 358, 434, 435, 307, 308, 436, 437, 77, 78, 438, 185, 439, 122, 440,
  113, 242, 173, 35, 36, 441, 172, 25, 26, 163, 164, 442, 443, 444, 445, 446,
  143, 201, 447, 448, 194, 195, 278, 279, 203, 449, 450, 298, 183, 184, 451,
  452, 453, 454, 455, 223, 224, 456, 457, 72, 73, 349, 350, 458, 226, 459, 460,
  215, 461, 480, 481, 482, 483, 484, 490,
];

const expectedExpandedSinnohPokedexSpeciesIds = [
  387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401,
  402, 403, 404, 405, 63, 64, 65, 129, 130, 406, 315, 407, 41, 42, 169, 74, 75,
  76, 95, 208, 408, 409, 410, 411, 66, 67, 68, 54, 55, 412, 413, 414, 265, 266,
  267, 268, 269, 415, 416, 417, 418, 419, 420, 421, 422, 423, 214, 190, 424,
  425, 426, 427, 428, 92, 93, 94, 200, 429, 198, 430, 431, 432, 118, 119, 339,
  340, 433, 358, 434, 435, 307, 308, 436, 437, 77, 78, 438, 185, 439, 122, 440,
  113, 242, 173, 35, 36, 441, 172, 25, 26, 163, 164, 442, 443, 444, 445, 446,
  143, 201, 447, 448, 194, 195, 278, 279, 203, 449, 450, 298, 183, 184, 451,
  452, 453, 454, 455, 223, 224, 456, 457, 72, 73, 349, 350, 458, 226, 459, 460,
  215, 461, 480, 481, 482, 483, 484, 490, 479, 207, 472, 299, 476, 280, 281,
  282, 475, 108, 463, 133, 134, 135, 136, 196, 197, 470, 471, 333, 334, 175,
  176, 468, 228, 229, 81, 82, 462, 114, 465, 193, 469, 357, 111, 112, 464, 355,
  356, 477, 137, 233, 474, 123, 212, 239, 125, 466, 240, 126, 467, 220, 221,
  473, 361, 362, 478, 359, 487,
];

const expectedUnovaPokedexSpeciesIds = [
  494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508,
  509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523,
  524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538,
  539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553,
  554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568,
  569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583,
  584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598,
  599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613,
  614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628,
  629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643,
  644, 645, 646, 647, 648, 649,
];

const expectedNewUnovaPokedexSpeciesIds = [
  494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 509, 510, 519,
  520, 521, 540, 541, 542, 191, 192, 506, 507, 508, 179, 180, 181, 54, 55, 298,
  183, 184, 447, 448, 206, 531, 511, 512, 513, 514, 515, 516, 543, 544, 545,
  109, 110, 81, 82, 462, 58, 59, 240, 126, 467, 239, 125, 466, 19, 20, 41, 42,
  169, 88, 89, 527, 528, 524, 525, 526, 95, 208, 532, 533, 534, 529, 530, 300,
  301, 427, 428, 546, 547, 548, 549, 517, 518, 173, 35, 36, 133, 134, 135, 136,
  196, 197, 470, 471, 551, 552, 553, 554, 555, 550, 568, 569, 572, 573, 627,
  628, 629, 630, 27, 28, 557, 558, 559, 560, 556, 561, 328, 329, 330, 562, 563,
  564, 565, 566, 567, 599, 600, 601, 406, 315, 407, 574, 575, 576, 577, 578,
  579, 415, 416, 587, 214, 127, 522, 523, 418, 419, 570, 571, 580, 581, 588,
  589, 616, 617, 585, 586, 590, 591, 351, 299, 476, 304, 305, 306, 343, 344,
  636, 637, 595, 596, 597, 598, 602, 603, 604, 592, 593, 594, 610, 611, 612,
  335, 336, 605, 606, 607, 608, 609, 631, 632, 613, 614, 615, 641, 642, 645,
  451, 452, 227, 322, 323, 325, 326, 425, 426, 353, 354, 278, 279, 337, 338,
  359, 114, 465, 619, 620, 207, 472, 624, 625, 638, 639, 640, 535, 536, 537,
  618, 213, 458, 226, 223, 224, 222, 120, 121, 320, 321, 131, 363, 364, 365,
  333, 334, 37, 38, 436, 437, 215, 461, 225, 582, 583, 584, 220, 221, 473, 132,
  374, 375, 376, 86, 87, 538, 539, 626, 621, 622, 623, 633, 634, 635, 287, 288,
  289, 341, 342, 174, 39, 40, 108, 463, 193, 469, 357, 455, 453, 454, 246, 247,
  248, 643, 644, 646, 647, 648, 649,
];

const expectedCentralKalosPokedexSpeciesIds = [
  650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 263, 264, 661, 662,
  663, 16, 17, 18, 664, 665, 666, 10, 11, 12, 13, 14, 15, 511, 512, 513, 514,
  515, 516, 172, 25, 26, 399, 400, 206, 298, 183, 184, 412, 413, 414, 283, 284,
  129, 130, 341, 342, 118, 119, 318, 319, 667, 668, 54, 55, 83, 447, 448, 280,
  281, 282, 475, 669, 670, 671, 406, 315, 407, 165, 166, 415, 416, 300, 301, 1,
  2, 3, 4, 5, 6, 7, 8, 9, 672, 673, 674, 675, 676, 84, 85, 311, 312, 316, 317,
  559, 560, 63, 64, 65, 43, 44, 45, 182, 161, 162, 290, 291, 292, 677, 678, 352,
  679, 680, 681, 543, 544, 545, 531, 235, 453, 454, 580, 581, 682, 683, 684,
  685, 313, 314, 187, 188, 189, 446, 143, 293, 294, 295, 307, 308, 41, 42, 169,
  610, 611, 612, 719, 720, 721,
];

const expectedCoastalKalosPokedexSpeciesIds = [
  425, 426, 619, 620, 335, 336, 325, 326, 359, 686, 687, 337, 338, 371, 372,
  373, 278, 279, 276, 277, 688, 689, 557, 558, 72, 73, 320, 321, 370, 690, 691,
  692, 693, 120, 121, 90, 91, 211, 116, 117, 230, 369, 551, 552, 553, 694, 695,
  449, 450, 111, 112, 464, 95, 208, 527, 528, 66, 67, 68, 104, 105, 115, 303,
  696, 697, 698, 699, 142, 597, 598, 209, 210, 309, 310, 228, 229, 133, 134,
  135, 136, 196, 197, 470, 471, 700, 587, 193, 469, 701, 561, 622, 623, 299,
  476, 296, 297, 538, 539, 396, 397, 398, 434, 435, 29, 30, 31, 32, 33, 34, 702,
  433, 358, 439, 122, 577, 578, 579, 360, 202, 524, 525, 526, 302, 703, 128,
  241, 179, 180, 181, 127, 214, 417, 79, 80, 199, 102, 103, 441, 458, 226, 366,
  367, 368, 223, 224, 222, 170, 171, 594, 131, 144, 145, 146,
];

const expectedMountainKalosPokedexSpeciesIds = [
  50, 51, 328, 329, 330, 443, 444, 445, 74, 75, 76, 218, 219, 213, 451, 452,
  194, 195, 704, 705, 706, 588, 589, 616, 617, 69, 70, 71, 455, 92, 93, 94, 60,
  61, 62, 186, 23, 24, 618, 339, 340, 509, 510, 261, 262, 504, 505, 624, 625,
  707, 198, 430, 590, 591, 270, 271, 272, 418, 419, 550, 708, 709, 710, 711,
  607, 608, 609, 479, 81, 82, 462, 100, 101, 568, 569, 220, 221, 473, 712, 713,
  613, 614, 238, 124, 582, 583, 584, 459, 460, 225, 215, 461, 532, 533, 534,
  324, 27, 28, 304, 305, 306, 246, 247, 248, 631, 632, 167, 168, 21, 22, 615,
  227, 714, 715, 207, 472, 163, 164, 174, 39, 40, 353, 354, 570, 571, 574, 575,
  576, 438, 185, 327, 216, 217, 108, 463, 123, 212, 132, 333, 334, 621, 633,
  634, 635, 147, 148, 149, 716, 717, 718, 150,
];

const expectedSmAlolaPokedexSpeciesIds = [
  722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 19, 20,
  10, 11, 12, 165, 166, 167, 168, 172, 25, 26, 736, 737, 738, 438, 185, 440,
  113, 242, 446, 143, 79, 80, 199, 278, 279, 63, 64, 65, 52, 53, 81, 82, 462,
  88, 89, 58, 59, 96, 97, 296, 297, 235, 739, 740, 92, 93, 94, 425, 426, 200,
  429, 41, 42, 169, 50, 51, 21, 22, 627, 628, 629, 630, 56, 57, 225, 741, 742,
  743, 548, 549, 546, 547, 54, 55, 129, 130, 339, 340, 66, 67, 68, 524, 525,
  526, 703, 302, 744, 745, 327, 72, 73, 456, 457, 746, 370, 222, 747, 748, 90,
  91, 371, 372, 373, 506, 507, 508, 133, 134, 135, 136, 196, 197, 470, 471, 700,
  749, 750, 174, 39, 40, 128, 241, 283, 284, 751, 752, 753, 754, 755, 756, 46,
  47, 60, 61, 62, 186, 118, 119, 349, 350, 594, 661, 662, 663, 757, 758, 104,
  105, 115, 240, 126, 467, 759, 760, 761, 762, 763, 764, 127, 765, 766, 704,
  705, 706, 351, 767, 768, 120, 121, 769, 770, 408, 409, 410, 411, 566, 567,
  564, 565, 708, 709, 299, 476, 771, 170, 171, 772, 773, 718, 568, 569, 227,
  132, 173, 35, 36, 774, 374, 375, 376, 137, 233, 474, 674, 675, 775, 324, 776,
  777, 239, 125, 466, 74, 75, 76, 551, 552, 553, 328, 329, 330, 443, 444, 445,
  707, 778, 779, 780, 359, 361, 362, 478, 215, 461, 27, 28, 37, 38, 582, 583,
  584, 209, 210, 422, 423, 369, 781, 318, 319, 320, 321, 131, 102, 103, 782,
  783, 784, 587, 123, 212, 198, 430, 447, 448, 147, 148, 149, 142, 785, 786,
  787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801,
  802,
];

const expectedSmMelemelePokedexSpeciesIds = [
  722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 19, 20,
  10, 11, 12, 165, 166, 167, 168, 172, 25, 26, 736, 737, 738, 438, 185, 440,
  113, 242, 446, 143, 79, 80, 199, 278, 279, 63, 64, 65, 52, 53, 81, 82, 462,
  88, 89, 58, 59, 96, 97, 296, 297, 235, 739, 740, 92, 93, 94, 425, 426, 200,
  429, 41, 42, 169, 50, 51, 21, 22, 627, 628, 629, 630, 56, 57, 225, 741, 742,
  743, 548, 549, 546, 547, 54, 55, 129, 130, 339, 340, 66, 67, 68, 524, 525,
  526, 703, 302, 744, 745, 327, 72, 73, 456, 457, 746, 370, 222, 747, 748, 90,
  91, 371, 372, 373, 785,
];

const expectedSmAkalaPokedexSpeciesIds = [
  731, 732, 733, 734, 735, 19, 20, 10, 11, 12, 736, 737, 738, 438, 185, 440,
  113, 242, 278, 279, 739, 740, 92, 93, 94, 41, 42, 169, 50, 51, 741, 54, 55,
  129, 130, 339, 340, 72, 73, 456, 457, 746, 370, 222, 747, 748, 506, 507, 508,
  133, 134, 135, 136, 196, 197, 470, 471, 700, 749, 750, 174, 39, 40, 128, 241,
  283, 284, 751, 752, 753, 754, 755, 756, 46, 47, 60, 61, 62, 186, 118, 119,
  349, 350, 594, 661, 662, 663, 757, 758, 104, 105, 115, 240, 126, 467, 759,
  760, 761, 762, 763, 764, 127, 765, 766, 704, 705, 706, 351, 767, 768, 120,
  121, 769, 770, 408, 409, 410, 411, 566, 567, 564, 565, 708, 709, 299, 476,
  771, 170, 171, 786,
];

const expectedSmUlaulaPokedexSpeciesIds = [
  731, 732, 733, 734, 735, 19, 20, 165, 166, 167, 168, 736, 737, 738, 440, 113,
  242, 79, 80, 199, 278, 279, 52, 53, 81, 82, 462, 88, 89, 739, 740, 92, 93, 94,
  41, 42, 169, 50, 51, 21, 22, 741, 742, 743, 548, 549, 546, 547, 54, 55, 129,
  130, 72, 73, 456, 457, 746, 749, 750, 283, 284, 751, 752, 755, 756, 46, 47,
  60, 61, 62, 186, 118, 119, 704, 705, 706, 351, 568, 569, 227, 132, 173, 35,
  36, 774, 374, 375, 376, 137, 233, 474, 674, 675, 775, 324, 776, 777, 239, 125,
  466, 74, 75, 76, 551, 552, 553, 328, 329, 330, 443, 444, 445, 707, 778, 779,
  780, 359, 361, 362, 478, 215, 461, 27, 28, 37, 38, 582, 583, 584, 787,
];

const expectedSmPoniPokedexSpeciesIds = [
  731, 732, 733, 734, 735, 19, 20, 440, 113, 242, 278, 279, 96, 97, 296, 297,
  739, 740, 41, 42, 169, 50, 51, 21, 22, 627, 628, 629, 630, 56, 57, 741, 742,
  743, 548, 549, 546, 547, 54, 55, 129, 130, 339, 340, 66, 67, 68, 524, 525,
  526, 703, 302, 744, 745, 72, 73, 456, 457, 749, 750, 128, 241, 759, 760, 127,
  704, 705, 706, 351, 767, 768, 227, 209, 210, 422, 423, 369, 781, 318, 319,
  320, 321, 131, 102, 103, 782, 783, 784, 587, 123, 212, 198, 430, 447, 448,
  147, 148, 149, 142, 788,
];

const expectedUsumAlolaPokedexSpeciesIds = [
  722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 19, 20,
  10, 11, 12, 165, 166, 167, 168, 427, 428, 686, 687, 570, 571, 676, 172, 25,
  26, 736, 737, 738, 438, 185, 440, 113, 242, 446, 143, 79, 80, 199, 278, 279,
  63, 64, 65, 52, 53, 81, 82, 462, 88, 89, 439, 122, 23, 24, 206, 58, 59, 96,
  97, 296, 297, 235, 739, 740, 92, 93, 94, 425, 426, 198, 430, 41, 42, 169, 714,
  715, 50, 51, 21, 22, 627, 628, 629, 630, 56, 57, 225, 701, 741, 742, 743, 669,
  670, 671, 548, 549, 546, 547, 54, 55, 238, 124, 129, 130, 339, 340, 86, 87,
  66, 67, 68, 524, 525, 526, 703, 302, 303, 744, 745, 327, 72, 73, 456, 457,
  746, 370, 222, 747, 748, 90, 91, 366, 367, 368, 223, 224, 458, 226, 371, 372,
  373, 506, 507, 508, 133, 134, 135, 136, 196, 197, 470, 471, 700, 179, 180,
  181, 749, 750, 174, 39, 40, 128, 241, 283, 284, 751, 752, 753, 754, 755, 756,
  46, 47, 60, 61, 62, 186, 118, 119, 550, 349, 350, 594, 661, 662, 663, 757,
  758, 104, 105, 115, 240, 126, 467, 636, 637, 759, 760, 761, 762, 763, 764,
  127, 163, 164, 352, 765, 766, 704, 705, 706, 351, 767, 768, 120, 121, 769,
  770, 138, 139, 140, 141, 345, 346, 347, 348, 408, 409, 410, 411, 566, 567,
  564, 565, 696, 697, 698, 699, 246, 247, 248, 708, 709, 177, 178, 299, 476,
  771, 170, 171, 772, 773, 803, 804, 718, 568, 569, 572, 573, 204, 205, 227,
  132, 173, 35, 36, 605, 606, 774, 374, 375, 376, 137, 233, 474, 674, 675, 775,
  324, 776, 228, 229, 702, 777, 309, 310, 239, 125, 466, 74, 75, 76, 551, 552,
  553, 328, 329, 330, 443, 444, 445, 343, 344, 622, 623, 707, 778, 353, 354,
  592, 593, 779, 780, 359, 361, 362, 478, 215, 461, 27, 28, 37, 38, 582, 583,
  584, 559, 560, 624, 625, 209, 210, 422, 423, 369, 781, 318, 319, 690, 691,
  692, 693, 320, 321, 131, 357, 102, 103, 341, 342, 619, 620, 782, 783, 784,
  587, 123, 212, 214, 190, 424, 667, 668, 200, 429, 621, 108, 463, 447, 448,
  147, 148, 149, 142, 785, 786, 787, 788, 789, 790, 791, 792, 793, 805, 806,
  794, 795, 796, 797, 798, 799, 800, 801, 802, 807,
];

const expectedUsumMelemelePokedexSpeciesIds = [
  722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 19, 20,
  10, 11, 12, 165, 166, 167, 168, 427, 428, 686, 687, 570, 571, 676, 172, 25,
  26, 736, 737, 738, 438, 185, 440, 113, 242, 446, 143, 79, 80, 199, 278, 279,
  63, 64, 65, 52, 53, 81, 82, 462, 88, 89, 439, 122, 23, 24, 206, 58, 59, 96,
  97, 296, 297, 235, 739, 740, 92, 93, 94, 425, 426, 198, 430, 41, 42, 169, 714,
  715, 50, 51, 21, 22, 627, 628, 629, 630, 56, 57, 225, 701, 741, 742, 743, 669,
  670, 671, 548, 549, 546, 547, 54, 55, 238, 124, 129, 130, 339, 340, 86, 87,
  66, 67, 68, 524, 525, 526, 703, 302, 303, 744, 745, 327, 72, 73, 456, 457,
  746, 370, 222, 747, 748, 90, 91, 366, 367, 368, 223, 224, 458, 226, 371, 372,
  373, 785,
];

const expectedUsumAkalaPokedexSpeciesIds = [
  731, 732, 733, 734, 735, 19, 20, 10, 11, 12, 736, 737, 738, 438, 185, 440,
  113, 242, 278, 279, 739, 740, 92, 93, 94, 41, 42, 169, 50, 51, 741, 54, 55,
  129, 130, 339, 340, 72, 73, 456, 457, 746, 370, 222, 747, 748, 223, 224, 458,
  226, 506, 507, 508, 133, 134, 135, 136, 196, 197, 470, 471, 700, 179, 180,
  181, 749, 750, 174, 39, 40, 128, 241, 283, 284, 751, 752, 753, 754, 755, 756,
  46, 47, 60, 61, 62, 186, 118, 119, 550, 349, 350, 594, 661, 662, 663, 757,
  758, 104, 105, 115, 240, 126, 467, 636, 637, 759, 760, 761, 762, 763, 764,
  127, 163, 164, 352, 765, 766, 704, 705, 706, 351, 767, 768, 120, 121, 769,
  770, 138, 139, 140, 141, 345, 346, 347, 348, 408, 409, 410, 411, 566, 567,
  564, 565, 696, 697, 698, 699, 246, 247, 248, 708, 709, 177, 178, 299, 476,
  771, 170, 171, 786,
];

const expectedUsumUlaulaPokedexSpeciesIds = [
  731, 732, 733, 734, 735, 19, 20, 165, 166, 167, 168, 736, 737, 738, 440, 113,
  242, 79, 80, 199, 278, 279, 52, 53, 81, 82, 462, 88, 89, 739, 740, 92, 93, 94,
  41, 42, 169, 50, 51, 21, 22, 741, 742, 743, 669, 670, 671, 548, 549, 546, 547,
  54, 55, 129, 130, 72, 73, 456, 457, 746, 366, 367, 368, 749, 750, 283, 284,
  751, 752, 755, 756, 46, 47, 60, 61, 62, 186, 118, 119, 550, 704, 705, 706,
  351, 568, 569, 572, 573, 204, 205, 227, 132, 173, 35, 36, 605, 606, 774, 374,
  375, 376, 137, 233, 474, 674, 675, 775, 324, 776, 228, 229, 702, 777, 309,
  310, 239, 125, 466, 74, 75, 76, 551, 552, 553, 328, 329, 330, 443, 444, 445,
  343, 344, 622, 623, 707, 778, 353, 354, 592, 593, 779, 780, 359, 361, 362,
  478, 215, 461, 27, 28, 37, 38, 582, 583, 584, 559, 560, 624, 625, 787,
];

const expectedUsumPoniPokedexSpeciesIds = [
  731, 732, 733, 734, 735, 19, 20, 427, 428, 686, 687, 570, 571, 676, 440, 113,
  242, 278, 279, 96, 97, 296, 297, 739, 740, 41, 42, 169, 714, 715, 50, 51, 21,
  22, 627, 628, 629, 630, 56, 57, 741, 742, 743, 669, 670, 671, 548, 549, 546,
  547, 54, 55, 129, 130, 339, 340, 66, 67, 68, 524, 525, 526, 703, 302, 744,
  745, 72, 73, 456, 457, 749, 750, 128, 241, 550, 759, 760, 127, 704, 705, 706,
  351, 767, 768, 227, 209, 210, 422, 423, 369, 781, 318, 319, 690, 691, 692,
  693, 320, 321, 131, 357, 102, 103, 341, 342, 619, 620, 782, 783, 784, 587,
  123, 212, 214, 190, 424, 667, 668, 200, 429, 621, 108, 463, 447, 448, 147,
  148, 149, 142, 788,
];

const expectedGalarPokedexSpeciesIds = [
  810, 811, 812, 813, 814, 815, 816, 817, 818, 824, 825, 826, 10, 11, 12, 736,
  737, 738, 163, 164, 821, 822, 823, 819, 820, 519, 520, 521, 827, 828, 263,
  264, 862, 831, 832, 270, 271, 272, 273, 274, 275, 833, 834, 509, 510, 835,
  836, 659, 660, 572, 573, 761, 762, 763, 43, 44, 45, 182, 406, 315, 407, 278,
  279, 595, 596, 309, 310, 37, 38, 58, 59, 582, 583, 584, 220, 221, 473, 225,
  361, 362, 478, 343, 344, 749, 750, 557, 558, 622, 623, 517, 518, 177, 178,
  759, 760, 459, 460, 98, 99, 194, 195, 341, 342, 290, 291, 292, 236, 106, 107,
  237, 674, 675, 599, 600, 601, 415, 416, 436, 437, 280, 281, 282, 475, 425,
  426, 829, 830, 420, 421, 434, 435, 535, 536, 537, 355, 356, 477, 66, 67, 68,
  92, 93, 94, 129, 130, 118, 119, 223, 224, 90, 91, 349, 350, 550, 746, 771,
  568, 569, 850, 851, 837, 838, 839, 50, 51, 529, 530, 524, 525, 526, 532, 533,
  534, 527, 528, 714, 715, 95, 208, 846, 847, 52, 863, 53, 868, 869, 742, 743,
  597, 598, 710, 711, 172, 25, 26, 133, 134, 135, 136, 196, 197, 470, 471, 700,
  840, 841, 842, 677, 678, 684, 685, 682, 683, 751, 752, 360, 202, 83, 865, 170,
  171, 453, 454, 559, 560, 618, 213, 339, 340, 422, 423, 767, 768, 688, 689,
  222, 864, 859, 860, 861, 856, 857, 858, 757, 758, 624, 625, 538, 539, 109,
  110, 438, 185, 173, 35, 36, 175, 176, 468, 446, 143, 546, 547, 111, 112, 464,
  574, 575, 576, 577, 578, 579, 588, 589, 616, 617, 605, 606, 613, 614, 627,
  628, 629, 630, 451, 452, 607, 608, 609, 686, 687, 215, 461, 302, 303, 556,
  561, 447, 448, 324, 778, 878, 879, 211, 592, 593, 747, 748, 845, 848, 849,
  843, 844, 449, 450, 632, 631, 694, 695, 701, 328, 329, 330, 610, 611, 612,
  562, 867, 563, 679, 680, 681, 77, 78, 854, 855, 876, 708, 709, 755, 756, 765,
  766, 877, 870, 780, 776, 777, 872, 873, 852, 853, 871, 458, 226, 320, 321,
  712, 713, 781, 131, 337, 338, 439, 122, 866, 554, 555, 874, 875, 884, 479,
  132, 880, 881, 882, 883, 4, 5, 6, 772, 773, 246, 247, 248, 633, 634, 635, 704,
  705, 706, 782, 783, 784, 885, 886, 887, 888, 889, 890,
];

const expectedIsleOfArmorPokedexSpeciesIds = [
  79, 80, 199, 427, 428, 440, 113, 242, 819, 820, 174, 39, 40, 824, 825, 826,
  753, 754, 840, 841, 842, 661, 662, 663, 403, 404, 405, 707, 624, 625, 63, 64,
  65, 280, 281, 282, 475, 98, 99, 72, 73, 129, 130, 223, 224, 458, 226, 278,
  279, 451, 452, 206, 626, 108, 463, 833, 834, 194, 195, 704, 705, 706, 621,
  616, 617, 588, 589, 1, 2, 3, 7, 8, 9, 543, 544, 545, 590, 591, 764, 114, 465,
  453, 454, 172, 25, 26, 570, 571, 765, 766, 341, 342, 845, 118, 119, 846, 847,
  120, 121, 891, 892, 587, 702, 877, 81, 82, 462, 686, 687, 746, 318, 319, 506,
  507, 508, 128, 241, 123, 212, 127, 214, 557, 558, 767, 768, 871, 747, 748,
  852, 853, 90, 91, 769, 770, 425, 426, 339, 340, 298, 183, 184, 60, 61, 62,
  186, 54, 55, 293, 294, 295, 527, 528, 227, 524, 525, 526, 744, 745, 757, 758,
  559, 560, 619, 620, 782, 783, 784, 27, 28, 104, 105, 115, 324, 843, 844, 551,
  552, 553, 627, 628, 629, 630, 111, 112, 464, 636, 637, 170, 171, 320, 321,
  592, 593, 690, 691, 692, 693, 116, 117, 230, 548, 549, 415, 416, 102, 103,
  132, 137, 233, 474, 893,
];

const expectedCrownTundraPokedexSpeciesIds = [
  872, 873, 831, 832, 819, 820, 220, 221, 473, 439, 122, 866, 238, 124, 239,
  125, 466, 240, 126, 467, 531, 582, 583, 584, 361, 362, 478, 215, 461, 615,
  459, 460, 708, 709, 333, 334, 859, 860, 861, 856, 857, 858, 173, 35, 36, 778,
  442, 607, 608, 609, 574, 575, 576, 577, 578, 579, 532, 533, 534, 339, 340,
  129, 130, 550, 29, 30, 31, 32, 33, 34, 263, 264, 862, 133, 134, 135, 136, 197,
  196, 471, 470, 700, 696, 697, 698, 699, 436, 437, 874, 875, 751, 752, 595,
  596, 588, 589, 616, 617, 850, 851, 632, 631, 554, 555, 77, 78, 359, 878, 879,
  885, 886, 887, 371, 372, 373, 443, 444, 445, 621, 225, 613, 614, 138, 139,
  140, 141, 142, 703, 374, 375, 376, 854, 855, 447, 448, 633, 634, 635, 246,
  247, 248, 712, 713, 41, 42, 169, 564, 565, 566, 567, 343, 344, 622, 623, 835,
  836, 877, 871, 363, 364, 365, 781, 821, 822, 823, 829, 830, 546, 547, 213,
  876, 446, 143, 302, 303, 837, 838, 839, 597, 598, 714, 715, 345, 346, 347,
  348, 369, 349, 350, 131, 304, 305, 306, 147, 148, 149, 377, 378, 379, 894,
  895, 144, 145, 146, 638, 639, 640, 896, 897, 898,
];

const expectedHisuiPokedexSpeciesIds = [
  722, 723, 724, 155, 156, 157, 501, 502, 503, 399, 400, 396, 397, 398, 403,
  404, 405, 265, 266, 267, 268, 269, 77, 78, 133, 134, 135, 136, 196, 197, 470,
  471, 700, 41, 42, 169, 425, 426, 401, 402, 418, 419, 412, 413, 414, 74, 75,
  76, 234, 899, 446, 143, 46, 47, 172, 25, 26, 63, 64, 65, 390, 391, 392, 427,
  428, 420, 421, 54, 55, 415, 416, 123, 900, 212, 214, 439, 122, 190, 424, 129,
  130, 422, 423, 211, 904, 440, 113, 242, 406, 315, 407, 455, 548, 549, 114,
  465, 339, 340, 453, 454, 280, 281, 282, 475, 193, 469, 449, 450, 417, 434,
  435, 216, 217, 901, 704, 705, 706, 95, 208, 111, 112, 464, 438, 185, 108, 463,
  175, 176, 468, 387, 388, 389, 137, 233, 474, 92, 93, 94, 442, 198, 430, 201,
  363, 364, 365, 223, 224, 451, 452, 58, 59, 431, 432, 66, 67, 68, 441, 355,
  356, 477, 393, 394, 395, 458, 226, 550, 902, 37, 38, 72, 73, 456, 457, 240,
  126, 467, 81, 82, 462, 436, 437, 239, 125, 466, 207, 472, 443, 444, 445, 299,
  476, 100, 101, 479, 433, 358, 200, 429, 173, 35, 36, 215, 903, 461, 361, 362,
  478, 408, 409, 410, 411, 220, 221, 473, 712, 713, 459, 460, 570, 571, 627,
  628, 447, 448, 480, 481, 482, 485, 486, 488, 641, 642, 645, 905, 483, 484,
  487, 493, 489, 490, 492, 491,
];

const expectedPaldeaPokedexSpeciesIds = [
  906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920,
  187, 188, 189, 661, 662, 663, 921, 922, 923, 228, 229, 734, 735, 819, 820,
  191, 192, 401, 402, 664, 665, 666, 415, 416, 821, 822, 823, 440, 113, 242,
  298, 183, 184, 283, 284, 418, 419, 194, 980, 54, 55, 833, 834, 174, 39, 40,
  280, 281, 282, 475, 96, 97, 92, 93, 94, 924, 925, 172, 25, 26, 926, 927, 287,
  288, 289, 761, 762, 763, 928, 929, 930, 438, 185, 744, 745, 837, 838, 839,
  403, 404, 405, 396, 397, 398, 741, 179, 180, 181, 548, 549, 285, 286, 840,
  841, 842, 325, 326, 931, 200, 429, 296, 297, 739, 740, 757, 758, 231, 232,
  878, 879, 443, 444, 445, 932, 933, 934, 278, 279, 129, 130, 846, 847, 550,
  316, 317, 52, 53, 425, 426, 669, 670, 671, 50, 51, 324, 322, 323, 436, 437,
  610, 611, 612, 56, 57, 979, 307, 308, 447, 448, 935, 936, 937, 339, 340, 938,
  939, 704, 705, 706, 453, 454, 940, 941, 133, 134, 135, 136, 196, 197, 470,
  471, 700, 206, 982, 585, 586, 203, 981, 88, 89, 942, 943, 848, 849, 702, 417,
  944, 945, 234, 590, 591, 100, 101, 81, 82, 462, 132, 58, 59, 216, 217, 335,
  336, 333, 334, 672, 673, 128, 667, 668, 434, 435, 570, 571, 215, 461, 198,
  430, 574, 575, 576, 854, 855, 778, 707, 876, 946, 947, 948, 949, 357, 753,
  754, 950, 951, 952, 331, 332, 953, 954, 48, 49, 204, 205, 123, 212, 214, 955,
  956, 449, 450, 551, 552, 553, 843, 844, 749, 750, 636, 637, 371, 372, 373,
  957, 958, 959, 856, 857, 858, 859, 860, 861, 960, 961, 962, 963, 964, 965,
  966, 967, 968, 302, 353, 354, 870, 701, 442, 714, 715, 885, 886, 887, 969,
  970, 479, 971, 972, 765, 766, 775, 246, 247, 248, 874, 875, 871, 769, 770, 79,
  80, 199, 422, 423, 90, 91, 211, 370, 456, 457, 779, 594, 690, 691, 692, 693,
  602, 603, 604, 747, 748, 973, 147, 148, 149, 872, 873, 459, 460, 225, 613,
  614, 361, 362, 478, 615, 974, 975, 712, 713, 627, 628, 624, 625, 983, 633,
  634, 635, 976, 977, 978, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993,
  994, 995, 996, 997, 998, 999, 1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007,
  1008,
];

const expectedKitakamiPokedexSpeciesIds = [
  167, 168, 193, 469, 194, 195, 261, 262, 313, 314, 341, 342, 540, 541, 542,
  742, 743, 23, 24, 172, 25, 26, 69, 70, 71, 161, 162, 396, 397, 398, 753, 754,
  840, 841, 842, 1011, 37, 38, 60, 61, 62, 186, 129, 130, 163, 164, 190, 424,
  214, 220, 221, 473, 234, 273, 274, 275, 280, 281, 282, 475, 401, 402, 417,
  447, 448, 548, 549, 708, 709, 744, 745, 819, 820, 948, 949, 1012, 1013, 58,
  59, 74, 75, 76, 438, 185, 532, 533, 534, 714, 715, 846, 847, 856, 857, 858,
  877, 968, 924, 925, 56, 57, 979, 446, 143, 270, 271, 272, 299, 476, 403, 404,
  405, 736, 737, 738, 741, 27, 28, 92, 93, 94, 207, 472, 228, 229, 325, 326,
  629, 630, 749, 750, 782, 783, 784, 962, 109, 110, 619, 620, 355, 356, 477,
  433, 358, 218, 219, 607, 608, 609, 283, 284, 173, 35, 36, 436, 437, 969, 970,
  349, 350, 206, 982, 339, 340, 443, 444, 445, 703, 757, 758, 215, 461, 361,
  362, 478, 602, 603, 604, 704, 705, 706, 580, 581, 833, 834, 845, 624, 625,
  983, 778, 859, 860, 861, 876, 550, 902, 901, 1014, 1015, 1016, 1017,
];

const expectedBlueberryPokedexSpeciesIds = [
  84, 85, 102, 103, 111, 112, 464, 48, 49, 239, 125, 466, 240, 126, 467, 440,
  113, 242, 123, 212, 900, 128, 522, 523, 203, 981, 551, 552, 553, 953, 954,
  627, 628, 629, 630, 667, 668, 585, 586, 235, 479, 868, 869, 328, 329, 330,
  731, 732, 733, 72, 73, 116, 117, 230, 779, 546, 547, 764, 287, 288, 289, 43,
  44, 45, 182, 50, 51, 88, 89, 335, 336, 739, 740, 741, 79, 80, 199, 170, 171,
  686, 687, 370, 456, 457, 594, 324, 661, 662, 663, 751, 752, 236, 106, 107,
  237, 74, 75, 76, 529, 530, 574, 575, 576, 677, 678, 774, 408, 409, 410, 411,
  572, 573, 227, 333, 334, 81, 82, 462, 311, 312, 559, 560, 622, 623, 322, 323,
  854, 855, 137, 233, 474, 595, 596, 602, 603, 604, 374, 375, 376, 610, 611,
  612, 86, 87, 131, 211, 904, 577, 578, 579, 209, 210, 613, 614, 27, 28, 37, 38,
  459, 460, 884, 1018, 1019, 1, 2, 3, 4, 5, 6, 7, 8, 9, 152, 153, 154, 155, 156,
  157, 158, 159, 160, 252, 253, 254, 255, 256, 257, 258, 259, 260, 387, 388,
  389, 390, 391, 392, 393, 394, 395, 495, 496, 497, 498, 499, 500, 501, 502,
  503, 650, 651, 652, 653, 654, 655, 656, 657, 658, 722, 723, 724, 725, 726,
  727, 728, 729, 730, 810, 811, 812, 813, 814, 815, 816, 817, 818, 1020, 1021,
  1023, 1022, 1024, 1009, 1010, 1025,
];

const expectedLumiosePokedexSpeciesIds = [
  152, 153, 154, 498, 499, 500, 158, 159, 160, 661, 662, 663, 659, 660, 664,
  665, 666, 13, 14, 15, 16, 17, 18, 179, 180, 181, 504, 505, 406, 315, 407, 129,
  130, 688, 689, 120, 121, 669, 670, 671, 672, 673, 677, 678, 667, 668, 674,
  675, 568, 569, 702, 172, 25, 26, 173, 35, 36, 167, 168, 23, 24, 63, 64, 65,
  92, 93, 94, 543, 544, 545, 679, 680, 681, 69, 70, 71, 511, 512, 513, 514, 515,
  516, 307, 308, 309, 310, 280, 281, 282, 475, 228, 229, 333, 334, 531, 682,
  683, 684, 685, 133, 134, 135, 136, 196, 197, 470, 471, 700, 427, 428, 353,
  354, 582, 583, 584, 322, 323, 449, 450, 529, 530, 551, 552, 553, 66, 67, 68,
  443, 444, 445, 703, 302, 303, 359, 447, 448, 79, 80, 199, 318, 319, 602, 603,
  604, 147, 148, 149, 1, 2, 3, 4, 5, 6, 7, 8, 9, 618, 676, 686, 687, 690, 691,
  692, 693, 704, 705, 706, 225, 361, 362, 478, 459, 460, 712, 713, 123, 212,
  127, 214, 587, 701, 708, 709, 559, 560, 714, 715, 707, 607, 608, 609, 142,
  696, 697, 698, 699, 95, 208, 304, 305, 306, 694, 695, 710, 711, 246, 247, 248,
  656, 657, 658, 870, 650, 651, 652, 227, 653, 654, 655, 371, 372, 373, 115,
  780, 374, 375, 376, 716, 717, 718, 719, 150,
];

const expectedHyperspacePokedexSpeciesIds = [
  56, 57, 979, 52, 53, 863, 83, 865, 104, 105, 137, 233, 474, 951, 952, 957,
  958, 959, 967, 969, 970, 479, 971, 972, 769, 770, 352, 973, 615, 977, 978,
  996, 997, 998, 999, 1000, 211, 904, 252, 253, 254, 255, 256, 257, 258, 259,
  260, 349, 350, 433, 358, 876, 509, 510, 517, 518, 538, 539, 562, 563, 867,
  767, 768, 827, 828, 852, 853, 778, 900, 877, 622, 623, 821, 822, 823, 174, 39,
  40, 926, 927, 396, 397, 398, 325, 326, 931, 739, 740, 932, 933, 934, 316, 317,
  41, 42, 169, 935, 936, 937, 942, 943, 848, 849, 944, 945, 335, 336, 439, 122,
  866, 590, 591, 485, 721, 638, 639, 640, 647, 648, 649, 720, 802, 808, 809,
  491, 380, 381, 382, 383, 384, 801, 807,
];

const sourceOptionalPokedexEntryKeys = new Set([
  // Source-visible entries excluded by source/game completion rules.
  // Keep this explicit: optional completion is a per-dex rule, not a mythical shortcut.
  "101:151",
  "201:151",
  "301:151",
  "301:251",
  "401:151",
  "401:251",
  "501:385",
  "501:386",
  "701:385",
  "701:386",
  "601:151",
  "801:490",
  "1001:151",
  "1001:251",
  "1101:494",
  "1101:647",
  "1101:648",
  "1101:649",
  "1201:494",
  "1201:647",
  "1201:648",
  "1201:649",
  "1301:719",
  "1301:720",
  "1301:721",
  "1302:144",
  "1302:145",
  "1302:146",
  "1303:150",
  "1401:385",
  "1401:386",
  "1501:801",
  "1501:802",
  "1601:801",
  "1601:802",
  "1601:807",
  "1701:151",
  "1701:808",
  "1701:809",
  "1901:893",
  "2101:490",
  "2201:489",
  "2201:490",
  "2201:491",
  "2201:492",
  "2501:1009",
  "2501:1010",
  "2501:1025",
  "2601:150",
  "2601:719",
  "2701:807",
]);

const nationalPokedexIds = new Set([
  502, 602, 702, 802, 902, 1002, 1102, 1202, 1304, 1402, 2102,
]);
const expectedNationalPokedexMaxSpeciesById = new Map([
  [502, 386],
  [602, 386],
  [702, 386],
  [802, 493],
  [902, 493],
  [1002, 493],
  [1102, 649],
  [1202, 649],
  [1304, 721],
  [1402, 721],
  [2102, 493],
]);
const mythicalSpeciesIds = new Set([
  151, 251, 385, 386, 489, 490, 491, 492, 493, 494, 647, 648, 649, 719, 720,
  721, 801, 802, 807, 808, 809, 893, 1025,
]);

function getExpectedPokedexEntryRequired(pokedexId, speciesId) {
  if (nationalPokedexIds.has(pokedexId) && mythicalSpeciesIds.has(speciesId)) {
    return false;
  }

  return !sourceOptionalPokedexEntryKeys.has(`${pokedexId}:${speciesId}`);
}

function addExpectedPokedexEntryRows(
  expectedRows,
  pokedexId,
  speciesIds,
  startNumber = 1,
) {
  speciesIds.forEach((speciesId, index) => {
    expectedRows.push({
      pokedex_id: pokedexId,
      pokedex_number: index + startNumber,
      species_id: speciesId,
      is_source_required_for_completion: getExpectedPokedexEntryRequired(
        pokedexId,
        speciesId,
      ),
    });
  });
}

function addExpectedNationalPokedexEntryRows(
  expectedRows,
  pokedexId,
  maxSpeciesId,
) {
  addExpectedPokedexEntryRows(
    expectedRows,
    pokedexId,
    Array.from({ length: maxSpeciesId }, (_, index) => index + 1),
    1,
  );
}

function buildExpectedPokedexEntries() {
  const expectedRows = [];

  for (const pokedexId of [101, 201, 601]) {
    for (let pokedexNumber = 1; pokedexNumber <= 151; pokedexNumber += 1) {
      expectedRows.push({
        pokedex_id: pokedexId,
        pokedex_number: pokedexNumber,
        species_id: pokedexNumber,
        is_source_required_for_completion: getExpectedPokedexEntryRequired(
          pokedexId,
          pokedexNumber,
        ),
      });
    }
  }

  for (let pokedexNumber = 1; pokedexNumber <= 153; pokedexNumber += 1) {
    let speciesId = pokedexNumber;
    if (pokedexNumber === 152) speciesId = 808;
    if (pokedexNumber === 153) speciesId = 809;

    expectedRows.push({
      pokedex_id: 1701,
      pokedex_number: pokedexNumber,
      species_id: speciesId,
      is_source_required_for_completion: getExpectedPokedexEntryRequired(
        1701,
        speciesId,
      ),
    });
  }

  addExpectedPokedexEntryRows(
    expectedRows,
    301,
    expectedNewPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    401,
    expectedNewPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1001,
    expectedJohtoPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    501,
    expectedHoennPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    701,
    expectedHoennPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1401,
    expectedUpdatedHoennPokedexSpeciesIds,
    1,
  );
  addExpectedNationalPokedexEntryRows(expectedRows, 502, 386);
  addExpectedNationalPokedexEntryRows(expectedRows, 602, 386);
  addExpectedNationalPokedexEntryRows(expectedRows, 702, 386);
  addExpectedPokedexEntryRows(
    expectedRows,
    801,
    expectedSinnohPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    901,
    expectedExpandedSinnohPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2101,
    expectedSinnohPokedexSpeciesIds,
    1,
  );
  addExpectedNationalPokedexEntryRows(expectedRows, 802, 493);
  addExpectedNationalPokedexEntryRows(expectedRows, 902, 493);
  addExpectedNationalPokedexEntryRows(expectedRows, 1002, 493);
  addExpectedNationalPokedexEntryRows(expectedRows, 2102, 493);
  addExpectedPokedexEntryRows(
    expectedRows,
    1101,
    expectedUnovaPokedexSpeciesIds,
    0,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1201,
    expectedNewUnovaPokedexSpeciesIds,
    0,
  );
  addExpectedNationalPokedexEntryRows(expectedRows, 1102, 649);
  addExpectedNationalPokedexEntryRows(expectedRows, 1202, 649);
  addExpectedPokedexEntryRows(
    expectedRows,
    1301,
    expectedCentralKalosPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1302,
    expectedCoastalKalosPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1303,
    expectedMountainKalosPokedexSpeciesIds,
    1,
  );
  addExpectedNationalPokedexEntryRows(expectedRows, 1304, 721);
  addExpectedNationalPokedexEntryRows(expectedRows, 1402, 721);
  addExpectedPokedexEntryRows(
    expectedRows,
    1501,
    expectedSmAlolaPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1502,
    expectedSmMelemelePokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1503,
    expectedSmAkalaPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1504,
    expectedSmUlaulaPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1505,
    expectedSmPoniPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1601,
    expectedUsumAlolaPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1602,
    expectedUsumMelemelePokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1603,
    expectedUsumAkalaPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1604,
    expectedUsumUlaulaPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1605,
    expectedUsumPoniPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1801,
    expectedGalarPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    1901,
    expectedIsleOfArmorPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2001,
    expectedCrownTundraPokedexSpeciesIds,
    1,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2201,
    expectedHisuiPokedexSpeciesIds,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2301,
    expectedPaldeaPokedexSpeciesIds,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2401,
    expectedKitakamiPokedexSpeciesIds,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2501,
    expectedBlueberryPokedexSpeciesIds,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2601,
    expectedLumiosePokedexSpeciesIds,
  );
  addExpectedPokedexEntryRows(
    expectedRows,
    2701,
    expectedHyperspacePokedexSpeciesIds,
  );

  return expectedRows;
}

function assertPokedexEntryRows(tableRows) {
  const rows = tableRows.get("reference.pokedex_entries") ?? [];
  const pokedexById = mapRowsByColumn(
    tableRows.get("reference.pokedex") ?? [],
    "id",
  );
  const speciesById = mapRowsByColumn(
    tableRows.get("reference.pokemon_species") ?? [],
    "id",
  );
  const formKeys = new Set(
    (tableRows.get("reference.pokemon_forms") ?? []).map(
      ({ row }) => `${row.species_id}:${row.id}`,
    ),
  );
  const expectedRows = buildExpectedPokedexEntries();
  const expectedByKey = new Map(
    expectedRows.map((row) => [`${row.pokedex_id}:${row.pokedex_number}`, row]),
  );
  const actualKeys = new Set();

  const expectedOptionalCompletionKeys = new Set(
    expectedRows
      .filter((row) => row.is_source_required_for_completion === false)
      .map((row) => `${row.pokedex_id}:${row.species_id}`),
  );
  const actualOptionalCompletionKeys = new Set(
    rows
      .filter(({ row }) => row.is_source_required_for_completion === false)
      .map(({ row }) => `${row.pokedex_id}:${row.species_id}`),
  );

  for (const key of actualOptionalCompletionKeys) {
    if (!expectedOptionalCompletionKeys.has(key)) {
      errors.push(
        `reference.pokedex_entries: unexpected optional completion entry ${key}; optional entries must be source-listed exceptions or National Pokedex Mythical species.`,
      );
    }
  }

  for (const key of expectedOptionalCompletionKeys) {
    if (!actualOptionalCompletionKeys.has(key)) {
      errors.push(
        `reference.pokedex_entries: expected optional completion entry ${key} is not seeded with is_source_required_for_completion=false.`,
      );
    }
  }
  if (rows.length !== expectedRows.length) {
    errors.push(
      `reference.pokedex_entries: expected ${expectedRows.length} currently-audited rows, got ${rows.length}.`,
    );
  }

  addCompositeDuplicateErrors(
    "reference.pokedex_entries",
    rows,
    "pokedex_id + species_id",
    (row) => `${row.pokedex_id}:${row.species_id}`,
  );
  addCompositeDuplicateErrors(
    "reference.pokedex_entries",
    rows,
    "pokedex_id + pokedex_number",
    (row) => `${row.pokedex_id}:${row.pokedex_number}`,
  );

  const actualRowsByPokedexId = new Map();
  for (const { row } of rows) {
    if (!actualRowsByPokedexId.has(row.pokedex_id)) {
      actualRowsByPokedexId.set(row.pokedex_id, []);
    }
    actualRowsByPokedexId.get(row.pokedex_id).push(row);
  }
  const pokedexEntrySourceFingerprint = (entryRows) =>
    createHash("sha256")
      .update(
        entryRows
          .toSorted(
            (a, b) =>
              a.pokedex_id - b.pokedex_id ||
              a.pokedex_number - b.pokedex_number ||
              a.species_id - b.species_id ||
              (a.display_form_id ?? 0) - (b.display_form_id ?? 0) ||
              Number(a.is_source_required_for_completion) -
                Number(b.is_source_required_for_completion),
          )
          .map((row) =>
            [
              row.pokedex_id,
              row.pokedex_number,
              row.species_id,
              row.display_form_id ?? "form-null",
              row.is_source_required_for_completion ? "required" : "optional",
            ].join("/"),
          )
          .join("|"),
      )
      .digest("hex");

  const sourceVerifiedPokedexEntryFingerprintsByPokedexId = new Map([
    [
      101,
      {
        count: 151,
        sha256:
          "a8f21ed77efaa7bc1543a88aab25f1c2848bab5b43570d4bf6babe5e6d9bc8db",
      },
    ],
    [
      201,
      {
        count: 151,
        sha256:
          "c1a8cbf0ab4c8a548f44124353fc830e19002cf9c9a3a17b9be5b66fe579a7ae",
      },
    ],
    [
      301,
      {
        count: 251,
        sha256:
          "6a4546895f3234bef083ed0b428d288dab8869a0978dfc30708f976d93bea380",
      },
    ],
    [
      401,
      {
        count: 251,
        sha256:
          "d051130ec3231999e32d8659068feff222994d6f7ad2159f863b0bf173551639",
      },
    ],
    [
      501,
      {
        count: 202,
        sha256:
          "635d73f339a7964996a3413f6b408f5a922afb8e9c9a8dfd0743f267d4c83ff8",
      },
    ],
    [
      502,
      {
        count: 386,
        sha256:
          "9db587b6232bc5ad5e26dd6c670e8e0bfb0409b47ebdadd1e2636ddb6ac77185",
      },
    ],
    [
      601,
      {
        count: 151,
        sha256:
          "8ac171939c8a46ee673ea4fd721330080eafdbf25015234abae86930a246ff72",
      },
    ],
    [
      602,
      {
        count: 386,
        sha256:
          "e37cdd0fdfced63790dcd42417b4e8150e3133ee96c55a99cfa5164dcaa31f8f",
      },
    ],
    [
      701,
      {
        count: 202,
        sha256:
          "d06c7da7abe7584f8c4191caeb329613c348f48c041ea1e98829a13fd18e03a4",
      },
    ],
    [
      702,
      {
        count: 386,
        sha256:
          "695f704933bcd7192c6024cd8cc5494c9b8ac10d3011b832a9c83433bc8cba62",
      },
    ],
    [
      801,
      {
        count: 151,
        sha256:
          "08163b9e17431c7b1bcb3787caa8da0be663aff4d9946fa83de536a25444e58d",
      },
    ],
    [
      802,
      {
        count: 493,
        sha256:
          "1845be46c22263968c674df4e978ca8bc527cf62a8c94814a8216dfa289f522a",
      },
    ],
    [
      901,
      {
        count: 210,
        sha256:
          "77e6bc0e8699644b7d6c3cac6dc88ac720a345f1dd2d13c0302f89a5ebf69211",
      },
    ],
    [
      902,
      {
        count: 493,
        sha256:
          "ad1493e75c00b2bbd2fea02ea7b3c71e046db21753f1cd81cc381f5ae552b58b",
      },
    ],
    [
      1001,
      {
        count: 256,
        sha256:
          "b5b3805008a29e8c75218cb7a41f3fd7583cff0ccf51ebcc0c9d0ce1705af0b4",
      },
    ],
    [
      1002,
      {
        count: 493,
        sha256:
          "395383480c27f2b7674443887136fc7559c75e69573f02045ed9e36e2732eb74",
      },
    ],
    [
      1101,
      {
        count: 156,
        sha256:
          "83c8f5779b95f21ca3a9bc2f2839ecaac7f50b8d860a55cf1e5579aeff868e02",
      },
    ],
    [
      1102,
      {
        count: 649,
        sha256:
          "8b8bfa66859083ff50ea2994182d8d1a8a702a839a22d42258cb0005f1b3b325",
      },
    ],
    [
      1201,
      {
        count: 301,
        sha256:
          "00581c57c1002f38850294c2010149eb13aae1e2a9b3a7e05b40f81c21967f12",
      },
    ],
    [
      1202,
      {
        count: 649,
        sha256:
          "f61144b33e4abe6128ecac3ae220816fedcb927ef077c532e6d7750df6653b5b",
      },
    ],
    [
      1301,
      {
        count: 153,
        sha256:
          "1546dcc75ea194c4f277f183f66f523dbc7303099f60713c95c374870f372aa3",
      },
    ],
    [
      1302,
      {
        count: 153,
        sha256:
          "eb62c81d9a9a8970a1278c43e8ccdf9ed388d60dc5dcf96b1d74fa38fa3a9db0",
      },
    ],
    [
      1303,
      {
        count: 151,
        sha256:
          "c90a416ba9a04e20228b54459f3cf1a69856cb403107f89c863e9764300c8781",
      },
    ],
    [
      1304,
      {
        count: 721,
        sha256:
          "4257eecc60281d0dabf02c04ef8271a587da5169545b6c5fac63b91255b35316",
      },
    ],
    [
      1401,
      {
        count: 211,
        sha256:
          "1eab074b062601ffd4f1659660c7ae09c2e4f6a78403df6b2b661f17a0c3098b",
      },
    ],
    [
      1402,
      {
        count: 721,
        sha256:
          "f31e37c26369f953df4b6e9541c2c99a90ec7cf0d10853da2fcd0855881d0c25",
      },
    ],
    [
      1501,
      {
        count: 302,
        sha256:
          "f5e09dd2d92ea259758e85bc17f4712d077302f4843fc2a8c9107d6ee50825f0",
      },
    ],
    [
      1502,
      {
        count: 120,
        sha256:
          "cffc9a1af12ed798c3758a3a934cec6a31e4b90195685c6367cd08200259b548",
      },
    ],
    [
      1503,
      {
        count: 130,
        sha256:
          "0adf6d6a4c051348443ea68b94ab65edca126faccdfe8833f1d8692091964304",
      },
    ],
    [
      1504,
      {
        count: 130,
        sha256:
          "bef840354d1a977e9cf131d52b0a135203642ee6572f6de8114a0944c26628fd",
      },
    ],
    [
      1505,
      {
        count: 100,
        sha256:
          "763374f7bc326b309911c9e53efb3677145580f50dfb5fe64de0e03b89284659",
      },
    ],
    [
      1601,
      {
        count: 403,
        sha256:
          "7de69e8e5f0b0d43b0b960614df0ae94aabc17e3dd7129810a510535ad13e720",
      },
    ],
    [
      1602,
      {
        count: 150,
        sha256:
          "6b05af83de6a7808950bcc8495773fc7b09c55ded7f5f82845debe2e422f5d91",
      },
    ],
    [
      1603,
      {
        count: 160,
        sha256:
          "682cdd6713f4185121a5ff5cd75b168b53fb59cacb0bd37061bd41ac6081c1f5",
      },
    ],
    [
      1604,
      {
        count: 160,
        sha256:
          "a010ab5b2675986a6437781aad3f984e6c05d199928577ddf96ba16786f53683",
      },
    ],
    [
      1605,
      {
        count: 130,
        sha256:
          "789bbca6661c1e53b04b6489f9b65c12b02406103814dca595307c575f6efce3",
      },
    ],
    [
      1701,
      {
        count: 153,
        sha256:
          "8f7b33deecc6fd34214f47d5ff742873be9565b22e8f45196df3e76455d0298a",
      },
    ],
    [
      1801,
      {
        count: 400,
        sha256:
          "429a5ed96959fce257e63e121a2954cae465d25c91e5f83fd331a65b33859a41",
      },
    ],
    [
      1901,
      {
        count: 211,
        sha256:
          "3fa2d3c6a0e6b0aacdfad5b2406001e7ab7c5a24c4211f84309cb8c2e80addb3",
      },
    ],
    [
      2001,
      {
        count: 210,
        sha256:
          "501ca122096527d729807de746d551a126d35ce429fea2005f9de0efe0620678",
      },
    ],
    [
      2101,
      {
        count: 151,
        sha256:
          "88cee17769ed39d240d590f6298cd64d433b94b43886f7e95f29488b7c055f3d",
      },
    ],
    [
      2102,
      {
        count: 493,
        sha256:
          "78821988c005896891e84297732b318e723863b29546a918959fa818d632c444",
      },
    ],
    [
      2201,
      {
        count: 242,
        sha256:
          "4ac544500494f7e5df408006d22760cf747648fde38427c33a76065ba3ef738d",
      },
    ],
    [
      2301,
      {
        count: 400,
        sha256:
          "ba91ae2c44abd0c1bf6eec4348f93628c7436577621d83f24615c09f7b3e017f",
      },
    ],
    [
      2401,
      {
        count: 200,
        sha256:
          "d81b281a8dddc81b8bdb315981e516cffe5480f46bceadde4e6dacbf9f2ae32c",
      },
    ],
    [
      2501,
      {
        count: 243,
        sha256:
          "253f4482fbd5d620cc3d43faf743d0f14f414da11cffc1fdc886d4172c595671",
      },
    ],
    [
      2601,
      {
        count: 232,
        sha256:
          "a67107ec8c88dd894af09515f42bf46f378201be3919b402487a9c7f9a007499",
      },
    ],
    [
      2701,
      {
        count: 132,
        sha256:
          "90620dceecda6eb2108e6dbd1d9d6ebe0d046d55266d146cfec9015a4562e7e8",
      },
    ],
  ]);

  for (const pokedexId of actualRowsByPokedexId.keys()) {
    if (!sourceVerifiedPokedexEntryFingerprintsByPokedexId.has(pokedexId)) {
      errors.push(
        "reference.pokedex_entries: unexpected rows for Pokedex " +
          pokedexId +
          "; add an explicit source-verified Pokedex entry fingerprint before seeding a new scope.",
      );
    }
  }

  for (const [
    pokedexId,
    expectedFingerprint,
  ] of sourceVerifiedPokedexEntryFingerprintsByPokedexId.entries()) {
    const scopedRows = actualRowsByPokedexId.get(pokedexId) ?? [];
    const actualCount = scopedRows.length;
    const actualFingerprint = pokedexEntrySourceFingerprint(scopedRows);
    if (
      actualCount !== expectedFingerprint.count ||
      actualFingerprint !== expectedFingerprint.sha256
    ) {
      errors.push(
        "reference.pokedex_entries: Pokedex " +
          pokedexId +
          " source-verified fingerprint expected " +
          expectedFingerprint.count +
          "/" +
          expectedFingerprint.sha256 +
          ", got " +
          actualCount +
          "/" +
          actualFingerprint +
          ".",
      );
    }
  }

  for (const [
    pokedexId,
    maxSpeciesId,
  ] of expectedNationalPokedexMaxSpeciesById.entries()) {
    const nationalRows = actualRowsByPokedexId.get(pokedexId) ?? [];
    if (nationalRows.length !== maxSpeciesId) {
      errors.push(
        `reference.pokedex_entries: National Pokedex ${pokedexId} expected ${maxSpeciesId} species-level rows, got ${nationalRows.length}.`,
      );
    }

    for (const row of nationalRows) {
      if (row.pokedex_number !== row.species_id) {
        errors.push(
          `reference.pokedex_entries: National Pokedex ${pokedexId} row ${row.pokedex_number} expected species_id to match National number, got ${row.species_id}.`,
        );
      }
      if (row.display_form_id !== null) {
        errors.push(
          `reference.pokedex_entries: National Pokedex ${pokedexId} row ${row.pokedex_number} must be species-level and not set display_form_id.`,
        );
      }
      if (row.species_id < 1 || row.species_id > maxSpeciesId) {
        errors.push(
          `reference.pokedex_entries: National Pokedex ${pokedexId} row ${row.pokedex_number} has species_id ${row.species_id} outside source-confirmed 1-${maxSpeciesId} range.`,
        );
      }
    }
  }

  for (const { row, filePath } of rows) {
    if (!pokedexById.has(row.pokedex_id)) {
      errors.push(
        `${relative(filePath)}: reference.pokedex_entries row ${row.pokedex_id}/${row.species_id} references missing pokedex_id ${row.pokedex_id}.`,
      );
    }

    if (!speciesById.has(row.species_id)) {
      errors.push(
        `${relative(filePath)}: reference.pokedex_entries row ${row.pokedex_id}/${row.species_id} references missing species_id ${row.species_id}.`,
      );
    }

    if (
      row.display_form_id !== null &&
      !formKeys.has(`${row.species_id}:${row.display_form_id}`)
    ) {
      errors.push(
        `${relative(filePath)}: reference.pokedex_entries row ${row.pokedex_id}/${row.species_id} has invalid species/form pair ${row.species_id}/${row.display_form_id}.`,
      );
    }

    if (row.is_source_required_for_completion === false) {
      const completionKey = `${row.pokedex_id}:${row.species_id}`;
      const isNationalMythical =
        nationalPokedexIds.has(row.pokedex_id) &&
        mythicalSpeciesIds.has(row.species_id);
      if (
        !sourceOptionalPokedexEntryKeys.has(completionKey) &&
        !isNationalMythical
      ) {
        errors.push(
          `${relative(filePath)}: reference.pokedex_entries row ${completionKey} is optional for completion without an explicit source exception or National Pokedex Mythical rule.`,
        );
      }
    }

    const key = `${row.pokedex_id}:${row.pokedex_number}`;
    const expectedRow = expectedByKey.get(key);
    if (expectedRow === undefined) {
      errors.push(
        `${relative(filePath)}: reference.pokedex_entries has unexpected audited row ${key}.`,
      );
      continue;
    }

    actualKeys.add(key);

    if (row.species_id !== expectedRow.species_id) {
      errors.push(
        `${relative(filePath)}: reference.pokedex_entries ${key} expected species_id ${expectedRow.species_id}, got ${row.species_id}.`,
      );
    }

    if (row.display_form_id !== null) {
      errors.push(
        `${relative(filePath)}: reference.pokedex_entries ${key} expected NULL display_form_id for species-level entry.`,
      );
    }

    if (
      row.is_source_required_for_completion !==
      expectedRow.is_source_required_for_completion
    ) {
      errors.push(
        `${relative(filePath)}: reference.pokedex_entries ${key} expected is_source_required_for_completion ${expectedRow.is_source_required_for_completion}, got ${row.is_source_required_for_completion}.`,
      );
    }
  }

  for (const key of expectedByKey.keys()) {
    if (!actualKeys.has(key)) {
      errors.push(`reference.pokedex_entries: missing audited row ${key}.`);
    }
  }
}

function typeMatchupKey(row) {
  return [
    row.attacking_type_id,
    row.defending_type_id,
    row.generation_start_id,
    row.multiplier_numerator,
    row.multiplier_denominator,
  ].join("/");
}

function assertTypeMatchupRows(tableRows) {
  const rows = tableRows.get("reference.type_matchups") ?? [];
  const typesById = mapRowsByColumn(
    tableRows.get("reference.types") ?? [],
    "id",
  );
  const typesBySlug = mapRowsByColumn(
    tableRows.get("reference.types") ?? [],
    "slug",
  );
  const generationIds = new Set(
    (tableRows.get("reference.generations") ?? []).map(({ row }) => row.id),
  );
  const expectedRows = expectedTypeMatchupRows.map(
    ([
      attacking_type_id,
      defending_type_id,
      generation_start_id,
      multiplier_numerator,
      multiplier_denominator,
    ]) => ({
      attacking_type_id,
      defending_type_id,
      generation_start_id,
      multiplier_numerator,
      multiplier_denominator,
    }),
  );
  const expectedKeys = new Set(expectedRows.map(typeMatchupKey));
  const actualKeys = new Set();

  addCompositeDuplicateErrors(
    "reference.type_matchups",
    rows,
    "attacking_type_id/defending_type_id/generation_start_id",
    (row) =>
      `${row.attacking_type_id}/${row.defending_type_id}/${row.generation_start_id}`,
  );

  for (const { row, filePath } of rows) {
    const attackingType = typesById.get(row.attacking_type_id);
    const defendingType = typesById.get(row.defending_type_id);
    const actualKey = typeMatchupKey(row);
    actualKeys.add(actualKey);

    if (!attackingType) {
      errors.push(
        `${relative(filePath)}: type matchup references unseeded attacking_type_id ${row.attacking_type_id}.`,
      );
    }

    if (!defendingType) {
      errors.push(
        `${relative(filePath)}: type matchup references unseeded defending_type_id ${row.defending_type_id}.`,
      );
    }

    if (!generationIds.has(row.generation_start_id)) {
      errors.push(
        `${relative(filePath)}: type matchup references unseeded generation_start_id ${row.generation_start_id}.`,
      );
    }

    if (
      attackingType &&
      row.generation_start_id < attackingType.introduced_generation_id
    ) {
      errors.push(
        `${relative(filePath)}: type matchup starts before attacking type ${attackingType.slug} exists.`,
      );
    }

    if (
      defendingType &&
      row.generation_start_id < defendingType.introduced_generation_id
    ) {
      errors.push(
        `${relative(filePath)}: type matchup starts before defending type ${defendingType.slug} exists.`,
      );
    }

    if (!expectedKeys.has(actualKey)) {
      errors.push(
        `${relative(filePath)}: unexpected type matchup row ${actualKey}.`,
      );
    }
  }

  for (const expectedRow of expectedRows) {
    const expectedKey = typeMatchupKey(expectedRow);
    if (!actualKeys.has(expectedKey)) {
      errors.push(
        `reference.type_matchups: missing expected type matchup row ${expectedKey}.`,
      );
    }
  }

  if (rows.length !== expectedRows.length) {
    errors.push(
      `reference.type_matchups: expected ${expectedRows.length} rows, got ${rows.length}.`,
    );
  }

  function resolvedMultiplier(
    attackingTypeSlug,
    defendingTypeSlug,
    generationId,
  ) {
    const attackingType = typesBySlug.get(attackingTypeSlug);
    const defendingType = typesBySlug.get(defendingTypeSlug);
    if (!attackingType || !defendingType) return "missing-type";

    const matchingRows = rows
      .map(({ row }) => row)
      .filter(
        (row) =>
          row.attacking_type_id === attackingType.id &&
          row.defending_type_id === defendingType.id &&
          row.generation_start_id <= generationId,
      )
      .sort((a, b) => b.generation_start_id - a.generation_start_id);

    if (matchingRows.length === 0) return "1/1";
    return `${matchingRows[0].multiplier_numerator}/${matchingRows[0].multiplier_denominator}`;
  }

  const sanityChecks = [
    ["normal", "rock", 1, "1/2"],
    ["normal", "bug", 1, "1/1"],
    ["poison", "bug", 1, "2/1"],
    ["bug", "poison", 1, "2/1"],
    ["ghost", "psychic", 1, "0/1"],
    ["ice", "fire", 1, "1/1"],
    ["poison", "bug", 2, "1/1"],
    ["bug", "poison", 2, "1/2"],
    ["ghost", "psychic", 2, "2/1"],
    ["ice", "fire", 2, "1/2"],
    ["psychic", "dark", 2, "0/1"],
    ["poison", "steel", 2, "0/1"],
    ["fairy", "dragon", 6, "2/1"],
    ["dragon", "fairy", 6, "0/1"],
    ["ghost", "steel", 6, "1/1"],
    ["dark", "steel", 6, "1/1"],
  ];

  for (const [
    attackingTypeSlug,
    defendingTypeSlug,
    generationId,
    expectedMultiplier,
  ] of sanityChecks) {
    const actualMultiplier = resolvedMultiplier(
      attackingTypeSlug,
      defendingTypeSlug,
      generationId,
    );
    if (actualMultiplier !== expectedMultiplier) {
      errors.push(
        `reference.type_matchups: expected ${attackingTypeSlug}->${defendingTypeSlug} in generation ${generationId} to resolve to ${expectedMultiplier}, got ${actualMultiplier}.`,
      );
    }
  }
}

assertSchemaSecurity();

if (!existsSync(seedsRoot)) {
  errors.push(`Missing seeds directory: ${seedsRoot}`);
} else {
  const files = walkFiles(seedsRoot);
  const directories = walkDirectories(seedsRoot);
  const sqlFiles = files.filter((filePath) => filePath.endsWith(".sql"));
  const markdownFiles = files.filter((filePath) => filePath.endsWith(".md"));

  if (sqlFiles.length === 0) {
    errors.push("No SQL seed files found.");
  }

  for (const directoryPath of directories) {
    const directoryName = path.basename(directoryPath);
    if (!/^\d{2}_[a-z0-9_]+$/.test(directoryName)) {
      errors.push(
        `${relative(directoryPath)}: seed folders must use a two-digit numeric prefix.`,
      );
    }
  }

  for (const filePath of sqlFiles) {
    const fileName = path.basename(filePath);
    if (!/^\d{3}_[a-z0-9_]+\.sql$/.test(fileName)) {
      errors.push(
        `${relative(filePath)}: SQL seed files must use a three-digit numeric prefix.`,
      );
    }
  }

  const allRows = [];
  for (const filePath of [...sqlFiles, ...markdownFiles]) {
    const text = readFileSync(filePath, "utf8");
    if (/[^\x00-\x7Fé]/.test(text)) {
      errors.push(
        `${relative(filePath)} contains non-ASCII characters outside approved Pokémon typography.`,
      );
    }
    if (/[ \t]+$/m.test(text)) {
      errors.push(`${relative(filePath)} contains trailing whitespace.`);
    }
  }

  for (const filePath of sqlFiles) {
    const text = readFileSync(filePath, "utf8");
    assertReferenceHelperComments(text, filePath);
    assertPokedexEntryHelperComments(text, filePath);
    const executableSql = stripLineComments(text);

    if (!text.includes("-- Source") || !text.includes("-- File Scope")) {
      errors.push(
        `${relative(filePath)} must include Source and File Scope comment sections.`,
      );
    }
    if (/\bother\b/i.test(executableSql) || /'other'/i.test(executableSql)) {
      errors.push(
        `${relative(filePath)} contains forbidden generic "other" seed data.`,
      );
    }
    if (/\bON\s+CONFLICT\b/i.test(executableSql)) {
      errors.push(
        `${relative(filePath)} contains ON CONFLICT; clean seeds should not be idempotent.`,
      );
    }
    if (
      /^\s*(CREATE|ALTER|DROP|DELETE|UPDATE|TRUNCATE)\b/im.test(executableSql)
    ) {
      errors.push(
        `${relative(filePath)} contains schema/mutation SQL outside INSERT statements.`,
      );
    }

    allRows.push(...parseInserts(executableSql, filePath));
  }

  const tableRows = new Map();
  const columnsByTable = parseSchemaColumns();
  for (const parsedRow of allRows) {
    if (!tableRows.has(parsedRow.table)) tableRows.set(parsedRow.table, []);
    tableRows.get(parsedRow.table).push(parsedRow);
  }

  for (const table of Object.keys(expectedSlugs).sort()) {
    if (!tableRows.has(table)) {
      errors.push(
        `${table}: expected lookup seed rows, but table is not seeded.`,
      );
    }
  }

  for (const [table, rows] of tableRows.entries()) {
    if (!columnsByTable.has(table)) {
      errors.push(`${table}: seeded table does not exist in schema files.`);
    } else {
      const schemaColumns = columnsByTable.get(table);
      for (const { row, filePath } of rows) {
        for (const column of Object.keys(row)) {
          if (!schemaColumns.has(column)) {
            errors.push(
              `${relative(filePath)}: ${table}.${column} is not defined in schema files.`,
            );
          }
        }
      }
    }

    if (!expectedSlugs[table] && !customAuditTables.has(table)) {
      warnings.push(
        `${table}: seeded table has no exact slug expectation yet.`,
      );
    }

    addDuplicateErrors(table, rows, "id");
    if (!scopedSlugTables.has(table)) {
      addDuplicateErrors(table, rows, "slug");
    }
    if (!scopedSortTables.has(table)) {
      addDuplicateErrors(table, rows, "sort_order");
    }
    assertGeneratedIdsAreNotSeeded(table, rows);
    assertPositiveIntegers(table, rows);
    assertProductDescriptions(table, rows);
    assertSlugFormat(table, rows);
    if (!scopedSortTables.has(table)) {
      assertContiguousSortOrder(table, rows);
    }
    assertExactSlugs(table, rows);
  }

  assertGenerationReferences(tableRows);
  assertFoundationRowsetFingerprints(tableRows);
  assertCoreMechanicsRowsetFingerprints(tableRows);
  assertNatureRows(tableRows.get("reference.natures") ?? []);
  assertAbilityRows(tableRows);
  assertAbilityAttributeRows(tableRows);
  assertPokemonIdentityRows(tableRows);
  assertItemRows(tableRows);
  assertNoSourceNotesColumns(tableRows);
  assertItemAvailabilityRows(tableRows);
  assertMoveRows(tableRows);
  assertMoveAvailabilityRows(tableRows);
  assertMoveMachineRows(tableRows);
  assertMoveAttributeRows(tableRows);
  assertPokemonEvolutionEdgeRows(tableRows);
  assertPokemonAvailabilityRows(tableRows);
  assertPokemonLearnsetRows(tableRows);
  assertPokemonFormRuleRows(tableRows);
  assertPokemonFormItemRequirementRows(tableRows);
  assertPokemonAttributeRows(tableRows);
  assertTrackingCoreRows(tableRows);
  assertTerminalStatuses(
    tableRows.get("gameplay.mainline_play_statuses") ?? [],
  );
  assertVersionGroupRows(tableRows);
  assertGameRows(tableRows);
  assertGameContentScopeRows(tableRows);
  assertContentScopeDependencyRows(tableRows);
  assertGamePlatformRows(tableRows);
  assertPokedexRows(tableRows);
  assertPokedexEntryRows(tableRows);
  assertTypeMatchupRows(tableRows);

  console.log(`Seed files checked: ${sqlFiles.length}`);
  console.log(`Markdown files checked: ${markdownFiles.length}`);
  console.log(`Seeded tables checked: ${tableRows.size}`);
  console.log(`Seed rows checked: ${allRows.length}`);
}

for (const warning of warnings) {
  console.warn(`WARN: ${warning}`);
}

if (errors.length > 0) {
  for (const error of errors) {
    console.error(`ERROR: ${error}`);
  }
  process.exit(1);
}

console.log("Seed file audit passed.");
