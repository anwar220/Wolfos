# classes4.dex

.class public final Lcom/android/internal/view/inline/InlineTooltipUi;
.super Landroid/widget/PopupWindow;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;
    }
.end annotation


# static fields
.field private static final FIRST_TIME_SHOW_DEFAULT_DELAY_MS:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "InlineTooltipUi"


# instance fields
.field private final mAnchorOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mAnchoredOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mContentContainer:Landroid/view/ViewGroup;

.field private mDelayShowAtStart:Z

.field private mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

.field private mDelaying:Z

.field private mHasEverDetached:Z

.field private mShowDelayConfigMs:I

.field private mShowing:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHasEverDetached(Lcom/android/internal/view/inline/InlineTooltipUi;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mHasEverDetached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDelaying(Lcom/android/internal/view/inline/InlineTooltipUi;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelaying:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasEverDetached(Lcom/android/internal/view/inline/InlineTooltipUi;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mHasEverDetached:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustPosition(Lcom/android/internal/view/inline/InlineTooltipUi;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->adjustPosition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateInner(Lcom/android/internal/view/inline/InlineTooltipUi;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->updateInner(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowAtStart:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelaying:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mTmpRect:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/internal/view/inline/InlineTooltipUi$1;

    invoke-direct {v2, p0}, Lcom/android/internal/view/inline/InlineTooltipUi$1;-><init>(Lcom/android/internal/view/inline/InlineTooltipUi;)V

    iput-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchorOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v2, Lcom/android/internal/view/inline/InlineTooltipUi$2;

    invoke-direct {v2, p0}, Lcom/android/internal/view/inline/InlineTooltipUi$2;-><init>(Lcom/android/internal/view/inline/InlineTooltipUi;)V

    iput-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchoredOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v2, Landroid/widget/LinearLayout;

    new-instance v3, Landroid/content/ContextWrapper;

    invoke-direct {v3, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWm:Landroid/view/WindowManager;

    const-string v2, "autofill"

    const-string v3, "autofill_inline_tooltip_first_show_delay"

    const/16 v4, 0xfa

    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowDelayConfigMs:I

    invoke-virtual {p0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->setTouchModal(Z)V

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setOutsideTouchable(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setInputMethodMode(I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->setFocusable(Z)V

    return-void
.end method

.method private adjustPosition()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->update(Landroid/view/View;)V

    return-void
.end method

.method private getPreferHeight(Landroid/view/View;)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    return v1
.end method

.method private hide()V
    .registers 4

    const-string v0, "InlineTooltipUi"

    :try_start_2
    iget-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowing:Z

    if-eqz v1, :cond_20

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_f

    const-string v1, "hide()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchoredOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowing:Z
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_20} :catch_21

    :cond_20
    goto :goto_27

    :catch_21
    move-exception v1

    const-string v2, "Exception hiding window "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    return-void
.end method

.method private removeDelayShowTooltip(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    :cond_a
    return-void
.end method

.method private show(Landroid/view/WindowManager$LayoutParams;)V
    .registers 6

    const-string v0, "InlineTooltipUi"

    iput-object p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    :try_start_4
    const-string v1, "android"

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v1, "Autofill Inline Tooltip"

    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowing:Z

    if-nez v1, :cond_38

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/16 v1, 0x28

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x400000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchoredOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowing:Z

    goto :goto_77

    :cond_38
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3f
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_3f} :catch_58
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_3f} :catch_40

    goto :goto_77

    :catch_40
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception showing window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_78

    :catch_58
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed with token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gone."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_77
    nop

    :goto_78
    return-void
.end method

.method private updateInner(Landroid/view/View;)V
    .registers 10

    iget-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mHasEverDetached:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setWindowLayoutType(I)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->getPreferHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->isShowing()Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->setWidth(I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->setHeight(I)V

    const/4 v1, 0x0

    const/16 v2, 0x31

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/internal/view/inline/InlineTooltipUi;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_31

    :cond_28
    const/4 v4, 0x0

    const/4 v6, -0x2

    const/4 v7, -0x2

    move-object v2, p0

    move-object v3, p1

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/view/inline/InlineTooltipUi;->update(Landroid/view/View;IIII)V

    :goto_31
    return-void
.end method


# virtual methods
.method protected attachToAnchor(Landroid/view/View;III)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchorOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public close()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->dismiss()V

    return-void
.end method

.method protected detachFromAnchor()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mAnchorOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-direct {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->removeDelayShowTooltip(Landroid/view/View;)V

    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mHasEverDetached:Z

    invoke-super {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    return-void
.end method

.method public dismiss()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_28

    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setTransitioningToDismiss(Z)V

    invoke-direct {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->hide()V

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->detachFromAnchor()V

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_24
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :cond_28
    :goto_28
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7c

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Window: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "showing: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowing:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "view: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_53

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "params: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_53
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "screen coordinates: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_66

    const-string v1, "N/A"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7c

    :cond_66
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_7c
    :goto_7c
    return-void
.end method

.method protected findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .registers 14

    invoke-super/range {p0 .. p8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mTmpRect:Landroid/graphics/Rect;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-eqz v0, :cond_20

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->getPreferHeight(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_26

    :cond_20
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_26
    :goto_26
    return v0
.end method

.method public getAnimationStyle()I
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getElevation()F
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected hasContentView()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected hasDecorView()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setElevation(F)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTooltipView(Landroid/widget/inline/InlineContentView;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t call this!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .registers 15

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setShowing(Z)V

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->setDropDown(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/view/inline/InlineTooltipUi;->attachToAnchor(Landroid/view/View;III)V

    nop

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getAllowScrollingAnchorParent()Z

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/view/inline/InlineTooltipUi;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->updateAboveAnchor(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->show(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public update(Landroid/view/View;)V
    .registers 6

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->removeDelayShowTooltip(Landroid/view/View;)V

    :cond_b
    return-void

    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowAtStart:Z

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowAtStart:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelaying:Z

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    if-nez v0, :cond_21

    new-instance v0, Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;-><init>(Lcom/android/internal/view/inline/InlineTooltipUi;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    :cond_21
    iget v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mShowDelayConfigMs:I

    nop

    :try_start_24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "animator_duration_scale"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v1
    :try_end_32
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_24 .. :try_end_32} :catch_36

    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    goto :goto_37

    :catch_36
    move-exception v1

    :goto_37
    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelayShowTooltip:Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_46

    :cond_3e
    iget-boolean v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi;->mDelaying:Z

    if-nez v0, :cond_46

    invoke-direct {p0, p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->updateInner(Landroid/view/View;)V

    goto :goto_47

    :cond_46
    :goto_46
    nop

    :goto_47
    return-void
.end method

.method protected update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p2}, Lcom/android/internal/view/inline/InlineTooltipUi;->show(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_d

    :cond_a
    invoke-direct {p0}, Lcom/android/internal/view/inline/InlineTooltipUi;->hide()V

    :goto_d
    return-void
.end method
