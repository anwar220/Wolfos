# classes4.dex

.class public Lcom/android/internal/compat/DialogButtonPanel;
.super Landroid/widget/LinearLayout;


# instance fields
.field private final HORIZONTAL_MARGIN:I

.field private final VERTICAL_MARGIN:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/compat/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/compat/DialogButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "miuix_appcompat_dialog_btn_margin_vertical"

    const-string/jumbo v2, "miuix_appcompat_dialog_btn_margin_horizontal"

    const-string v3, "dimen"

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v4, "miuix.stub"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_43

    :cond_2b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_43
    invoke-virtual {p0}, Lcom/android/internal/compat/DialogButtonPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/compat/DialogButtonPanel;->HORIZONTAL_MARGIN:I

    invoke-virtual {p0}, Lcom/android/internal/compat/DialogButtonPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/compat/DialogButtonPanel;->VERTICAL_MARGIN:I

    return-void
.end method

.method private clearParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    return-void
.end method

.method private handleLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/compat/DialogButtonPanel;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/compat/DialogButtonPanel;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    const/4 v1, -0x1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-lez v0, :cond_1f

    iget v1, p0, Lcom/android/internal/compat/DialogButtonPanel;->VERTICAL_MARGIN:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1f

    :cond_15
    const/4 v1, 0x0

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-lez v0, :cond_1f

    iget v1, p0, Lcom/android/internal/compat/DialogButtonPanel;->HORIZONTAL_MARGIN:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    move-object v0, p3

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/internal/compat/DialogButtonPanel;->handleLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public clearVisibleChildMargins()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/compat/DialogButtonPanel;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_17

    invoke-virtual {p0, v2}, Lcom/android/internal/compat/DialogButtonPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_13

    goto :goto_17

    :cond_13
    const/4 v1, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    :goto_17
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/android/internal/compat/DialogButtonPanel;->clearParams(Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_22
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/internal/compat/DialogButtonPanel;->clearParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method
