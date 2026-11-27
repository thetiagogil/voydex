import { CornerBubble, SlotMark } from "@/shared/components/corner-bubble";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import {
  TipBody,
  TipCard,
  TipHead,
  TipRow,
  TipRows,
} from "@/shared/components/tip-parts";

/*
 * A Team Planner pool tile's marks, inside it so they lift with it (the
 * list's sections clip anything outside), side by side top-right: the "!"
 * of what adding it would mean holds the corner, and on a tile in the team
 * its slot number stands to the left of it, so a pick never moves the "!".
 */
export const PoolTileMarks = ({
  name,
  notes,
  slot,
}: {
  /* The Pokémon's full name, which the "!" names. */
  name: string;
  notes: string[];
  slot: number | undefined;
}) =>
  notes.length || slot !== undefined ? (
    <CornerBubble corner="inside-top-right">
      {slot !== undefined ? <SlotMark>{slot}</SlotMark> : null}
      {notes.length ? (
        <ExplanatoryTip
          triggerVariant="raised"
          triggerTone="warn"
          triggerLabel={`${name}: ${notes[0]}`}
          content={
            <TipCard tone="warn" width="sm">
              <TipHead
                name={name}
                sub={
                  notes.length === 1
                    ? "One thing to check"
                    : `${notes.length} things to check`
                }
              />
              <TipBody>
                <TipRows>
                  {notes.map((note) => (
                    <TipRow key={note} name={note} tone="warn" />
                  ))}
                </TipRows>
              </TipBody>
            </TipCard>
          }
        />
      ) : null}
    </CornerBubble>
  ) : null;
