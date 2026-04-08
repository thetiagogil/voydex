import { unmarkPokedexEntriesBulk } from "@/services/gameplay/play-pokedex";
import { NextRequest, NextResponse } from "next/server";

export async function DELETE(
  request: NextRequest,
  context: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await context.params;
    const body = await request.json();
    const { pokedexEntryIds } = body;

    if (!pokedexEntryIds || !Array.isArray(pokedexEntryIds)) {
      return NextResponse.json(
        { error: "pokedexEntryIds array is required" },
        { status: 400 },
      );
    }

    await unmarkPokedexEntriesBulk(playId, pokedexEntryIds);

    return NextResponse.json({ success: true });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
