-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Pokedex form pages per game (Unown, Shellos/Gastrodon, Deerling/Sawsbuck, Vivillon, Flabebe family, Furfrou, Pikachu caps, Alcremie, Keldeo, Zarude, Gimmighoul, Pichu).
-- Cross-check: PokeAPI pokemon-form records for names, ids and images.
-- Scope note: persistent forms that are caught and kept (variants) or switched on a save (forms), purely cosmetic ones included. Alcremie is modelled by cream only; its sweet is a per-Pokemon detail. Cosplay Pikachu and Minior colours are variants; Battle Bond Greninja is a variant that becomes Ash-Greninja in battle. Power Construct Zygarde needs no extra form: Zygarde (Complete Forme) already carries it.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_availability
-- Scope: cosmetic and other persistent forms. Each follows its default's rows in the games it exists in; event Pikachu, Spiky-eared Pichu, Roaming Gimmighoul and Vivillon's transferred patterns have their own.
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0201 Unown (B)
  (201, 20101, 3, NULL, 1, NULL),
  -- #0201 Unown (B)
  (201, 20101, 4, NULL, 1, NULL),
  -- #0201 Unown (B)
  (201, 20101, 5, NULL, 12, NULL),
  -- #0201 Unown (B)
  (201, 20101, 6, NULL, 1, NULL),
  -- #0201 Unown (B)
  (201, 20101, 7, NULL, 12, NULL),
  -- #0201 Unown (B)
  (201, 20101, 8, NULL, 1, NULL),
  -- #0201 Unown (B)
  (201, 20101, 9, NULL, 1, NULL),
  -- #0201 Unown (B)
  (201, 20101, 10, NULL, 1, NULL),
  -- #0201 Unown (B)
  (201, 20101, 11, NULL, 13, NULL),
  -- #0201 Unown (B)
  (201, 20101, 12, NULL, 13, NULL),
  -- #0201 Unown (B)
  (201, 20101, 13, NULL, 13, NULL),
  -- #0201 Unown (B)
  (201, 20101, 14, NULL, 1, NULL),
  -- #0201 Unown (B)
  (201, 20101, 15, NULL, 13, NULL),
  -- #0201 Unown (B)
  (201, 20101, 16, NULL, 13, NULL),
  -- #0201 Unown (B)
  (201, 20101, 21, NULL, 1, NULL),
  -- #0201 Unown (B)
  (201, 20101, 22, NULL, 2, NULL),
  -- #0201 Unown (C)
  (201, 20102, 3, NULL, 1, NULL),
  -- #0201 Unown (C)
  (201, 20102, 4, NULL, 1, NULL),
  -- #0201 Unown (C)
  (201, 20102, 5, NULL, 12, NULL),
  -- #0201 Unown (C)
  (201, 20102, 6, NULL, 1, NULL),
  -- #0201 Unown (C)
  (201, 20102, 7, NULL, 12, NULL),
  -- #0201 Unown (C)
  (201, 20102, 8, NULL, 1, NULL),
  -- #0201 Unown (C)
  (201, 20102, 9, NULL, 1, NULL),
  -- #0201 Unown (C)
  (201, 20102, 10, NULL, 1, NULL),
  -- #0201 Unown (C)
  (201, 20102, 11, NULL, 13, NULL),
  -- #0201 Unown (C)
  (201, 20102, 12, NULL, 13, NULL),
  -- #0201 Unown (C)
  (201, 20102, 13, NULL, 13, NULL),
  -- #0201 Unown (C)
  (201, 20102, 14, NULL, 1, NULL),
  -- #0201 Unown (C)
  (201, 20102, 15, NULL, 13, NULL),
  -- #0201 Unown (C)
  (201, 20102, 16, NULL, 13, NULL),
  -- #0201 Unown (C)
  (201, 20102, 21, NULL, 1, NULL),
  -- #0201 Unown (C)
  (201, 20102, 22, NULL, 2, NULL),
  -- #0201 Unown (D)
  (201, 20103, 3, NULL, 1, NULL),
  -- #0201 Unown (D)
  (201, 20103, 4, NULL, 1, NULL),
  -- #0201 Unown (D)
  (201, 20103, 5, NULL, 12, NULL),
  -- #0201 Unown (D)
  (201, 20103, 6, NULL, 1, NULL),
  -- #0201 Unown (D)
  (201, 20103, 7, NULL, 12, NULL),
  -- #0201 Unown (D)
  (201, 20103, 8, NULL, 1, NULL),
  -- #0201 Unown (D)
  (201, 20103, 9, NULL, 1, NULL),
  -- #0201 Unown (D)
  (201, 20103, 10, NULL, 1, NULL),
  -- #0201 Unown (D)
  (201, 20103, 11, NULL, 13, NULL),
  -- #0201 Unown (D)
  (201, 20103, 12, NULL, 13, NULL),
  -- #0201 Unown (D)
  (201, 20103, 13, NULL, 13, NULL),
  -- #0201 Unown (D)
  (201, 20103, 14, NULL, 1, NULL),
  -- #0201 Unown (D)
  (201, 20103, 15, NULL, 13, NULL),
  -- #0201 Unown (D)
  (201, 20103, 16, NULL, 13, NULL),
  -- #0201 Unown (D)
  (201, 20103, 21, NULL, 1, NULL),
  -- #0201 Unown (D)
  (201, 20103, 22, NULL, 2, NULL),
  -- #0201 Unown (E)
  (201, 20104, 3, NULL, 1, NULL),
  -- #0201 Unown (E)
  (201, 20104, 4, NULL, 1, NULL),
  -- #0201 Unown (E)
  (201, 20104, 5, NULL, 12, NULL),
  -- #0201 Unown (E)
  (201, 20104, 6, NULL, 1, NULL),
  -- #0201 Unown (E)
  (201, 20104, 7, NULL, 12, NULL),
  -- #0201 Unown (E)
  (201, 20104, 8, NULL, 1, NULL),
  -- #0201 Unown (E)
  (201, 20104, 9, NULL, 1, NULL),
  -- #0201 Unown (E)
  (201, 20104, 10, NULL, 1, NULL),
  -- #0201 Unown (E)
  (201, 20104, 11, NULL, 13, NULL),
  -- #0201 Unown (E)
  (201, 20104, 12, NULL, 13, NULL),
  -- #0201 Unown (E)
  (201, 20104, 13, NULL, 13, NULL),
  -- #0201 Unown (E)
  (201, 20104, 14, NULL, 1, NULL),
  -- #0201 Unown (E)
  (201, 20104, 15, NULL, 13, NULL),
  -- #0201 Unown (E)
  (201, 20104, 16, NULL, 13, NULL),
  -- #0201 Unown (E)
  (201, 20104, 21, NULL, 1, NULL),
  -- #0201 Unown (E)
  (201, 20104, 22, NULL, 2, NULL),
  -- #0201 Unown (F)
  (201, 20105, 3, NULL, 1, NULL),
  -- #0201 Unown (F)
  (201, 20105, 4, NULL, 1, NULL),
  -- #0201 Unown (F)
  (201, 20105, 5, NULL, 12, NULL),
  -- #0201 Unown (F)
  (201, 20105, 6, NULL, 1, NULL),
  -- #0201 Unown (F)
  (201, 20105, 7, NULL, 12, NULL),
  -- #0201 Unown (F)
  (201, 20105, 8, NULL, 1, NULL),
  -- #0201 Unown (F)
  (201, 20105, 9, NULL, 1, NULL),
  -- #0201 Unown (F)
  (201, 20105, 10, NULL, 1, NULL),
  -- #0201 Unown (F)
  (201, 20105, 11, NULL, 13, NULL),
  -- #0201 Unown (F)
  (201, 20105, 12, NULL, 13, NULL),
  -- #0201 Unown (F)
  (201, 20105, 13, NULL, 13, NULL),
  -- #0201 Unown (F)
  (201, 20105, 14, NULL, 1, NULL),
  -- #0201 Unown (F)
  (201, 20105, 15, NULL, 13, NULL),
  -- #0201 Unown (F)
  (201, 20105, 16, NULL, 13, NULL),
  -- #0201 Unown (F)
  (201, 20105, 21, NULL, 1, NULL),
  -- #0201 Unown (F)
  (201, 20105, 22, NULL, 2, NULL),
  -- #0201 Unown (G)
  (201, 20106, 3, NULL, 1, NULL),
  -- #0201 Unown (G)
  (201, 20106, 4, NULL, 1, NULL),
  -- #0201 Unown (G)
  (201, 20106, 5, NULL, 12, NULL),
  -- #0201 Unown (G)
  (201, 20106, 6, NULL, 1, NULL),
  -- #0201 Unown (G)
  (201, 20106, 7, NULL, 12, NULL),
  -- #0201 Unown (G)
  (201, 20106, 8, NULL, 1, NULL),
  -- #0201 Unown (G)
  (201, 20106, 9, NULL, 1, NULL),
  -- #0201 Unown (G)
  (201, 20106, 10, NULL, 1, NULL),
  -- #0201 Unown (G)
  (201, 20106, 11, NULL, 13, NULL),
  -- #0201 Unown (G)
  (201, 20106, 12, NULL, 13, NULL),
  -- #0201 Unown (G)
  (201, 20106, 13, NULL, 13, NULL),
  -- #0201 Unown (G)
  (201, 20106, 14, NULL, 1, NULL),
  -- #0201 Unown (G)
  (201, 20106, 15, NULL, 13, NULL),
  -- #0201 Unown (G)
  (201, 20106, 16, NULL, 13, NULL),
  -- #0201 Unown (G)
  (201, 20106, 21, NULL, 1, NULL),
  -- #0201 Unown (G)
  (201, 20106, 22, NULL, 2, NULL),
  -- #0201 Unown (H)
  (201, 20107, 3, NULL, 1, NULL),
  -- #0201 Unown (H)
  (201, 20107, 4, NULL, 1, NULL),
  -- #0201 Unown (H)
  (201, 20107, 5, NULL, 12, NULL),
  -- #0201 Unown (H)
  (201, 20107, 6, NULL, 1, NULL),
  -- #0201 Unown (H)
  (201, 20107, 7, NULL, 12, NULL),
  -- #0201 Unown (H)
  (201, 20107, 8, NULL, 1, NULL),
  -- #0201 Unown (H)
  (201, 20107, 9, NULL, 1, NULL),
  -- #0201 Unown (H)
  (201, 20107, 10, NULL, 1, NULL),
  -- #0201 Unown (H)
  (201, 20107, 11, NULL, 13, NULL),
  -- #0201 Unown (H)
  (201, 20107, 12, NULL, 13, NULL),
  -- #0201 Unown (H)
  (201, 20107, 13, NULL, 13, NULL),
  -- #0201 Unown (H)
  (201, 20107, 14, NULL, 1, NULL),
  -- #0201 Unown (H)
  (201, 20107, 15, NULL, 13, NULL),
  -- #0201 Unown (H)
  (201, 20107, 16, NULL, 13, NULL),
  -- #0201 Unown (H)
  (201, 20107, 21, NULL, 1, NULL),
  -- #0201 Unown (H)
  (201, 20107, 22, NULL, 2, NULL),
  -- #0201 Unown (I)
  (201, 20108, 3, NULL, 1, NULL),
  -- #0201 Unown (I)
  (201, 20108, 4, NULL, 1, NULL),
  -- #0201 Unown (I)
  (201, 20108, 5, NULL, 12, NULL),
  -- #0201 Unown (I)
  (201, 20108, 6, NULL, 1, NULL),
  -- #0201 Unown (I)
  (201, 20108, 7, NULL, 12, NULL),
  -- #0201 Unown (I)
  (201, 20108, 8, NULL, 1, NULL),
  -- #0201 Unown (I)
  (201, 20108, 9, NULL, 1, NULL),
  -- #0201 Unown (I)
  (201, 20108, 10, NULL, 1, NULL),
  -- #0201 Unown (I)
  (201, 20108, 11, NULL, 13, NULL),
  -- #0201 Unown (I)
  (201, 20108, 12, NULL, 13, NULL),
  -- #0201 Unown (I)
  (201, 20108, 13, NULL, 13, NULL),
  -- #0201 Unown (I)
  (201, 20108, 14, NULL, 1, NULL),
  -- #0201 Unown (I)
  (201, 20108, 15, NULL, 13, NULL),
  -- #0201 Unown (I)
  (201, 20108, 16, NULL, 13, NULL),
  -- #0201 Unown (I)
  (201, 20108, 21, NULL, 1, NULL),
  -- #0201 Unown (I)
  (201, 20108, 22, NULL, 2, NULL),
  -- #0201 Unown (J)
  (201, 20109, 3, NULL, 1, NULL),
  -- #0201 Unown (J)
  (201, 20109, 4, NULL, 1, NULL),
  -- #0201 Unown (J)
  (201, 20109, 5, NULL, 12, NULL),
  -- #0201 Unown (J)
  (201, 20109, 6, NULL, 1, NULL),
  -- #0201 Unown (J)
  (201, 20109, 7, NULL, 12, NULL),
  -- #0201 Unown (J)
  (201, 20109, 8, NULL, 1, NULL),
  -- #0201 Unown (J)
  (201, 20109, 9, NULL, 1, NULL),
  -- #0201 Unown (J)
  (201, 20109, 10, NULL, 1, NULL),
  -- #0201 Unown (J)
  (201, 20109, 11, NULL, 13, NULL),
  -- #0201 Unown (J)
  (201, 20109, 12, NULL, 13, NULL),
  -- #0201 Unown (J)
  (201, 20109, 13, NULL, 13, NULL),
  -- #0201 Unown (J)
  (201, 20109, 14, NULL, 1, NULL),
  -- #0201 Unown (J)
  (201, 20109, 15, NULL, 13, NULL),
  -- #0201 Unown (J)
  (201, 20109, 16, NULL, 13, NULL),
  -- #0201 Unown (J)
  (201, 20109, 21, NULL, 1, NULL),
  -- #0201 Unown (J)
  (201, 20109, 22, NULL, 2, NULL),
  -- #0201 Unown (K)
  (201, 20110, 3, NULL, 1, NULL),
  -- #0201 Unown (K)
  (201, 20110, 4, NULL, 1, NULL),
  -- #0201 Unown (K)
  (201, 20110, 5, NULL, 12, NULL),
  -- #0201 Unown (K)
  (201, 20110, 6, NULL, 1, NULL),
  -- #0201 Unown (K)
  (201, 20110, 7, NULL, 12, NULL),
  -- #0201 Unown (K)
  (201, 20110, 8, NULL, 1, NULL),
  -- #0201 Unown (K)
  (201, 20110, 9, NULL, 1, NULL),
  -- #0201 Unown (K)
  (201, 20110, 10, NULL, 1, NULL),
  -- #0201 Unown (K)
  (201, 20110, 11, NULL, 13, NULL),
  -- #0201 Unown (K)
  (201, 20110, 12, NULL, 13, NULL),
  -- #0201 Unown (K)
  (201, 20110, 13, NULL, 13, NULL),
  -- #0201 Unown (K)
  (201, 20110, 14, NULL, 1, NULL),
  -- #0201 Unown (K)
  (201, 20110, 15, NULL, 13, NULL),
  -- #0201 Unown (K)
  (201, 20110, 16, NULL, 13, NULL),
  -- #0201 Unown (K)
  (201, 20110, 21, NULL, 1, NULL),
  -- #0201 Unown (K)
  (201, 20110, 22, NULL, 2, NULL),
  -- #0201 Unown (L)
  (201, 20111, 3, NULL, 1, NULL),
  -- #0201 Unown (L)
  (201, 20111, 4, NULL, 1, NULL),
  -- #0201 Unown (L)
  (201, 20111, 5, NULL, 12, NULL),
  -- #0201 Unown (L)
  (201, 20111, 6, NULL, 1, NULL),
  -- #0201 Unown (L)
  (201, 20111, 7, NULL, 12, NULL),
  -- #0201 Unown (L)
  (201, 20111, 8, NULL, 1, NULL),
  -- #0201 Unown (L)
  (201, 20111, 9, NULL, 1, NULL),
  -- #0201 Unown (L)
  (201, 20111, 10, NULL, 1, NULL),
  -- #0201 Unown (L)
  (201, 20111, 11, NULL, 13, NULL),
  -- #0201 Unown (L)
  (201, 20111, 12, NULL, 13, NULL),
  -- #0201 Unown (L)
  (201, 20111, 13, NULL, 13, NULL),
  -- #0201 Unown (L)
  (201, 20111, 14, NULL, 1, NULL),
  -- #0201 Unown (L)
  (201, 20111, 15, NULL, 13, NULL),
  -- #0201 Unown (L)
  (201, 20111, 16, NULL, 13, NULL),
  -- #0201 Unown (L)
  (201, 20111, 21, NULL, 1, NULL),
  -- #0201 Unown (L)
  (201, 20111, 22, NULL, 2, NULL),
  -- #0201 Unown (M)
  (201, 20112, 3, NULL, 1, NULL),
  -- #0201 Unown (M)
  (201, 20112, 4, NULL, 1, NULL),
  -- #0201 Unown (M)
  (201, 20112, 5, NULL, 12, NULL),
  -- #0201 Unown (M)
  (201, 20112, 6, NULL, 1, NULL),
  -- #0201 Unown (M)
  (201, 20112, 7, NULL, 12, NULL),
  -- #0201 Unown (M)
  (201, 20112, 8, NULL, 1, NULL),
  -- #0201 Unown (M)
  (201, 20112, 9, NULL, 1, NULL),
  -- #0201 Unown (M)
  (201, 20112, 10, NULL, 1, NULL),
  -- #0201 Unown (M)
  (201, 20112, 11, NULL, 13, NULL),
  -- #0201 Unown (M)
  (201, 20112, 12, NULL, 13, NULL),
  -- #0201 Unown (M)
  (201, 20112, 13, NULL, 13, NULL),
  -- #0201 Unown (M)
  (201, 20112, 14, NULL, 1, NULL),
  -- #0201 Unown (M)
  (201, 20112, 15, NULL, 13, NULL),
  -- #0201 Unown (M)
  (201, 20112, 16, NULL, 13, NULL),
  -- #0201 Unown (M)
  (201, 20112, 21, NULL, 1, NULL),
  -- #0201 Unown (M)
  (201, 20112, 22, NULL, 2, NULL),
  -- #0201 Unown (N)
  (201, 20113, 3, NULL, 1, NULL),
  -- #0201 Unown (N)
  (201, 20113, 4, NULL, 1, NULL),
  -- #0201 Unown (N)
  (201, 20113, 5, NULL, 12, NULL),
  -- #0201 Unown (N)
  (201, 20113, 6, NULL, 1, NULL),
  -- #0201 Unown (N)
  (201, 20113, 7, NULL, 12, NULL),
  -- #0201 Unown (N)
  (201, 20113, 8, NULL, 1, NULL),
  -- #0201 Unown (N)
  (201, 20113, 9, NULL, 1, NULL),
  -- #0201 Unown (N)
  (201, 20113, 10, NULL, 1, NULL),
  -- #0201 Unown (N)
  (201, 20113, 11, NULL, 13, NULL),
  -- #0201 Unown (N)
  (201, 20113, 12, NULL, 13, NULL),
  -- #0201 Unown (N)
  (201, 20113, 13, NULL, 13, NULL),
  -- #0201 Unown (N)
  (201, 20113, 14, NULL, 1, NULL),
  -- #0201 Unown (N)
  (201, 20113, 15, NULL, 13, NULL),
  -- #0201 Unown (N)
  (201, 20113, 16, NULL, 13, NULL),
  -- #0201 Unown (N)
  (201, 20113, 21, NULL, 1, NULL),
  -- #0201 Unown (N)
  (201, 20113, 22, NULL, 2, NULL),
  -- #0201 Unown (O)
  (201, 20114, 3, NULL, 1, NULL),
  -- #0201 Unown (O)
  (201, 20114, 4, NULL, 1, NULL),
  -- #0201 Unown (O)
  (201, 20114, 5, NULL, 12, NULL),
  -- #0201 Unown (O)
  (201, 20114, 6, NULL, 1, NULL),
  -- #0201 Unown (O)
  (201, 20114, 7, NULL, 12, NULL),
  -- #0201 Unown (O)
  (201, 20114, 8, NULL, 1, NULL),
  -- #0201 Unown (O)
  (201, 20114, 9, NULL, 1, NULL),
  -- #0201 Unown (O)
  (201, 20114, 10, NULL, 1, NULL),
  -- #0201 Unown (O)
  (201, 20114, 11, NULL, 13, NULL),
  -- #0201 Unown (O)
  (201, 20114, 12, NULL, 13, NULL),
  -- #0201 Unown (O)
  (201, 20114, 13, NULL, 13, NULL),
  -- #0201 Unown (O)
  (201, 20114, 14, NULL, 1, NULL),
  -- #0201 Unown (O)
  (201, 20114, 15, NULL, 13, NULL),
  -- #0201 Unown (O)
  (201, 20114, 16, NULL, 13, NULL),
  -- #0201 Unown (O)
  (201, 20114, 21, NULL, 1, NULL),
  -- #0201 Unown (O)
  (201, 20114, 22, NULL, 2, NULL),
  -- #0201 Unown (P)
  (201, 20115, 3, NULL, 1, NULL),
  -- #0201 Unown (P)
  (201, 20115, 4, NULL, 1, NULL),
  -- #0201 Unown (P)
  (201, 20115, 5, NULL, 12, NULL),
  -- #0201 Unown (P)
  (201, 20115, 6, NULL, 1, NULL),
  -- #0201 Unown (P)
  (201, 20115, 7, NULL, 12, NULL),
  -- #0201 Unown (P)
  (201, 20115, 8, NULL, 1, NULL),
  -- #0201 Unown (P)
  (201, 20115, 9, NULL, 1, NULL),
  -- #0201 Unown (P)
  (201, 20115, 10, NULL, 1, NULL),
  -- #0201 Unown (P)
  (201, 20115, 11, NULL, 13, NULL),
  -- #0201 Unown (P)
  (201, 20115, 12, NULL, 13, NULL),
  -- #0201 Unown (P)
  (201, 20115, 13, NULL, 13, NULL),
  -- #0201 Unown (P)
  (201, 20115, 14, NULL, 1, NULL),
  -- #0201 Unown (P)
  (201, 20115, 15, NULL, 13, NULL),
  -- #0201 Unown (P)
  (201, 20115, 16, NULL, 13, NULL),
  -- #0201 Unown (P)
  (201, 20115, 21, NULL, 1, NULL),
  -- #0201 Unown (P)
  (201, 20115, 22, NULL, 2, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 3, NULL, 1, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 4, NULL, 1, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 5, NULL, 12, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 6, NULL, 1, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 7, NULL, 12, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 8, NULL, 1, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 9, NULL, 1, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 10, NULL, 1, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 11, NULL, 13, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 12, NULL, 13, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 13, NULL, 13, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 14, NULL, 1, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 15, NULL, 13, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 16, NULL, 13, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 21, NULL, 1, NULL),
  -- #0201 Unown (Q)
  (201, 20116, 22, NULL, 2, NULL),
  -- #0201 Unown (R)
  (201, 20117, 3, NULL, 1, NULL),
  -- #0201 Unown (R)
  (201, 20117, 4, NULL, 1, NULL),
  -- #0201 Unown (R)
  (201, 20117, 5, NULL, 12, NULL),
  -- #0201 Unown (R)
  (201, 20117, 6, NULL, 1, NULL),
  -- #0201 Unown (R)
  (201, 20117, 7, NULL, 12, NULL),
  -- #0201 Unown (R)
  (201, 20117, 8, NULL, 1, NULL),
  -- #0201 Unown (R)
  (201, 20117, 9, NULL, 1, NULL),
  -- #0201 Unown (R)
  (201, 20117, 10, NULL, 1, NULL),
  -- #0201 Unown (R)
  (201, 20117, 11, NULL, 13, NULL),
  -- #0201 Unown (R)
  (201, 20117, 12, NULL, 13, NULL),
  -- #0201 Unown (R)
  (201, 20117, 13, NULL, 13, NULL),
  -- #0201 Unown (R)
  (201, 20117, 14, NULL, 1, NULL),
  -- #0201 Unown (R)
  (201, 20117, 15, NULL, 13, NULL),
  -- #0201 Unown (R)
  (201, 20117, 16, NULL, 13, NULL),
  -- #0201 Unown (R)
  (201, 20117, 21, NULL, 1, NULL),
  -- #0201 Unown (R)
  (201, 20117, 22, NULL, 2, NULL),
  -- #0201 Unown (S)
  (201, 20118, 3, NULL, 1, NULL),
  -- #0201 Unown (S)
  (201, 20118, 4, NULL, 1, NULL),
  -- #0201 Unown (S)
  (201, 20118, 5, NULL, 12, NULL),
  -- #0201 Unown (S)
  (201, 20118, 6, NULL, 1, NULL),
  -- #0201 Unown (S)
  (201, 20118, 7, NULL, 12, NULL),
  -- #0201 Unown (S)
  (201, 20118, 8, NULL, 1, NULL),
  -- #0201 Unown (S)
  (201, 20118, 9, NULL, 1, NULL),
  -- #0201 Unown (S)
  (201, 20118, 10, NULL, 1, NULL),
  -- #0201 Unown (S)
  (201, 20118, 11, NULL, 13, NULL),
  -- #0201 Unown (S)
  (201, 20118, 12, NULL, 13, NULL),
  -- #0201 Unown (S)
  (201, 20118, 13, NULL, 13, NULL),
  -- #0201 Unown (S)
  (201, 20118, 14, NULL, 1, NULL),
  -- #0201 Unown (S)
  (201, 20118, 15, NULL, 13, NULL),
  -- #0201 Unown (S)
  (201, 20118, 16, NULL, 13, NULL),
  -- #0201 Unown (S)
  (201, 20118, 21, NULL, 1, NULL),
  -- #0201 Unown (S)
  (201, 20118, 22, NULL, 2, NULL),
  -- #0201 Unown (T)
  (201, 20119, 3, NULL, 1, NULL),
  -- #0201 Unown (T)
  (201, 20119, 4, NULL, 1, NULL),
  -- #0201 Unown (T)
  (201, 20119, 5, NULL, 12, NULL),
  -- #0201 Unown (T)
  (201, 20119, 6, NULL, 1, NULL),
  -- #0201 Unown (T)
  (201, 20119, 7, NULL, 12, NULL),
  -- #0201 Unown (T)
  (201, 20119, 8, NULL, 1, NULL),
  -- #0201 Unown (T)
  (201, 20119, 9, NULL, 1, NULL),
  -- #0201 Unown (T)
  (201, 20119, 10, NULL, 1, NULL),
  -- #0201 Unown (T)
  (201, 20119, 11, NULL, 13, NULL),
  -- #0201 Unown (T)
  (201, 20119, 12, NULL, 13, NULL),
  -- #0201 Unown (T)
  (201, 20119, 13, NULL, 13, NULL),
  -- #0201 Unown (T)
  (201, 20119, 14, NULL, 1, NULL),
  -- #0201 Unown (T)
  (201, 20119, 15, NULL, 13, NULL),
  -- #0201 Unown (T)
  (201, 20119, 16, NULL, 13, NULL),
  -- #0201 Unown (T)
  (201, 20119, 21, NULL, 1, NULL),
  -- #0201 Unown (T)
  (201, 20119, 22, NULL, 2, NULL),
  -- #0201 Unown (U)
  (201, 20120, 3, NULL, 1, NULL),
  -- #0201 Unown (U)
  (201, 20120, 4, NULL, 1, NULL),
  -- #0201 Unown (U)
  (201, 20120, 5, NULL, 12, NULL),
  -- #0201 Unown (U)
  (201, 20120, 6, NULL, 1, NULL),
  -- #0201 Unown (U)
  (201, 20120, 7, NULL, 12, NULL),
  -- #0201 Unown (U)
  (201, 20120, 8, NULL, 1, NULL),
  -- #0201 Unown (U)
  (201, 20120, 9, NULL, 1, NULL),
  -- #0201 Unown (U)
  (201, 20120, 10, NULL, 1, NULL),
  -- #0201 Unown (U)
  (201, 20120, 11, NULL, 13, NULL),
  -- #0201 Unown (U)
  (201, 20120, 12, NULL, 13, NULL),
  -- #0201 Unown (U)
  (201, 20120, 13, NULL, 13, NULL),
  -- #0201 Unown (U)
  (201, 20120, 14, NULL, 1, NULL),
  -- #0201 Unown (U)
  (201, 20120, 15, NULL, 13, NULL),
  -- #0201 Unown (U)
  (201, 20120, 16, NULL, 13, NULL),
  -- #0201 Unown (U)
  (201, 20120, 21, NULL, 1, NULL),
  -- #0201 Unown (U)
  (201, 20120, 22, NULL, 2, NULL),
  -- #0201 Unown (V)
  (201, 20121, 3, NULL, 1, NULL),
  -- #0201 Unown (V)
  (201, 20121, 4, NULL, 1, NULL),
  -- #0201 Unown (V)
  (201, 20121, 5, NULL, 12, NULL),
  -- #0201 Unown (V)
  (201, 20121, 6, NULL, 1, NULL),
  -- #0201 Unown (V)
  (201, 20121, 7, NULL, 12, NULL),
  -- #0201 Unown (V)
  (201, 20121, 8, NULL, 1, NULL),
  -- #0201 Unown (V)
  (201, 20121, 9, NULL, 1, NULL),
  -- #0201 Unown (V)
  (201, 20121, 10, NULL, 1, NULL),
  -- #0201 Unown (V)
  (201, 20121, 11, NULL, 13, NULL),
  -- #0201 Unown (V)
  (201, 20121, 12, NULL, 13, NULL),
  -- #0201 Unown (V)
  (201, 20121, 13, NULL, 13, NULL),
  -- #0201 Unown (V)
  (201, 20121, 14, NULL, 1, NULL),
  -- #0201 Unown (V)
  (201, 20121, 15, NULL, 13, NULL),
  -- #0201 Unown (V)
  (201, 20121, 16, NULL, 13, NULL),
  -- #0201 Unown (V)
  (201, 20121, 21, NULL, 1, NULL),
  -- #0201 Unown (V)
  (201, 20121, 22, NULL, 2, NULL),
  -- #0201 Unown (W)
  (201, 20122, 3, NULL, 1, NULL),
  -- #0201 Unown (W)
  (201, 20122, 4, NULL, 1, NULL),
  -- #0201 Unown (W)
  (201, 20122, 5, NULL, 12, NULL),
  -- #0201 Unown (W)
  (201, 20122, 6, NULL, 1, NULL),
  -- #0201 Unown (W)
  (201, 20122, 7, NULL, 12, NULL),
  -- #0201 Unown (W)
  (201, 20122, 8, NULL, 1, NULL),
  -- #0201 Unown (W)
  (201, 20122, 9, NULL, 1, NULL),
  -- #0201 Unown (W)
  (201, 20122, 10, NULL, 1, NULL),
  -- #0201 Unown (W)
  (201, 20122, 11, NULL, 13, NULL),
  -- #0201 Unown (W)
  (201, 20122, 12, NULL, 13, NULL),
  -- #0201 Unown (W)
  (201, 20122, 13, NULL, 13, NULL),
  -- #0201 Unown (W)
  (201, 20122, 14, NULL, 1, NULL),
  -- #0201 Unown (W)
  (201, 20122, 15, NULL, 13, NULL),
  -- #0201 Unown (W)
  (201, 20122, 16, NULL, 13, NULL),
  -- #0201 Unown (W)
  (201, 20122, 21, NULL, 1, NULL),
  -- #0201 Unown (W)
  (201, 20122, 22, NULL, 2, NULL),
  -- #0201 Unown (X)
  (201, 20123, 3, NULL, 1, NULL),
  -- #0201 Unown (X)
  (201, 20123, 4, NULL, 1, NULL),
  -- #0201 Unown (X)
  (201, 20123, 5, NULL, 12, NULL),
  -- #0201 Unown (X)
  (201, 20123, 6, NULL, 1, NULL),
  -- #0201 Unown (X)
  (201, 20123, 7, NULL, 12, NULL),
  -- #0201 Unown (X)
  (201, 20123, 8, NULL, 1, NULL),
  -- #0201 Unown (X)
  (201, 20123, 9, NULL, 1, NULL),
  -- #0201 Unown (X)
  (201, 20123, 10, NULL, 1, NULL),
  -- #0201 Unown (X)
  (201, 20123, 11, NULL, 13, NULL),
  -- #0201 Unown (X)
  (201, 20123, 12, NULL, 13, NULL),
  -- #0201 Unown (X)
  (201, 20123, 13, NULL, 13, NULL),
  -- #0201 Unown (X)
  (201, 20123, 14, NULL, 1, NULL),
  -- #0201 Unown (X)
  (201, 20123, 15, NULL, 13, NULL),
  -- #0201 Unown (X)
  (201, 20123, 16, NULL, 13, NULL),
  -- #0201 Unown (X)
  (201, 20123, 21, NULL, 1, NULL),
  -- #0201 Unown (X)
  (201, 20123, 22, NULL, 2, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 3, NULL, 1, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 4, NULL, 1, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 5, NULL, 12, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 6, NULL, 1, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 7, NULL, 12, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 8, NULL, 1, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 9, NULL, 1, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 10, NULL, 1, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 11, NULL, 13, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 12, NULL, 13, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 13, NULL, 13, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 14, NULL, 1, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 15, NULL, 13, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 16, NULL, 13, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 21, NULL, 1, NULL),
  -- #0201 Unown (Y)
  (201, 20124, 22, NULL, 2, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 3, NULL, 1, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 4, NULL, 1, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 5, NULL, 12, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 6, NULL, 1, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 7, NULL, 12, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 8, NULL, 1, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 9, NULL, 1, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 10, NULL, 1, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 11, NULL, 13, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 12, NULL, 13, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 13, NULL, 13, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 14, NULL, 1, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 15, NULL, 13, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 16, NULL, 13, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 21, NULL, 1, NULL),
  -- #0201 Unown (Z)
  (201, 20125, 22, NULL, 2, NULL),
  -- #0201 Unown (!)
  (201, 20126, 5, NULL, 12, NULL),
  -- #0201 Unown (!)
  (201, 20126, 6, NULL, 1, NULL),
  -- #0201 Unown (!)
  (201, 20126, 7, NULL, 12, NULL),
  -- #0201 Unown (!)
  (201, 20126, 8, NULL, 1, NULL),
  -- #0201 Unown (!)
  (201, 20126, 9, NULL, 1, NULL),
  -- #0201 Unown (!)
  (201, 20126, 10, NULL, 1, NULL),
  -- #0201 Unown (!)
  (201, 20126, 11, NULL, 13, NULL),
  -- #0201 Unown (!)
  (201, 20126, 12, NULL, 13, NULL),
  -- #0201 Unown (!)
  (201, 20126, 13, NULL, 13, NULL),
  -- #0201 Unown (!)
  (201, 20126, 14, NULL, 1, NULL),
  -- #0201 Unown (!)
  (201, 20126, 15, NULL, 13, NULL),
  -- #0201 Unown (!)
  (201, 20126, 16, NULL, 13, NULL),
  -- #0201 Unown (!)
  (201, 20126, 21, NULL, 1, NULL),
  -- #0201 Unown (!)
  (201, 20126, 22, NULL, 2, NULL),
  -- #0201 Unown (?)
  (201, 20127, 5, NULL, 12, NULL),
  -- #0201 Unown (?)
  (201, 20127, 6, NULL, 1, NULL),
  -- #0201 Unown (?)
  (201, 20127, 7, NULL, 12, NULL),
  -- #0201 Unown (?)
  (201, 20127, 8, NULL, 1, NULL),
  -- #0201 Unown (?)
  (201, 20127, 9, NULL, 1, NULL),
  -- #0201 Unown (?)
  (201, 20127, 10, NULL, 1, NULL),
  -- #0201 Unown (?)
  (201, 20127, 11, NULL, 13, NULL),
  -- #0201 Unown (?)
  (201, 20127, 12, NULL, 13, NULL),
  -- #0201 Unown (?)
  (201, 20127, 13, NULL, 13, NULL),
  -- #0201 Unown (?)
  (201, 20127, 14, NULL, 1, NULL),
  -- #0201 Unown (?)
  (201, 20127, 15, NULL, 13, NULL),
  -- #0201 Unown (?)
  (201, 20127, 16, NULL, 13, NULL),
  -- #0201 Unown (?)
  (201, 20127, 21, NULL, 1, NULL),
  -- #0201 Unown (?)
  (201, 20127, 22, NULL, 2, NULL),
  -- #0422 Shellos (East Sea)
  (422, 42201, 8, NULL, 1, NULL),
  -- #0422 Shellos (East Sea)
  (422, 42201, 9, NULL, 1, NULL),
  -- #0422 Shellos (East Sea)
  (422, 42201, 10, NULL, 10, NULL),
  -- #0422 Shellos (East Sea)
  (422, 42201, 11, NULL, 13, NULL),
  -- #0422 Shellos (East Sea)
  (422, 42201, 12, NULL, 5, NULL),
  -- #0422 Shellos (East Sea)
  (422, 42201, 13, NULL, 8, NULL),
  -- #0422 Shellos (East Sea)
  (422, 42201, 14, NULL, 1, NULL),
  -- #0422 Shellos (East Sea)
  (422, 42201, 15, NULL, 8, NULL),
  -- #0422 Shellos (East Sea)
  (422, 42201, 16, NULL, 5, NULL),
  -- #0422 Shellos (East Sea)
  (422, 42201, 18, NULL, 1, NULL),
  -- #0422 Shellos (East Sea)
  (422, 42201, 18, NULL, 13, NULL),
  -- #0422 Shellos (East Sea)
  (422, 42201, 21, NULL, 1, NULL),
  -- #0422 Shellos (East Sea)
  (422, 42201, 22, NULL, 1, NULL),
  -- #0422 Shellos (East Sea)
  (422, 42201, 23, NULL, 1, NULL),
  -- #0423 Gastrodon (East Sea)
  (423, 42301, 8, NULL, 1, NULL),
  -- #0423 Gastrodon (East Sea)
  (423, 42301, 9, NULL, 1, NULL),
  -- #0423 Gastrodon (East Sea)
  (423, 42301, 10, NULL, 7, NULL),
  -- #0423 Gastrodon (East Sea)
  (423, 42301, 11, NULL, 7, NULL),
  -- #0423 Gastrodon (East Sea)
  (423, 42301, 12, NULL, 7, NULL),
  -- #0423 Gastrodon (East Sea)
  (423, 42301, 13, NULL, 10, NULL),
  -- #0423 Gastrodon (East Sea)
  (423, 42301, 14, NULL, 7, NULL),
  -- #0423 Gastrodon (East Sea)
  (423, 42301, 15, NULL, 1, NULL),
  -- #0423 Gastrodon (East Sea)
  (423, 42301, 16, NULL, 7, NULL),
  -- #0423 Gastrodon (East Sea)
  (423, 42301, 18, NULL, 1, NULL),
  -- #0423 Gastrodon (East Sea)
  (423, 42301, 18, NULL, 13, NULL),
  -- #0423 Gastrodon (East Sea)
  (423, 42301, 21, NULL, 1, NULL),
  -- #0423 Gastrodon (East Sea)
  (423, 42301, 22, NULL, 1, NULL),
  -- #0423 Gastrodon (East Sea)
  (423, 42301, 23, NULL, 7, NULL),
  -- #0585 Deerling (Summer Form)
  (585, 58501, 11, NULL, 1, NULL),
  -- #0585 Deerling (Summer Form)
  (585, 58501, 12, NULL, 1, NULL),
  -- #0585 Deerling (Summer Form)
  (585, 58501, 13, NULL, 8, NULL),
  -- #0585 Deerling (Summer Form)
  (585, 58501, 14, NULL, 1, NULL),
  -- #0585 Deerling (Summer Form)
  (585, 58501, 15, NULL, 13, NULL),
  -- #0585 Deerling (Summer Form)
  (585, 58501, 16, NULL, 13, NULL),
  -- #0585 Deerling (Summer Form)
  (585, 58501, 23, NULL, 1, NULL),
  -- #0585 Deerling (Summer Form)
  (585, 58501, 25, NULL, 1, NULL),
  -- #0585 Deerling (Autumn Form)
  (585, 58502, 11, NULL, 1, NULL),
  -- #0585 Deerling (Autumn Form)
  (585, 58502, 12, NULL, 1, NULL),
  -- #0585 Deerling (Autumn Form)
  (585, 58502, 13, NULL, 8, NULL),
  -- #0585 Deerling (Autumn Form)
  (585, 58502, 14, NULL, 1, NULL),
  -- #0585 Deerling (Autumn Form)
  (585, 58502, 15, NULL, 13, NULL),
  -- #0585 Deerling (Autumn Form)
  (585, 58502, 16, NULL, 13, NULL),
  -- #0585 Deerling (Autumn Form)
  (585, 58502, 23, NULL, 1, NULL),
  -- #0585 Deerling (Autumn Form)
  (585, 58502, 25, NULL, 1, NULL),
  -- #0585 Deerling (Winter Form)
  (585, 58503, 11, NULL, 1, NULL),
  -- #0585 Deerling (Winter Form)
  (585, 58503, 12, NULL, 1, NULL),
  -- #0585 Deerling (Winter Form)
  (585, 58503, 13, NULL, 8, NULL),
  -- #0585 Deerling (Winter Form)
  (585, 58503, 14, NULL, 1, NULL),
  -- #0585 Deerling (Winter Form)
  (585, 58503, 15, NULL, 13, NULL),
  -- #0585 Deerling (Winter Form)
  (585, 58503, 16, NULL, 13, NULL),
  -- #0585 Deerling (Winter Form)
  (585, 58503, 23, NULL, 1, NULL),
  -- #0585 Deerling (Winter Form)
  (585, 58503, 25, NULL, 1, NULL),
  -- #0586 Sawsbuck (Summer Form)
  (586, 58601, 11, NULL, 1, NULL),
  -- #0586 Sawsbuck (Summer Form)
  (586, 58601, 12, NULL, 1, NULL),
  -- #0586 Sawsbuck (Summer Form)
  (586, 58601, 13, NULL, 10, NULL),
  -- #0586 Sawsbuck (Summer Form)
  (586, 58601, 14, NULL, 7, NULL),
  -- #0586 Sawsbuck (Summer Form)
  (586, 58601, 15, NULL, 13, NULL),
  -- #0586 Sawsbuck (Summer Form)
  (586, 58601, 16, NULL, 13, NULL),
  -- #0586 Sawsbuck (Summer Form)
  (586, 58601, 23, NULL, 7, NULL),
  -- #0586 Sawsbuck (Summer Form)
  (586, 58601, 25, NULL, 7, NULL),
  -- #0586 Sawsbuck (Autumn Form)
  (586, 58602, 11, NULL, 1, NULL),
  -- #0586 Sawsbuck (Autumn Form)
  (586, 58602, 12, NULL, 1, NULL),
  -- #0586 Sawsbuck (Autumn Form)
  (586, 58602, 13, NULL, 10, NULL),
  -- #0586 Sawsbuck (Autumn Form)
  (586, 58602, 14, NULL, 7, NULL),
  -- #0586 Sawsbuck (Autumn Form)
  (586, 58602, 15, NULL, 13, NULL),
  -- #0586 Sawsbuck (Autumn Form)
  (586, 58602, 16, NULL, 13, NULL),
  -- #0586 Sawsbuck (Autumn Form)
  (586, 58602, 23, NULL, 7, NULL),
  -- #0586 Sawsbuck (Autumn Form)
  (586, 58602, 25, NULL, 7, NULL),
  -- #0586 Sawsbuck (Winter Form)
  (586, 58603, 11, NULL, 1, NULL),
  -- #0586 Sawsbuck (Winter Form)
  (586, 58603, 12, NULL, 1, NULL),
  -- #0586 Sawsbuck (Winter Form)
  (586, 58603, 13, NULL, 10, NULL),
  -- #0586 Sawsbuck (Winter Form)
  (586, 58603, 14, NULL, 7, NULL),
  -- #0586 Sawsbuck (Winter Form)
  (586, 58603, 15, NULL, 13, NULL),
  -- #0586 Sawsbuck (Winter Form)
  (586, 58603, 16, NULL, 13, NULL),
  -- #0586 Sawsbuck (Winter Form)
  (586, 58603, 23, NULL, 7, NULL),
  -- #0586 Sawsbuck (Winter Form)
  (586, 58603, 25, NULL, 7, NULL),
  -- #0666 Vivillon (Icy Snow Pattern)
  (666, 66601, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Icy Snow Pattern)
  (666, 66601, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Icy Snow Pattern)
  (666, 66601, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Icy Snow Pattern)
  (666, 66601, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Icy Snow Pattern)
  (666, 66601, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Icy Snow Pattern)
  (666, 66601, 26, NULL, 13, NULL),
  -- #0666 Vivillon (Polar Pattern)
  (666, 66602, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Polar Pattern)
  (666, 66602, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Polar Pattern)
  (666, 66602, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Polar Pattern)
  (666, 66602, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Polar Pattern)
  (666, 66602, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Polar Pattern)
  (666, 66602, 26, NULL, 13, NULL),
  -- #0666 Vivillon (Tundra Pattern)
  (666, 66603, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Tundra Pattern)
  (666, 66603, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Tundra Pattern)
  (666, 66603, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Tundra Pattern)
  (666, 66603, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Tundra Pattern)
  (666, 66603, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Tundra Pattern)
  (666, 66603, 26, NULL, 13, NULL),
  -- #0666 Vivillon (Continental Pattern)
  (666, 66604, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Continental Pattern)
  (666, 66604, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Continental Pattern)
  (666, 66604, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Continental Pattern)
  (666, 66604, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Continental Pattern)
  (666, 66604, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Continental Pattern)
  (666, 66604, 26, NULL, 13, NULL),
  -- #0666 Vivillon (Garden Pattern)
  (666, 66605, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Garden Pattern)
  (666, 66605, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Garden Pattern)
  (666, 66605, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Garden Pattern)
  (666, 66605, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Garden Pattern)
  (666, 66605, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Garden Pattern)
  (666, 66605, 26, NULL, 13, NULL),
  -- #0666 Vivillon (Elegant Pattern)
  (666, 66606, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Elegant Pattern)
  (666, 66606, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Elegant Pattern)
  (666, 66606, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Elegant Pattern)
  (666, 66606, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Elegant Pattern)
  (666, 66606, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Elegant Pattern)
  (666, 66606, 26, NULL, 13, NULL),
  -- #0666 Vivillon (Modern Pattern)
  (666, 66607, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Modern Pattern)
  (666, 66607, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Modern Pattern)
  (666, 66607, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Modern Pattern)
  (666, 66607, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Modern Pattern)
  (666, 66607, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Modern Pattern)
  (666, 66607, 26, NULL, 13, NULL),
  -- #0666 Vivillon (Marine Pattern)
  (666, 66608, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Marine Pattern)
  (666, 66608, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Marine Pattern)
  (666, 66608, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Marine Pattern)
  (666, 66608, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Marine Pattern)
  (666, 66608, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Marine Pattern)
  (666, 66608, 26, NULL, 13, NULL),
  -- #0666 Vivillon (Archipelago Pattern)
  (666, 66609, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Archipelago Pattern)
  (666, 66609, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Archipelago Pattern)
  (666, 66609, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Archipelago Pattern)
  (666, 66609, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Archipelago Pattern)
  (666, 66609, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Archipelago Pattern)
  (666, 66609, 26, NULL, 13, NULL),
  -- #0666 Vivillon (High Plains Pattern)
  (666, 66610, 13, NULL, 7, NULL),
  -- #0666 Vivillon (High Plains Pattern)
  (666, 66610, 14, NULL, 11, NULL),
  -- #0666 Vivillon (High Plains Pattern)
  (666, 66610, 15, NULL, 13, NULL),
  -- #0666 Vivillon (High Plains Pattern)
  (666, 66610, 16, NULL, 7, NULL),
  -- #0666 Vivillon (High Plains Pattern)
  (666, 66610, 23, NULL, 13, NULL),
  -- #0666 Vivillon (High Plains Pattern)
  (666, 66610, 26, NULL, 13, NULL),
  -- #0666 Vivillon (Sandstorm Pattern)
  (666, 66611, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Sandstorm Pattern)
  (666, 66611, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Sandstorm Pattern)
  (666, 66611, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Sandstorm Pattern)
  (666, 66611, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Sandstorm Pattern)
  (666, 66611, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Sandstorm Pattern)
  (666, 66611, 26, NULL, 13, NULL),
  -- #0666 Vivillon (River Pattern)
  (666, 66612, 13, NULL, 7, NULL),
  -- #0666 Vivillon (River Pattern)
  (666, 66612, 14, NULL, 11, NULL),
  -- #0666 Vivillon (River Pattern)
  (666, 66612, 15, NULL, 13, NULL),
  -- #0666 Vivillon (River Pattern)
  (666, 66612, 16, NULL, 7, NULL),
  -- #0666 Vivillon (River Pattern)
  (666, 66612, 23, NULL, 13, NULL),
  -- #0666 Vivillon (River Pattern)
  (666, 66612, 26, NULL, 13, NULL),
  -- #0666 Vivillon (Monsoon Pattern)
  (666, 66613, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Monsoon Pattern)
  (666, 66613, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Monsoon Pattern)
  (666, 66613, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Monsoon Pattern)
  (666, 66613, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Monsoon Pattern)
  (666, 66613, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Monsoon Pattern)
  (666, 66613, 26, NULL, 13, NULL),
  -- #0666 Vivillon (Savanna Pattern)
  (666, 66614, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Savanna Pattern)
  (666, 66614, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Savanna Pattern)
  (666, 66614, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Savanna Pattern)
  (666, 66614, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Savanna Pattern)
  (666, 66614, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Savanna Pattern)
  (666, 66614, 26, NULL, 13, NULL),
  -- #0666 Vivillon (Sun Pattern)
  (666, 66615, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Sun Pattern)
  (666, 66615, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Sun Pattern)
  (666, 66615, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Sun Pattern)
  (666, 66615, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Sun Pattern)
  (666, 66615, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Sun Pattern)
  (666, 66615, 26, NULL, 13, NULL),
  -- #0666 Vivillon (Ocean Pattern)
  (666, 66616, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Ocean Pattern)
  (666, 66616, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Ocean Pattern)
  (666, 66616, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Ocean Pattern)
  (666, 66616, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Ocean Pattern)
  (666, 66616, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Ocean Pattern)
  (666, 66616, 26, NULL, 13, NULL),
  -- #0666 Vivillon (Jungle Pattern)
  (666, 66617, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Jungle Pattern)
  (666, 66617, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Jungle Pattern)
  (666, 66617, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Jungle Pattern)
  (666, 66617, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Jungle Pattern)
  (666, 66617, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Jungle Pattern)
  (666, 66617, 26, NULL, 13, NULL),
  -- #0666 Vivillon (Fancy Pattern)
  (666, 66618, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Fancy Pattern)
  (666, 66618, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Fancy Pattern)
  (666, 66618, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Fancy Pattern)
  (666, 66618, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Fancy Pattern)
  (666, 66618, 23, NULL, 7, NULL),
  -- #0666 Vivillon (Fancy Pattern)
  (666, 66618, 26, NULL, 1, NULL),
  -- #0666 Vivillon (Poke Ball Pattern)
  (666, 66619, 13, NULL, 7, NULL),
  -- #0666 Vivillon (Poke Ball Pattern)
  (666, 66619, 14, NULL, 11, NULL),
  -- #0666 Vivillon (Poke Ball Pattern)
  (666, 66619, 15, NULL, 13, NULL),
  -- #0666 Vivillon (Poke Ball Pattern)
  (666, 66619, 16, NULL, 7, NULL),
  -- #0666 Vivillon (Poke Ball Pattern)
  (666, 66619, 23, NULL, 13, NULL),
  -- #0666 Vivillon (Poke Ball Pattern)
  (666, 66619, 26, NULL, 13, NULL),
  -- #0669 Flabebe (Yellow Flower)
  (669, 66901, 13, NULL, 1, NULL),
  -- #0669 Flabebe (Yellow Flower)
  (669, 66901, 14, NULL, 12, NULL),
  -- #0669 Flabebe (Yellow Flower)
  (669, 66901, 15, NULL, 13, NULL),
  -- #0669 Flabebe (Yellow Flower)
  (669, 66901, 16, NULL, 1, NULL),
  -- #0669 Flabebe (Yellow Flower)
  (669, 66901, 23, NULL, 1, NULL),
  -- #0669 Flabebe (Yellow Flower)
  (669, 66901, 26, NULL, 1, NULL),
  -- #0669 Flabebe (Orange Flower)
  (669, 66902, 13, NULL, 1, NULL),
  -- #0669 Flabebe (Orange Flower)
  (669, 66902, 14, NULL, 12, NULL),
  -- #0669 Flabebe (Orange Flower)
  (669, 66902, 15, NULL, 13, NULL),
  -- #0669 Flabebe (Orange Flower)
  (669, 66902, 16, NULL, 1, NULL),
  -- #0669 Flabebe (Orange Flower)
  (669, 66902, 23, NULL, 1, NULL),
  -- #0669 Flabebe (Orange Flower)
  (669, 66902, 26, NULL, 1, NULL),
  -- #0669 Flabebe (Blue Flower)
  (669, 66903, 13, NULL, 1, NULL),
  -- #0669 Flabebe (Blue Flower)
  (669, 66903, 14, NULL, 12, NULL),
  -- #0669 Flabebe (Blue Flower)
  (669, 66903, 15, NULL, 13, NULL),
  -- #0669 Flabebe (Blue Flower)
  (669, 66903, 16, NULL, 1, NULL),
  -- #0669 Flabebe (Blue Flower)
  (669, 66903, 23, NULL, 1, NULL),
  -- #0669 Flabebe (Blue Flower)
  (669, 66903, 26, NULL, 1, NULL),
  -- #0669 Flabebe (White Flower)
  (669, 66904, 13, NULL, 1, NULL),
  -- #0669 Flabebe (White Flower)
  (669, 66904, 14, NULL, 12, NULL),
  -- #0669 Flabebe (White Flower)
  (669, 66904, 15, NULL, 13, NULL),
  -- #0669 Flabebe (White Flower)
  (669, 66904, 16, NULL, 1, NULL),
  -- #0669 Flabebe (White Flower)
  (669, 66904, 23, NULL, 1, NULL),
  -- #0669 Flabebe (White Flower)
  (669, 66904, 26, NULL, 1, NULL),
  -- #0670 Floette (Yellow Flower)
  (670, 67003, 13, NULL, 7, NULL),
  -- #0670 Floette (Yellow Flower)
  (670, 67003, 14, NULL, 12, NULL),
  -- #0670 Floette (Yellow Flower)
  (670, 67003, 15, NULL, 13, NULL),
  -- #0670 Floette (Yellow Flower)
  (670, 67003, 16, NULL, 1, NULL),
  -- #0670 Floette (Yellow Flower)
  (670, 67003, 23, NULL, 7, NULL),
  -- #0670 Floette (Yellow Flower)
  (670, 67003, 26, NULL, 1, NULL),
  -- #0670 Floette (Orange Flower)
  (670, 67004, 13, NULL, 7, NULL),
  -- #0670 Floette (Orange Flower)
  (670, 67004, 14, NULL, 12, NULL),
  -- #0670 Floette (Orange Flower)
  (670, 67004, 15, NULL, 13, NULL),
  -- #0670 Floette (Orange Flower)
  (670, 67004, 16, NULL, 1, NULL),
  -- #0670 Floette (Orange Flower)
  (670, 67004, 23, NULL, 7, NULL),
  -- #0670 Floette (Orange Flower)
  (670, 67004, 26, NULL, 1, NULL),
  -- #0670 Floette (Blue Flower)
  (670, 67005, 13, NULL, 7, NULL),
  -- #0670 Floette (Blue Flower)
  (670, 67005, 14, NULL, 12, NULL),
  -- #0670 Floette (Blue Flower)
  (670, 67005, 15, NULL, 13, NULL),
  -- #0670 Floette (Blue Flower)
  (670, 67005, 16, NULL, 1, NULL),
  -- #0670 Floette (Blue Flower)
  (670, 67005, 23, NULL, 7, NULL),
  -- #0670 Floette (Blue Flower)
  (670, 67005, 26, NULL, 1, NULL),
  -- #0670 Floette (White Flower)
  (670, 67006, 13, NULL, 7, NULL),
  -- #0670 Floette (White Flower)
  (670, 67006, 14, NULL, 12, NULL),
  -- #0670 Floette (White Flower)
  (670, 67006, 15, NULL, 13, NULL),
  -- #0670 Floette (White Flower)
  (670, 67006, 16, NULL, 1, NULL),
  -- #0670 Floette (White Flower)
  (670, 67006, 23, NULL, 7, NULL),
  -- #0670 Floette (White Flower)
  (670, 67006, 26, NULL, 1, NULL),
  -- #0671 Florges (Yellow Flower)
  (671, 67101, 13, NULL, 7, NULL),
  -- #0671 Florges (Yellow Flower)
  (671, 67101, 14, NULL, 12, NULL),
  -- #0671 Florges (Yellow Flower)
  (671, 67101, 15, NULL, 13, NULL),
  -- #0671 Florges (Yellow Flower)
  (671, 67101, 16, NULL, 7, NULL),
  -- #0671 Florges (Yellow Flower)
  (671, 67101, 23, NULL, 7, NULL),
  -- #0671 Florges (Yellow Flower)
  (671, 67101, 26, NULL, 1, NULL),
  -- #0671 Florges (Orange Flower)
  (671, 67102, 13, NULL, 7, NULL),
  -- #0671 Florges (Orange Flower)
  (671, 67102, 14, NULL, 12, NULL),
  -- #0671 Florges (Orange Flower)
  (671, 67102, 15, NULL, 13, NULL),
  -- #0671 Florges (Orange Flower)
  (671, 67102, 16, NULL, 7, NULL),
  -- #0671 Florges (Orange Flower)
  (671, 67102, 23, NULL, 7, NULL),
  -- #0671 Florges (Orange Flower)
  (671, 67102, 26, NULL, 1, NULL),
  -- #0671 Florges (Blue Flower)
  (671, 67103, 13, NULL, 7, NULL),
  -- #0671 Florges (Blue Flower)
  (671, 67103, 14, NULL, 12, NULL),
  -- #0671 Florges (Blue Flower)
  (671, 67103, 15, NULL, 13, NULL),
  -- #0671 Florges (Blue Flower)
  (671, 67103, 16, NULL, 7, NULL),
  -- #0671 Florges (Blue Flower)
  (671, 67103, 23, NULL, 7, NULL),
  -- #0671 Florges (Blue Flower)
  (671, 67103, 26, NULL, 1, NULL),
  -- #0671 Florges (White Flower)
  (671, 67104, 13, NULL, 7, NULL),
  -- #0671 Florges (White Flower)
  (671, 67104, 14, NULL, 12, NULL),
  -- #0671 Florges (White Flower)
  (671, 67104, 15, NULL, 13, NULL),
  -- #0671 Florges (White Flower)
  (671, 67104, 16, NULL, 7, NULL),
  -- #0671 Florges (White Flower)
  (671, 67104, 23, NULL, 7, NULL),
  -- #0671 Florges (White Flower)
  (671, 67104, 26, NULL, 1, NULL),
  -- #0676 Furfrou (Heart Trim)
  (676, 67601, 13, NULL, 1, NULL),
  -- #0676 Furfrou (Heart Trim)
  (676, 67601, 26, NULL, 1, NULL),
  -- #0676 Furfrou (Star Trim)
  (676, 67602, 13, NULL, 1, NULL),
  -- #0676 Furfrou (Star Trim)
  (676, 67602, 26, NULL, 1, NULL),
  -- #0676 Furfrou (Diamond Trim)
  (676, 67603, 13, NULL, 1, NULL),
  -- #0676 Furfrou (Diamond Trim)
  (676, 67603, 26, NULL, 1, NULL),
  -- #0676 Furfrou (Debutante Trim)
  (676, 67604, 13, NULL, 1, NULL),
  -- #0676 Furfrou (Debutante Trim)
  (676, 67604, 26, NULL, 1, NULL),
  -- #0676 Furfrou (Matron Trim)
  (676, 67605, 13, NULL, 1, NULL),
  -- #0676 Furfrou (Matron Trim)
  (676, 67605, 26, NULL, 1, NULL),
  -- #0676 Furfrou (Dandy Trim)
  (676, 67606, 13, NULL, 1, NULL),
  -- #0676 Furfrou (Dandy Trim)
  (676, 67606, 26, NULL, 1, NULL),
  -- #0676 Furfrou (La Reine Trim)
  (676, 67607, 13, NULL, 1, NULL),
  -- #0676 Furfrou (La Reine Trim)
  (676, 67607, 26, NULL, 1, NULL),
  -- #0676 Furfrou (Kabuki Trim)
  (676, 67608, 13, NULL, 1, NULL),
  -- #0676 Furfrou (Kabuki Trim)
  (676, 67608, 26, NULL, 1, NULL),
  -- #0676 Furfrou (Pharaoh Trim)
  (676, 67609, 13, NULL, 1, NULL),
  -- #0676 Furfrou (Pharaoh Trim)
  (676, 67609, 26, NULL, 1, NULL),
  -- #0869 Alcremie (Ruby Cream)
  (869, 86902, 18, NULL, 10, NULL),
  -- #0869 Alcremie (Ruby Cream)
  (869, 86902, 25, NULL, 7, NULL),
  -- #0869 Alcremie (Matcha Cream)
  (869, 86903, 18, NULL, 10, NULL),
  -- #0869 Alcremie (Matcha Cream)
  (869, 86903, 25, NULL, 7, NULL),
  -- #0869 Alcremie (Mint Cream)
  (869, 86904, 18, NULL, 10, NULL),
  -- #0869 Alcremie (Mint Cream)
  (869, 86904, 25, NULL, 7, NULL),
  -- #0869 Alcremie (Lemon Cream)
  (869, 86905, 18, NULL, 10, NULL),
  -- #0869 Alcremie (Lemon Cream)
  (869, 86905, 25, NULL, 7, NULL),
  -- #0869 Alcremie (Salted Cream)
  (869, 86906, 18, NULL, 10, NULL),
  -- #0869 Alcremie (Salted Cream)
  (869, 86906, 25, NULL, 7, NULL),
  -- #0869 Alcremie (Ruby Swirl)
  (869, 86907, 18, NULL, 10, NULL),
  -- #0869 Alcremie (Ruby Swirl)
  (869, 86907, 25, NULL, 7, NULL),
  -- #0869 Alcremie (Caramel Swirl)
  (869, 86908, 18, NULL, 10, NULL),
  -- #0869 Alcremie (Caramel Swirl)
  (869, 86908, 25, NULL, 7, NULL),
  -- #0869 Alcremie (Rainbow Swirl)
  (869, 86909, 18, NULL, 10, NULL),
  -- #0869 Alcremie (Rainbow Swirl)
  (869, 86909, 25, NULL, 7, NULL),
  -- #0025 Pikachu (Original Cap)
  (25, 2503, 15, NULL, 11, NULL),
  -- #0025 Pikachu (Original Cap)
  (25, 2503, 16, NULL, 11, NULL),
  -- #0025 Pikachu (Original Cap)
  (25, 2503, 18, NULL, 13, NULL),
  -- #0025 Pikachu (Original Cap)
  (25, 2503, 23, NULL, 13, NULL),
  -- #0025 Pikachu (Hoenn Cap)
  (25, 2504, 15, NULL, 11, NULL),
  -- #0025 Pikachu (Hoenn Cap)
  (25, 2504, 16, NULL, 11, NULL),
  -- #0025 Pikachu (Hoenn Cap)
  (25, 2504, 18, NULL, 13, NULL),
  -- #0025 Pikachu (Hoenn Cap)
  (25, 2504, 23, NULL, 13, NULL),
  -- #0025 Pikachu (Sinnoh Cap)
  (25, 2505, 15, NULL, 11, NULL),
  -- #0025 Pikachu (Sinnoh Cap)
  (25, 2505, 16, NULL, 11, NULL),
  -- #0025 Pikachu (Sinnoh Cap)
  (25, 2505, 18, NULL, 13, NULL),
  -- #0025 Pikachu (Sinnoh Cap)
  (25, 2505, 23, NULL, 13, NULL),
  -- #0025 Pikachu (Unova Cap)
  (25, 2506, 15, NULL, 11, NULL),
  -- #0025 Pikachu (Unova Cap)
  (25, 2506, 16, NULL, 11, NULL),
  -- #0025 Pikachu (Unova Cap)
  (25, 2506, 18, NULL, 13, NULL),
  -- #0025 Pikachu (Unova Cap)
  (25, 2506, 23, NULL, 13, NULL),
  -- #0025 Pikachu (Kalos Cap)
  (25, 2507, 15, NULL, 11, NULL),
  -- #0025 Pikachu (Kalos Cap)
  (25, 2507, 16, NULL, 11, NULL),
  -- #0025 Pikachu (Kalos Cap)
  (25, 2507, 18, NULL, 13, NULL),
  -- #0025 Pikachu (Kalos Cap)
  (25, 2507, 23, NULL, 13, NULL),
  -- #0025 Pikachu (Alola Cap)
  (25, 2508, 15, NULL, 11, NULL),
  -- #0025 Pikachu (Alola Cap)
  (25, 2508, 16, NULL, 11, NULL),
  -- #0025 Pikachu (Alola Cap)
  (25, 2508, 18, NULL, 13, NULL),
  -- #0025 Pikachu (Alola Cap)
  (25, 2508, 23, NULL, 13, NULL),
  -- #0025 Pikachu (Partner Cap)
  (25, 2509, 16, NULL, 11, NULL),
  -- #0025 Pikachu (Partner Cap)
  (25, 2509, 18, NULL, 13, NULL),
  -- #0025 Pikachu (Partner Cap)
  (25, 2509, 23, NULL, 13, NULL),
  -- #0025 Pikachu (World Cap)
  (25, 2510, 18, NULL, 11, NULL),
  -- #0025 Pikachu (World Cap)
  (25, 2510, 23, NULL, 13, NULL),
  -- #0025 Pikachu (Cosplay)
  (25, 2511, 14, NULL, 4, NULL),
  -- #0025 Pikachu (Rock Star)
  (25, 2512, 14, NULL, 4, NULL),
  -- #0025 Pikachu (Belle)
  (25, 2513, 14, NULL, 4, NULL),
  -- #0025 Pikachu (Pop Star)
  (25, 2514, 14, NULL, 4, NULL),
  -- #0025 Pikachu (PhD)
  (25, 2515, 14, NULL, 4, NULL),
  -- #0025 Pikachu (Libre)
  (25, 2516, 14, NULL, 4, NULL),
  -- #0774 Minior (Orange)
  (774, 77402, 15, NULL, 1, NULL),
  -- #0774 Minior (Orange)
  (774, 77402, 16, NULL, 1, NULL),
  -- #0774 Minior (Orange)
  (774, 77402, 25, NULL, 1, NULL),
  -- #0774 Minior (Yellow)
  (774, 77403, 15, NULL, 1, NULL),
  -- #0774 Minior (Yellow)
  (774, 77403, 16, NULL, 1, NULL),
  -- #0774 Minior (Yellow)
  (774, 77403, 25, NULL, 1, NULL),
  -- #0774 Minior (Green)
  (774, 77404, 15, NULL, 1, NULL),
  -- #0774 Minior (Green)
  (774, 77404, 16, NULL, 1, NULL),
  -- #0774 Minior (Green)
  (774, 77404, 25, NULL, 1, NULL),
  -- #0774 Minior (Blue)
  (774, 77405, 15, NULL, 1, NULL),
  -- #0774 Minior (Blue)
  (774, 77405, 16, NULL, 1, NULL),
  -- #0774 Minior (Blue)
  (774, 77405, 25, NULL, 1, NULL),
  -- #0774 Minior (Indigo)
  (774, 77406, 15, NULL, 1, NULL),
  -- #0774 Minior (Indigo)
  (774, 77406, 16, NULL, 1, NULL),
  -- #0774 Minior (Indigo)
  (774, 77406, 25, NULL, 1, NULL),
  -- #0774 Minior (Violet)
  (774, 77407, 15, NULL, 1, NULL),
  -- #0774 Minior (Violet)
  (774, 77407, 16, NULL, 1, NULL),
  -- #0774 Minior (Violet)
  (774, 77407, 25, NULL, 1, NULL),
  -- #0658 Greninja (Battle Bond)
  (658, 65802, 15, NULL, 11, NULL),
  -- #0658 Greninja (Battle Bond)
  (658, 65802, 16, NULL, 11, NULL),
  -- #0172 Pichu (Spiky-eared)
  (172, 17201, 10, NULL, 11, NULL),
  -- #0893 Zarude (Dada)
  (893, 89301, 19, NULL, 11, NULL),
  -- #0893 Zarude (Dada)
  (893, 89301, 23, NULL, 13, NULL),
  -- #0999 Gimmighoul (Roaming Form)
  (999, 99901, 23, NULL, 13, NULL),
  -- #0647 Keldeo (Resolute Form)
  (647, 64701, 12, NULL, 11, NULL),
  -- #0647 Keldeo (Resolute Form)
  (647, 64701, 13, NULL, 11, NULL),
  -- #0647 Keldeo (Resolute Form)
  (647, 64701, 14, NULL, 11, NULL),
  -- #0647 Keldeo (Resolute Form)
  (647, 64701, 15, NULL, 13, NULL),
  -- #0647 Keldeo (Resolute Form)
  (647, 64701, 16, NULL, 13, NULL),
  -- #0647 Keldeo (Resolute Form)
  (647, 64701, 18, NULL, 13, NULL),
  -- #0647 Keldeo (Resolute Form)
  (647, 64701, 20, NULL, 2, NULL),
  -- #0647 Keldeo (Resolute Form)
  (647, 64701, 23, NULL, 13, NULL),
  -- #0647 Keldeo (Resolute Form)
  (647, 64701, 27, NULL, 10, NULL);
