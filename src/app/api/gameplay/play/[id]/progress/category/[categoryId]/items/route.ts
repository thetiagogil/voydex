import { getPlayProgressItems } from "@/services/gameplay/play-progress-items";
import { NextResponse } from "next/server";

export async function GET(
  _req: Request,
  { params }: { params: Promise<{ id: string; categoryId: string }> },
) {
  const { id: playId, categoryId } = await params;

  if (Number.isNaN(Number(categoryId))) {
    return NextResponse.json({ error: "Invalid category id" }, { status: 400 });
  }

  const { data, error } = await getPlayProgressItems(
    playId,
    Number(categoryId),
  );
  if (error) {
    return NextResponse.json(
      { error: error.message ?? String(error) },
      { status: 500 },
    );
  }
  return NextResponse.json(data);
}
