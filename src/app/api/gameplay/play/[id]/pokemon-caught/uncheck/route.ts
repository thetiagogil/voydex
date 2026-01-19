import { uncheckPokemonCaught } from "@/services/gameplay/play-dex";
import { NextRequest, NextResponse } from "next/server";

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { searchParams } = new URL(request.url);
    const speciesId = searchParams.get("speciesId");

    if (!speciesId) {
      return NextResponse.json(
        { error: "Species ID is required" },
        { status: 400 },
      );
    }

    const result = await uncheckPokemonCaught(playId, parseInt(speciesId));
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
