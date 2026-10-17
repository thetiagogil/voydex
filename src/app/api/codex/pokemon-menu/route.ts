import { type NextRequest, NextResponse } from "next/server";

import { getPokemonDetailPokemonMenuBySlug } from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-menu-query";

export const dynamic = "force-dynamic";

const getIntegerSearchParam = (request: NextRequest, key: string) => {
  const value = request.nextUrl.searchParams.get(key);

  if (!value) {
    return undefined;
  }

  const numberValue = Number(value);

  return Number.isFinite(numberValue) ? numberValue : undefined;
};

/* The species picker's Pokémon for one version group (`?versionGroup=swsh`). */
export const GET = async (request: NextRequest) => {
  const versionGroupSlug = request.nextUrl.searchParams.get("versionGroup");
  const limit = getIntegerSearchParam(request, "limit");
  const offset = getIntegerSearchParam(request, "offset");
  const query = request.nextUrl.searchParams.get("q") ?? undefined;

  if (!versionGroupSlug) {
    return NextResponse.json(
      { error: "Missing version group slug." },
      { status: 400 },
    );
  }

  try {
    const pokemonPage = await getPokemonDetailPokemonMenuBySlug(
      versionGroupSlug,
      { limit, offset, query },
    );

    if (!pokemonPage) {
      return NextResponse.json(
        { error: "Version group not found." },
        { status: 404 },
      );
    }

    return NextResponse.json(pokemonPage);
  } catch {
    return NextResponse.json(
      { error: "Unable to load Pokémon menu." },
      { status: 500 },
    );
  }
};
