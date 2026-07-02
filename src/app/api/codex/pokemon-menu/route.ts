import { type NextRequest, NextResponse } from "next/server";

import { getPokemonDetailGamePokemonMenuBySlug } from "@/modules/codex/features/pokemon/detail/server/pokemon-detail-menu-query";

export const dynamic = "force-dynamic";

const getIntegerSearchParam = (request: NextRequest, key: string) => {
  const value = request.nextUrl.searchParams.get(key);

  if (!value) {
    return undefined;
  }

  const numberValue = Number(value);

  return Number.isFinite(numberValue) ? numberValue : undefined;
};

export const GET = async (request: NextRequest) => {
  const gameSlug = request.nextUrl.searchParams.get("game");
  const limit = getIntegerSearchParam(request, "limit");
  const offset = getIntegerSearchParam(request, "offset");
  const query = request.nextUrl.searchParams.get("q") ?? undefined;

  if (!gameSlug) {
    return NextResponse.json({ error: "Missing game slug." }, { status: 400 });
  }

  try {
    const pokemonPage = await getPokemonDetailGamePokemonMenuBySlug(gameSlug, {
      limit,
      offset,
      query,
    });

    if (!pokemonPage) {
      return NextResponse.json({ error: "Game not found." }, { status: 404 });
    }

    return NextResponse.json(pokemonPage);
  } catch {
    return NextResponse.json(
      { error: "Unable to load Pokémon menu." },
      { status: 500 },
    );
  }
};
