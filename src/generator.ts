/** All possible game_id values */
export const GAME_IDS = [10043, 10046, 10048, 10064, 10066, 10076, 10078, 10091];

/** Regex matching both {{ game_id }} and {{ params.game_id }} with flexible whitespace */
const GAME_ID_PATTERN = /\{\{\s*(params\.)?game_id\s*\}\}/g;

/**
 * Given a SQL template containing {{ game_id }} or {{ params.game_id }} placeholders,
 * generate one SQL block per game_id value and join them with a blank line separator.
 */
export function generateBatchSQL(template: string): string {
	return GAME_IDS.map(id =>
		template.replace(GAME_ID_PATTERN, String(id))
	).join('\n\n');
}
