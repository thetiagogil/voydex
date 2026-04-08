import { unmarkPokedexEntry } from "@/services/gameplay/play-pokedex";
import { NextRequest, NextResponse } from "next/server";

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { searchParams } = new URL(request.url);
    const pokedexEntryId = searchParams.get("pokedexEntryId");

    if (!pokedexEntryId) {
      return NextResponse.json(
        { error: "pokedexEntryId is required" },
        { status: 400 },
      );
    }

    const result = await unmarkPokedexEntry(playId, parseInt(pokedexEntryId));
    return NextResponse.json(result);
  } catch (error: unknown) {
    return NextResponse.json(
      {
        error:
          error instanceof Error
            ? error.message
            : "Failed to unmark Pokédex entry",
      },
      { status: 500 },
    );
  }
}
