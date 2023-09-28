# classes2.dex

.class final Landroid/inputmethodservice/InkWindow;
.super Lcom/android/internal/policy/PhoneWindow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InkWindow$InkVisibilityListener;
    }
.end annotation


# instance fields
.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mInkView:Landroid/view/View;

.field private mInkViewVisibilityListener:Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

.field private mIsViewAdded:Z

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmInkView(Landroid/inputmethodservice/InkWindow;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInkViewVisibilityListener(Landroid/inputmethodservice/InkWindow;)Landroid/inputmethodservice/InkWindow$InkVisibilityListener;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/InkWindow;->mInkViewVisibilityListener:Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmGlobalLayoutListener(Landroid/inputmethodservice/InkWindow;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x7db

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InkWindow;->setType(I)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InkWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x318

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InkWindow;->addFlags(I)V

    const v1, 0x106000d

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InkWindow;->setBackgroundDrawableResource(I)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v1}, Landroid/inputmethodservice/InkWindow;->setLayout(II)V

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Landroid/inputmethodservice/InkWindow;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private show(Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "InputMethodService"

    const-string v1, "DecorView is not set for InkWindow. show() failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_16

    const/4 v1, 0x4

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Landroid/inputmethodservice/InkWindow;->mIsViewAdded:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InkWindow;->mIsViewAdded:Z

    :cond_2e
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    if-nez v0, :cond_7

    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    goto :goto_9

    :cond_7
    if-ne v0, p1, :cond_10

    :goto_9
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->initInkViewVisibilityListener()V

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one Child Inking view is permitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearContentView()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    invoke-super {p0}, Lcom/android/internal/policy/PhoneWindow;->clearContentView()V

    return-void
.end method

.method hide(Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_f

    const/16 v1, 0x8

    goto :goto_10

    :cond_f
    const/4 v1, 0x4

    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method initInkViewVisibilityListener()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkViewVisibilityListener:Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_d

    goto :goto_20

    :cond_d
    new-instance v0, Landroid/inputmethodservice/InkWindow$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InkWindow$1;-><init>(Landroid/inputmethodservice/InkWindow;)V

    iput-object v0, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InkWindow;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_20
    :goto_20
    return-void
.end method

.method initOnly()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InkWindow;->show(Z)V

    return-void
.end method

.method isInkViewVisible()Z
    .registers 2

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->initInkViewVisibilityListener()V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mInkView:Landroid/view/View;

    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->initInkViewVisibilityListener()V

    return-void
.end method

.method setInkViewVisibilityListener(Landroid/inputmethodservice/InkWindow$InkVisibilityListener;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InkWindow;->mInkViewVisibilityListener:Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->initInkViewVisibilityListener()V

    return-void
.end method

.method setToken(Landroid/os/IBinder;)V
    .registers 3

    invoke-virtual {p0}, Landroid/inputmethodservice/InkWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InkWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method show()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InkWindow;->show(Z)V

    return-void
.end method
