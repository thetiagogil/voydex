import { getPlayCompletion } from "@/services/gameplay/play-completion";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id } = await params;
  const { data, error } = await getPlayCompletion(id);

  if (error || !data) {
    return NextResponse.json(
      { error: "Failed to compute completion" },
      { status: 500 },
    );
  }

  return NextResponse.json(data);
}
