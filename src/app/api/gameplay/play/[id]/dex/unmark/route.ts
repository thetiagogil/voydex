import { unmarkDexEntry } from "@/services/gameplay/play-dex";
import { NextRequest, NextResponse } from "next/server";

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { searchParams } = new URL(request.url);
    const dexEntryId = searchParams.get("dexEntryId");

    if (!dexEntryId) {
      return NextResponse.json(
        { error: "dexEntryId is required" },
        { status: 400 },
      );
    }

    const result = await unmarkDexEntry(playId, parseInt(dexEntryId));
    return NextResponse.json(result);
  } catch (error: unknown) {
    return NextResponse.json(
      {
        error:
          error instanceof Error ? error.message : "Failed to unmark dex entry",
      },
      { status: 500 },
    );
  }
}
