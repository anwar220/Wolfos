# classes2.dex

.class public interface abstract Landroid/view/inputmethod/InputConnection;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputConnection$CursorUpdateFilter;,
        Landroid/view/inputmethod/InputConnection$CursorUpdateMode;,
        Landroid/view/inputmethod/InputConnection$GetTextType;
    }
.end annotation


# static fields
.field public static final CURSOR_UPDATE_FILTER_CHARACTER_BOUNDS:I = 0x8

.field public static final CURSOR_UPDATE_FILTER_EDITOR_BOUNDS:I = 0x4

.field public static final CURSOR_UPDATE_FILTER_INSERTION_MARKER:I = 0x10

.field public static final CURSOR_UPDATE_IMMEDIATE:I = 0x1

.field public static final CURSOR_UPDATE_MONITOR:I = 0x2

.field public static final GET_EXTRACTED_TEXT_MONITOR:I = 0x1

.field public static final GET_TEXT_WITH_STYLES:I = 0x1

.field public static final INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I = 0x1


# virtual methods
.method public abstract beginBatchEdit()Z
.end method

.method public abstract clearMetaKeyStates(I)Z
.end method

.method public abstract closeConnection()V
.end method

.method public abstract commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
.end method

.method public abstract commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
.end method

.method public abstract commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
.end method

.method public abstract commitText(Ljava/lang/CharSequence;I)Z
.end method

.method public commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 5

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public abstract deleteSurroundingText(II)Z
.end method

.method public abstract deleteSurroundingTextInCodePoints(II)Z
.end method

.method public abstract endBatchEdit()Z
.end method

.method public abstract finishComposingText()Z
.end method

.method public abstract getCursorCapsMode(I)I
.end method

.method public abstract getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getSelectedText(I)Ljava/lang/CharSequence;
.end method

.method public getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .registers 12

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-interface {p0, p1, p3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    invoke-interface {p0, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_15

    return-object v1

    :cond_15
    invoke-interface {p0, p3}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1d

    const-string v1, ""

    :cond_1d
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Landroid/view/inputmethod/SurroundingText;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, -0x1

    invoke-direct {v4, v3, v5, v6, v7}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    return-object v4
.end method

.method public abstract getTextAfterCursor(II)Ljava/lang/CharSequence;
.end method

.method public abstract getTextBeforeCursor(II)Ljava/lang/CharSequence;
.end method

.method public abstract performContextMenuAction(I)Z
.end method

.method public abstract performEditorAction(I)Z
.end method

.method public abstract performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public performSpellCheck()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract reportFullscreenMode(Z)Z
.end method

.method public abstract requestCursorUpdates(I)Z
.end method

.method public requestCursorUpdates(II)Z
    .registers 4

    if-nez p2, :cond_7

    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    move-result v0

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public abstract sendKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract setComposingRegion(II)Z
.end method

.method public setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z
    .registers 5

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    move-result v0

    return v0
.end method

.method public abstract setComposingText(Ljava/lang/CharSequence;I)Z
.end method

.method public setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 5

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public setImeConsumesInput(Z)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public abstract setSelection(II)Z
.end method

.method public takeSnapshot()Landroid/view/inputmethod/TextSnapshot;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
