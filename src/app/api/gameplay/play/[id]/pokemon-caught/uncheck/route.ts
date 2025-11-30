import { uncheckPlayPokemonCaught as uncheckPokemonCaught } from "@/services/gameplay/play-pokemon-caught-uncheck";
import { NextRequest, NextResponse } from "next/server";

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { searchParams } = new URL(request.url);
    const speciesId = searchParams.get("speciesId");
    const formId = searchParams.get("formId");

    if (!speciesId) {
      return NextResponse.json(
        { error: "Species ID is required" },
        { status: 400 },
      );
    }

    const result = await uncheckPokemonCaught(
      playId,
      parseInt(speciesId),
      formId ? parseInt(formId) : 0,
    );
    return NextResponse.json(result);
  } catch (error: unknown) {
    console.error("Error unchecking Pokémon as caught:", error);
    return NextResponse.json(
      {
        error:
          error instanceof Error
            ? error.message
            : "Failed to uncheck Pokémon as caught",
      },
      { status: 500 },
    );
  }
}
