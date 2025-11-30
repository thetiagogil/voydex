import { uncheckPokemonCaughtBatch } from "@/services/gameplay/play-pokemon-caught-uncheck-batch";
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

    const result = await uncheckPokemonCaughtBatch(playId, speciesIds);

    if (result.error) {
      return NextResponse.json(
        { error: String(result.error) },
        { status: 500 },
      );
    }

    return NextResponse.json({ success: true, data: result.data });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}
