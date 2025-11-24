import { getPokemonSpecies } from "@/services/pokemon";
import { NextRequest, NextResponse } from "next/server";

export async function GET(request: NextRequest) {
  const searchParams = request.nextUrl.searchParams;
  const generationId = searchParams.get("generation");

  const { data, error } = await getPokemonSpecies(
    generationId ? parseInt(generationId) : undefined,
  );

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json(data);
}
