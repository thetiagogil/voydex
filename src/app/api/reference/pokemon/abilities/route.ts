import { getPokemonAbilities } from "@/services/reference/pokemon-game";
import { NextRequest, NextResponse } from "next/server";

export async function GET(request: NextRequest) {
  const searchParams = request.nextUrl.searchParams;
  const speciesId = searchParams.get("speciesId");
  const formId = searchParams.get("formId");
  const generationId = searchParams.get("generationId");

  if (!speciesId || !formId || !generationId) {
    return NextResponse.json(
      { error: "speciesId, formId, and generationId are required" },
      { status: 400 },
    );
  }

  const { data, error } = await getPokemonAbilities(
    parseInt(speciesId),
    parseInt(formId),
    parseInt(generationId),
  );

  if (error) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }

  return NextResponse.json(data);
}
