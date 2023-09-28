# classes4.dex

.class public Lcom/android/internal/compat/AlertControllerImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/AlertControllerImpl$ButtonHandler;
    }
.end annotation


# instance fields
.field private final mAlertDialogLayout:I

.field private mAlertDialogView:Landroid/view/ViewGroup;

.field private mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private mDialogInterface:Landroid/content/DialogInterface;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mMiuixPackageName:Ljava/lang/String;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static bridge synthetic -$$Nest$fgetmButtonNegative(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonNegativeMessage(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonNeutral(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonNeutralMessage(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonPositive(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonPositiveMessage(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialogInterface(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/content/DialogInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/internal/compat/AlertControllerImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/compat/AlertControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/compat/AlertControllerImpl$1;-><init>(Lcom/android/internal/compat/AlertControllerImpl;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonHandler:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/compat/AlertControllerImpl;->mWindow:Landroid/view/Window;

    iput-object p2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mDialogInterface:Landroid/content/DialogInterface;

    new-instance v0, Lcom/android/internal/compat/AlertControllerImpl$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/android/internal/compat/AlertControllerImpl$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string/jumbo v0, "miuix.stub"

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    goto :goto_2f

    :cond_29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    :goto_2f
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string/jumbo v2, "miuix_appcompat_alert_dialog"

    const-string/jumbo v3, "layout"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogLayout:I

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    return-void
.end method

.method private ensureSurDecor()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string v2, "dialog_dim_bg"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private isEllipsized(Landroid/widget/TextView;I)Z
    .registers 6

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    if-le v1, v0, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    return v2
.end method

.method private needRemoveCustomMargin()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private relayoutButtons(Landroid/widget/LinearLayout;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    if-eqz v0, :cond_e

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_e
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v0, :cond_15

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_15
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    if-eqz v0, :cond_1c

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1c
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x1020019

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_34

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_34

    :cond_25
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_34
    :goto_34
    const v2, 0x102001a

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    if-eqz v2, :cond_63

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_63

    :cond_54
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_63
    :goto_63
    const v2, 0x102001b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v2, :cond_92

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_92

    :cond_83
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_92
    :goto_92
    if-eqz v0, :cond_f7

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string v4, "buttonGroup"

    const-string v5, "id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v4, 0x2

    if-le v1, v4, :cond_b1

    invoke-direct {p0, v3}, Lcom/android/internal/compat/AlertControllerImpl;->relayoutButtons(Landroid/widget/LinearLayout;)V

    goto :goto_f6

    :cond_b1
    const/4 v5, 0x1

    if-ne v1, v5, :cond_b5

    goto :goto_f6

    :cond_b5
    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v8, v5, v7

    div-int/2addr v8, v4

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_d5
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_f1

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    if-nez v11, :cond_eb

    invoke-direct {p0, v10, v8}, Lcom/android/internal/compat/AlertControllerImpl;->isEllipsized(Landroid/widget/TextView;I)Z

    move-result v4

    :cond_eb
    if-eqz v4, :cond_ee

    goto :goto_f1

    :cond_ee
    add-int/lit8 v9, v9, 0x1

    goto :goto_d5

    :cond_f1
    :goto_f1
    if-eqz v4, :cond_f6

    invoke-direct {p0, v3}, Lcom/android/internal/compat/AlertControllerImpl;->relayoutButtons(Landroid/widget/LinearLayout;)V

    :cond_f6
    :goto_f6
    goto :goto_fa

    :cond_f7
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_fa
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string/jumbo v2, "scrollView"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFocusable(Z)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private setupCustom(Landroid/widget/FrameLayout;)V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    const v2, 0x102002b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_34

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_34
    invoke-direct {p0}, Lcom/android/internal/compat/AlertControllerImpl;->needRemoveCustomMargin()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_43

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_43
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mView:Landroid/view/View;

    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_62

    check-cast v2, Landroid/view/ViewGroup;

    const v4, 0x102000d

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5c

    instance-of v5, v4, Landroid/widget/ProgressBar;

    if-nez v5, :cond_5c

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_62

    :cond_5c
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_62
    :goto_62
    goto :goto_68

    :cond_63
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_68
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string v3, "alertTitle"

    const-string v4, "id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    :cond_28
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2d
    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 3

    packed-switch p1, :pswitch_data_e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xffffffff
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    :pswitch_8  #0xfffffffe
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    :pswitch_b  #0xfffffffd
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutral:Landroid/widget/Button;

    return-object v0

    :pswitch_data_e
    .packed-switch -0x3
        :pswitch_b  #fffffffd
        :pswitch_8  #fffffffe
        :pswitch_5  #ffffffff
    .end packed-switch
.end method

.method public installContent()V
    .registers 5

    invoke-direct {p0}, Lcom/android/internal/compat/AlertControllerImpl;->ensureSurDecor()V

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string/jumbo v2, "parentPanel"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/internal/compat/AlertControllerImpl;->setupView()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 7

    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_a
    packed-switch p1, :pswitch_data_26

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15  #0xffffffff
    iput-object p2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositiveText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_24

    :pswitch_1a  #0xfffffffe
    iput-object p2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_24

    :pswitch_1f  #0xfffffffd
    iput-object p2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutralText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/internal/compat/AlertControllerImpl;->mButtonNeutralMessage:Landroid/os/Message;

    nop

    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch -0x3
        :pswitch_1f  #fffffffd
        :pswitch_1a  #fffffffe
        :pswitch_15  #ffffffff
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mView:Landroid/view/View;

    return-void
.end method

.method public setupView()V
    .registers 9

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string/jumbo v2, "topPanel"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1e

    invoke-direct {p0, v1}, Lcom/android/internal/compat/AlertControllerImpl;->setupTitle(Landroid/view/ViewGroup;)V

    :cond_1e
    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string v5, "contentPanel"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3b

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3b
    iget-object v4, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string v6, "customPanel"

    invoke-virtual {v4, v6, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_56

    invoke-direct {p0, v4}, Lcom/android/internal/compat/AlertControllerImpl;->setupCustom(Landroid/widget/FrameLayout;)V

    :cond_56
    iget-object v5, p0, Lcom/android/internal/compat/AlertControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/compat/AlertControllerImpl;->mMiuixPackageName:Ljava/lang/String;

    const-string v7, "buttonPanel"

    invoke-virtual {v5, v7, v3, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/compat/AlertControllerImpl;->mAlertDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_71

    invoke-direct {p0, v3}, Lcom/android/internal/compat/AlertControllerImpl;->setupButtons(Landroid/view/ViewGroup;)V

    :cond_71
    return-void
.end method
