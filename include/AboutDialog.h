#ifndef ABOUTDIALOG_H
#define ABOUTDIALOG_H

#include <windows.h>

/* Dialog procedure for our "about" dialog */
INT_PTR CALLBACK AboutDialogProc(HWND hwndDlg, UINT uMsg, WPARAM wParam, LPARAM lParam);

/* Show our "about" dialog */
void ShowAboutDialog(HWND owner);

#endif
