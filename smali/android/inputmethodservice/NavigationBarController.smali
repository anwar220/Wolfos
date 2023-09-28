# classes2.dex

.class final Landroid/inputmethodservice/NavigationBarController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/NavigationBarController$Impl;,
        Landroid/inputmethodservice/NavigationBarController$Callback;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->canImeRenderGesturalNavButtons()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Landroid/inputmethodservice/NavigationBarController$Impl;

    invoke-direct {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Impl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    goto :goto_11

    :cond_f
    sget-object v0, Landroid/inputmethodservice/NavigationBarController$Callback;->NOOP:Landroid/inputmethodservice/NavigationBarController$Callback;

    :goto_11
    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    return-void
.end method


# virtual methods
.method onDestroy()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->onDestroy()V

    return-void
.end method

.method onNavButtonFlagsChanged(I)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Callback;->onNavButtonFlagsChanged(I)V

    return-void
.end method

.method onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Callback;->onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V

    return-void
.end method

.method onViewInitialized()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->onViewInitialized()V

    return-void
.end method

.method onWindowShown()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->onWindowShown()V

    return-void
.end method

.method toDebugString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/NavigationBarController$Callback;->toDebugString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController;->mImpl:Landroid/inputmethodservice/NavigationBarController$Callback;

    invoke-interface {v0, p1, p2}, Landroid/inputmethodservice/NavigationBarController$Callback;->updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method
