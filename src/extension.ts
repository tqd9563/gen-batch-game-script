import * as vscode from 'vscode';
import { generateBatchSQL } from './generator';

export function activate(context: vscode.ExtensionContext) {
	console.log('[gen-batch-game-script] Extension activated!');
	vscode.window.showInformationMessage('[gen-batch-game-script] Extension activated!');

	const disposable = vscode.commands.registerCommand('gen-batch-game-script.helloWorld', () => {
		console.log('[gen-batch-game-script] Command executed!');
		const editor = vscode.window.activeTextEditor;
		if (!editor) {
			vscode.window.showWarningMessage('No active editor found.');
			return;
		}

		const selection = editor.selection;
		const selectedText = editor.document.getText(selection);
		if (!selectedText) {
			vscode.window.showWarningMessage('Please select the SQL template first.');
			return;
		}

		const result = generateBatchSQL(selectedText);

		editor.edit(editBuilder => {
			editBuilder.replace(selection, result);
		}).then(success => {
			if (success) {
				vscode.window.showInformationMessage('Batch SQL generated successfully!');
			} else {
				vscode.window.showErrorMessage('Failed to replace text.');
			}
		});
	});

	context.subscriptions.push(disposable);
}

export function deactivate() {}
