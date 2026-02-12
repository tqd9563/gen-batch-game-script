import * as assert from 'assert';
import * as fs from 'fs';
import * as path from 'path';
import { generateBatchSQL } from '../generator';

suite('generateBatchSQL', () => {
	const testDir = path.join(__dirname, '..', '..', 'src', 'test');

	test('test_case_1: {{ params.game_id }} replacement', () => {
		const template = fs.readFileSync(path.join(testDir, 'test_case_1.sql'), 'utf-8');
		const expected = fs.readFileSync(path.join(testDir, 'expected_output_1.sql'), 'utf-8');
		const result = generateBatchSQL(template);
		assert.strictEqual(result, expected);
	});

	test('test_case_2: mixed {{ game_id }} and {{ params.game_id }} replacement', () => {
		const template = fs.readFileSync(path.join(testDir, 'test_case_2.sql'), 'utf-8');
		const expected = fs.readFileSync(path.join(testDir, 'expected_output_2.sql'), 'utf-8');
		const result = generateBatchSQL(template);
		assert.strictEqual(result, expected);
	});
});
