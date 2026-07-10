import { createHash } from "node:crypto";
import { readFileSync } from "node:fs";
import path from "node:path";
import {
  pokemonAvailabilityRowLabel,
  scopeOperation,
} from "./availability.mjs";
import { seedsRoot } from "../context.mjs";
import {
  addCompositeDuplicateErrors,
  assertContiguousSortOrder,
  collectVersionGroupClosureIds,
  mapRowsByColumn,
  normalizeDisplayTextForSourceFingerprint,
  relative,
} from "../core.mjs";
import { expectedKnownEvolutionMoveSlugs } from "../expectations.mjs";

export const pokeApiEvolutionSpeciesPairKeys = [
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

export const acceptedEvolutionSourceDisagreementPairKeys = new Set([
  // PokeAPI models Phione -> Manaphy as an evolution-chain edge; curated sources treat it as breeding-only.
  "489:490",
]);

export function evolutionEdgeRowLabel(row) {
  return `${row.from_species_id}/${row.from_form_id}->${row.to_species_id}/${row.to_form_id}`;
}

export function evolutionEdgeNaturalKey(row) {
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

export function assertPokemonEvolutionEdgeRows(context, tableRows) {
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
    context.errors.push(
      `reference.pokemon_evolution_edges: expected 576 curated evolution edge rows, got ${edgeRows.length}.`,
    );
  }
  assertContiguousSortOrder(
    context,
    "reference.pokemon_evolution_edges",
    edgeRows,
  );
  addCompositeDuplicateErrors(
    context,
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
      context.errors.push(
        `reference.pokemon_evolution_edges: missing source-audited species pair ${pairKey}.`,
      );
    }
  }
  for (const pairKey of actualEvolutionSpeciesPairKeys) {
    if (!expectedEvolutionSpeciesPairKeys.has(pairKey)) {
      context.errors.push(
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
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} cannot evolve a form into itself.`,
      );
    }
    if (!speciesIds.has(row.from_species_id)) {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded from_species_id ${row.from_species_id}.`,
      );
    }
    if (!speciesIds.has(row.to_species_id)) {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded to_species_id ${row.to_species_id}.`,
      );
    }
    if (!formKeys.has(`${row.from_species_id}/${row.from_form_id}`)) {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded from species/form ${row.from_species_id}/${row.from_form_id}.`,
      );
    }
    if (!formKeys.has(`${row.to_species_id}/${row.to_form_id}`)) {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded to species/form ${row.to_species_id}/${row.to_form_id}.`,
      );
    }
    if (!generationIds.has(row.introduced_generation_id)) {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded introduced_generation_id ${row.introduced_generation_id}.`,
      );
    }
    if (!methodsById.has(row.evolution_method_id)) {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded evolution_method_id ${row.evolution_method_id}.`,
      );
    }
    if (
      row.version_group_id !== null &&
      !versionGroupsById.has(row.version_group_id)
    ) {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded version_group_id ${row.version_group_id}.`,
      );
    }
    if (row.item_id !== null && !itemsById.has(row.item_id)) {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded item_id ${row.item_id}.`,
      );
    }
    if (row.held_item_id !== null && !itemsById.has(row.held_item_id)) {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded held_item_id ${row.held_item_id}.`,
      );
    }
    if (row.known_move_id !== null && !movesById.has(row.known_move_id)) {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded known_move_id ${row.known_move_id}.`,
      );
    }
    if (row.known_type_id !== null && !typesById.has(row.known_type_id)) {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} references unseeded known_type_id ${row.known_type_id}.`,
      );
    }
    if (row.condition_data !== null) {
      let conditionData = null;
      try {
        conditionData = JSON.parse(row.condition_data);
      } catch {
        context.errors.push(
          `${relative(filePath)}: evolution edge ${label} condition_data is not valid JSON.`,
        );
      }
      if (
        conditionData !== null &&
        typeof conditionData === "object" &&
        !Array.isArray(conditionData) &&
        Object.hasOwn(conditionData, "base_form")
      ) {
        context.errors.push(
          `${relative(filePath)}: evolution edge ${label} condition_data must not store redundant source base_form; use from_form_id.`,
        );
      }
      if (
        conditionData !== null &&
        typeof conditionData === "object" &&
        !Array.isArray(conditionData)
      ) {
        if (Object.hasOwn(conditionData, "source")) {
          context.errors.push(
            `${relative(filePath)}: evolution edge ${label} condition_data must not store source/provenance fields; keep provenance in seed comments and audit docs.`,
          );
        }
        if (
          conditionData.source_trigger === "manual-curated" ||
          JSON.stringify(conditionData).includes("manual-curated")
        ) {
          context.errors.push(
            `${relative(filePath)}: evolution edge ${label} condition_data must store product mechanics, not manual-curated provenance markers.`,
          );
        }
      }
    }
    const methodSlug = methodsById.get(row.evolution_method_id)?.slug;
    if (row.item_id !== null && methodSlug !== "item") {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} has item_id but method is ${methodSlug}.`,
      );
    }
    if (
      row.held_item_id !== null &&
      !allowedHeldItemMethodSlugs.has(methodSlug)
    ) {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} has held_item_id but method is ${methodSlug}.`,
      );
    }
    if (row.gender !== null && !allowedGenderMethodSlugs.has(methodSlug)) {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} has gender ${row.gender} but method is ${methodSlug}.`,
      );
    }
    if (
      row.known_move_id !== null &&
      !allowedKnownMoveMethodSlugs.has(methodSlug)
    ) {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} has known_move_id but method is ${methodSlug}.`,
      );
    }
    const fromForm = formsById.get(row.from_form_id);
    const toForm = formsById.get(row.to_form_id);
    if (fromForm && fromForm.species_id !== row.from_species_id) {
      context.errors.push(
        `${relative(filePath)}: evolution edge ${label} from_form_id ${row.from_form_id} belongs to species ${fromForm.species_id}, not ${row.from_species_id}.`,
      );
    }
    if (toForm && toForm.species_id !== row.to_species_id) {
      context.errors.push(
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
    context.errors.push(
      `reference.pokemon_evolution_edges: expected ${gen1SourceVerifiedEvolutionEdges.length} source-verified Generation I evolution rows, got ${gen1EdgeRows.length}.`,
    );
  }
  for (const expected of gen1SourceVerifiedEvolutionEdges) {
    if (
      !gen1EdgeRows.some((edge) => sourceVerifiedEdgeMatches(edge, expected))
    ) {
      context.errors.push(
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
      context.errors.push(
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
    context.errors.push(
      `reference.pokemon_evolution_edges: expected ${gen2SourceVerifiedEvolutionEdges.length} source-verified Generation II evolution rows, got ${gen2EdgeRows.length}.`,
    );
  }
  for (const expected of gen2SourceVerifiedEvolutionEdges) {
    if (
      !gen2EdgeRows.some((edge) => sourceVerifiedEdgeMatches(edge, expected))
    ) {
      context.errors.push(
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
      context.errors.push(
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
    context.errors.push(
      `reference.pokemon_evolution_edges: expected ${gen3SourceVerifiedEvolutionEdges.length} source-verified Generation III evolution rows, got ${gen3EdgeRows.length}.`,
    );
  }
  for (const expected of gen3SourceVerifiedEvolutionEdges) {
    if (
      !gen3EdgeRows.some((edge) => sourceVerifiedEdgeMatches(edge, expected))
    ) {
      context.errors.push(
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
      context.errors.push(
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
    context.errors.push(
      `reference.pokemon_evolution_edges: expected ${gen4SourceVerifiedEvolutionEdges.length} source-verified Generation IV evolution rows, got ${gen4EdgeRows.length}.`,
    );
  }
  for (const expected of gen4SourceVerifiedEvolutionEdges) {
    if (
      !gen4EdgeRows.some((edge) => sourceVerifiedEdgeMatches(edge, expected))
    ) {
      context.errors.push(
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
      context.errors.push(
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
    context.errors.push(
      `reference.pokemon_evolution_edges: expected ${gen5SourceVerifiedEvolutionEdges.length} source-verified Generation V evolution rows, got ${gen5EdgeRows.length}.`,
    );
  }
  for (const expected of gen5SourceVerifiedEvolutionEdges) {
    if (
      !gen5EdgeRows.some((edge) => sourceVerifiedEdgeMatches(edge, expected))
    ) {
      context.errors.push(
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
      context.errors.push(
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
    context.errors.push(
      `reference.pokemon_evolution_edges: expected ${gen6SourceVerifiedEvolutionEdges.length} source-verified Generation VI evolution rows, got ${gen6EdgeRows.length}.`,
    );
  }
  for (const expected of gen6SourceVerifiedEvolutionEdges) {
    if (
      !gen6EdgeRows.some((edge) => sourceVerifiedEdgeMatches(edge, expected))
    ) {
      context.errors.push(
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
      context.errors.push(
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
    context.errors.push(
      `reference.pokemon_evolution_edges: expected ${gen7SourceVerifiedEvolutionEdges.length} source-verified Generation VII evolution rows, got ${gen7EdgeRows.length}.`,
    );
  }
  for (const expected of gen7SourceVerifiedEvolutionEdges) {
    if (
      !gen7EdgeRows.some((edge) => sourceVerifiedEdgeMatches(edge, expected))
    ) {
      context.errors.push(
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
      context.errors.push(
        `reference.pokemon_evolution_edges: unexpected source-verified Generation VII edge ${evolutionEdgeRowLabel(edge)}.`,
      );
    }
  }
  const gen8EdgeRows = edgeRows
    .map(({ row }) => row)
    .filter((row) => row.introduced_generation_id === 8);
  if (gen8EdgeRows.length !== 93) {
    context.errors.push(
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
    context.errors.push(
      `reference.pokemon_evolution_edges: Generation VIII source-verified rowset fingerprint changed (${gen8SeedFingerprint}).`,
    );
  }
  const gen9EdgeRows = edgeRows
    .map(({ row }) => row)
    .filter((row) => row.introduced_generation_id === 9);
  if (gen9EdgeRows.length !== 56) {
    context.errors.push(
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
    context.errors.push(
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
      context.errors.push(
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
      context.errors.push(
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
        context.errors.push(
          `${relative(filePath)}: Pokémon availability row ${pokemonAvailabilityRowLabel(row)} is evolution-based, but none of its item-based evolution paths has required item availability in this content scope or an ancestor scope. Required item path(s): ${itemSummaries}.`,
        );
      }
    }
  }
}
