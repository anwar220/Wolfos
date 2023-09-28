# classes.dex

.class public Landroid/accessibilityservice/InputMethod;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/InputMethod$SessionImpl;,
        Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "A11yInputMethod"


# instance fields
.field private mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mInputStarted:Z

.field private final mService:Landroid/accessibilityservice/AccessibilityService;

.field private mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;


# direct methods
.method static bridge synthetic -$$Nest$fgetmService(Landroid/accessibilityservice/InputMethod;)Landroid/accessibilityservice/AccessibilityService;
    .registers 1

    iget-object p0, p0, Landroid/accessibilityservice/InputMethod;->mService:Landroid/accessibilityservice/AccessibilityService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartedInputConnection(Landroid/accessibilityservice/InputMethod;)Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    .registers 1

    iget-object p0, p0, Landroid/accessibilityservice/InputMethod;->mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    return-object p0
.end method

.method public constructor <init>(Landroid/accessibilityservice/AccessibilityService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/InputMethod;->mService:Landroid/accessibilityservice/AccessibilityService;

    return-void
.end method


# virtual methods
.method final createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .registers 6

    new-instance v0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;

    iget-object v1, p0, Landroid/accessibilityservice/InputMethod;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/accessibilityservice/InputMethod$SessionImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/accessibilityservice/InputMethod$SessionImpl;-><init>(Landroid/accessibilityservice/InputMethod;Landroid/accessibilityservice/InputMethod$SessionImpl-IA;)V

    invoke-direct {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;-><init>(Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityInputMethodSession;)V

    :try_start_11
    iget-object v1, p0, Landroid/accessibilityservice/InputMethod;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;->sessionCreated(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    move-exception v1

    :goto_1c
    return-void
.end method

.method final doFinishInput()V
    .registers 3

    const-string v0, "A11yInputMethod"

    const-string v1, "CALL: doFinishInput"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Landroid/accessibilityservice/InputMethod;->mInputStarted:Z

    if-eqz v1, :cond_13

    const-string v1, "CALL: onFinishInput"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/accessibilityservice/InputMethod;->onFinishInput()V

    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/accessibilityservice/InputMethod;->mInputStarted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/InputMethod;->mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    iput-object v0, p0, Landroid/accessibilityservice/InputMethod;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method

.method final doStartInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 6

    if-eqz p1, :cond_4

    if-nez p3, :cond_e

    :cond_4
    iget-boolean v0, p0, Landroid/accessibilityservice/InputMethod;->mInputStarted:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/accessibilityservice/InputMethod;->doFinishInput()V

    if-nez p1, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/accessibilityservice/InputMethod;->mInputStarted:Z

    iput-object p1, p0, Landroid/accessibilityservice/InputMethod;->mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    iput-object p2, p0, Landroid/accessibilityservice/InputMethod;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v0, "A11yInputMethod"

    const-string v1, "CALL: onStartInput"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Landroid/accessibilityservice/InputMethod;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public final getCurrentInputConnection()Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod;->mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_a

    new-instance v1, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;

    invoke-direct {v1, p0, v0}, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;-><init>(Landroid/accessibilityservice/InputMethod;Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;)V

    return-object v1

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .registers 2

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public final getCurrentInputStarted()Z
    .registers 2

    iget-boolean v0, p0, Landroid/accessibilityservice/InputMethod;->mInputStarted:Z

    return v0
.end method

.method public onFinishInput()V
    .registers 1

    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3

    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .registers 7

    return-void
.end method

.method final restartInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restartInput(): editor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A11yInputMethod"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x20

    const-string v2, "AccessibilityService.restartInput"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Landroid/accessibilityservice/InputMethod;->doStartInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method final startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startInput(): editor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A11yInputMethod"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x20

    const-string v2, "AccessibilityService.startInput"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Landroid/accessibilityservice/InputMethod;->doStartInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
