# classes.dex

.class final Landroid/accessibilityservice/InputMethod$SessionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/accessibilityservice/AccessibilityInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/InputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionImpl"
.end annotation


# instance fields
.field mEnabled:Z

.field final synthetic this$0:Landroid/accessibilityservice/InputMethod;


# direct methods
.method private constructor <init>(Landroid/accessibilityservice/InputMethod;)V
    .registers 2

    iput-object p1, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->this$0:Landroid/accessibilityservice/InputMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->mEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/accessibilityservice/InputMethod;Landroid/accessibilityservice/InputMethod$SessionImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/accessibilityservice/InputMethod$SessionImpl;-><init>(Landroid/accessibilityservice/InputMethod;)V

    return-void
.end method


# virtual methods
.method public finishInput()V
    .registers 2

    iget-boolean v0, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->mEnabled:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->this$0:Landroid/accessibilityservice/InputMethod;

    invoke-virtual {v0}, Landroid/accessibilityservice/InputMethod;->doFinishInput()V

    :cond_9
    return-void
.end method

.method public invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 7

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->this$0:Landroid/accessibilityservice/InputMethod;

    invoke-static {v0}, Landroid/accessibilityservice/InputMethod;->-$$Nest$fgetmStartedInputConnection(Landroid/accessibilityservice/InputMethod;)Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;->isSameConnection(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->this$0:Landroid/accessibilityservice/InputMethod;

    invoke-static {v0}, Landroid/accessibilityservice/InputMethod;->-$$Nest$fgetmService(Landroid/accessibilityservice/InputMethod;)Landroid/accessibilityservice/AccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    iget-object v0, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->this$0:Landroid/accessibilityservice/InputMethod;

    new-instance v1, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-static {v0}, Landroid/accessibilityservice/InputMethod;->-$$Nest$fgetmStartedInputConnection(Landroid/accessibilityservice/InputMethod;)Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;-><init>(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;I)V

    invoke-virtual {v0, v1, p1}, Landroid/accessibilityservice/InputMethod;->restartInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->mEnabled:Z

    return-void
.end method

.method public updateSelection(IIIIII)V
    .registers 15

    iget-boolean v0, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->mEnabled:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Landroid/accessibilityservice/InputMethod$SessionImpl;->this$0:Landroid/accessibilityservice/InputMethod;

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/accessibilityservice/InputMethod;->onUpdateSelection(IIIIII)V

    :cond_f
    return-void
.end method
