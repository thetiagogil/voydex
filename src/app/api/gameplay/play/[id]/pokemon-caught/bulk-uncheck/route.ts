import { uncheckPokemonCaughtBulk } from "@/services/gameplay/play-dex";
import { NextRequest, NextResponse } from "next/server";

export async function DELETE(
  request: NextRequest,
  context: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await context.params;
    const body = await request.json();
    const { speciesIds } = body;

    if (!speciesIds || !Array.isArray(speciesIds)) {
      return NextResponse.json(
        { error: "speciesIds array is required" },
        { status: 400 },
      );
    }

    await uncheckPokemonCaughtBulk(playId, speciesIds);

    return NextResponse.json({ success: true });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
