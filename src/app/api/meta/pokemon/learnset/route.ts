import { getPokemonLearnset } from "@/services/meta/pokemon-game";
import { NextRequest, NextResponse } from "next/server";

export async function GET(request: NextRequest) {
  const searchParams = request.nextUrl.searchParams;
  const speciesId = searchParams.get("speciesId");
  const formId = searchParams.get("formId");
  const versionGroupId = searchParams.get("versionGroupId");

  if (!speciesId || !formId || !versionGroupId) {
    return NextResponse.json(
      { error: "speciesId, formId, and versionGroupId are required" },
      { status: 400 },
    );
  }

  const { data, error } = await getPokemonLearnset(
    parseInt(speciesId),
    parseInt(formId),
    parseInt(versionGroupId),
  );

  if (error) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }

  return NextResponse.json(data);
}
