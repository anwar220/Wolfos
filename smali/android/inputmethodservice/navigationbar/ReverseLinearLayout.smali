# classes2.dex

.class Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;,
        Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$Reversible;
    }
.end annotation


# instance fields
.field private mIsAlternativeOrder:Z

.field private mIsLayoutReverse:Z


# direct methods
.method static bridge synthetic -$$Nest$smreverseGroup(Landroid/view/ViewGroup;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->reverseGroup(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static reverseGroup(Landroid/view/ViewGroup;Z)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1, p1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1c

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->reverseGroup(Landroid/view/ViewGroup;Z)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method private static reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V
    .registers 7

    instance-of v0, p1, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$Reversible;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$Reversible;

    invoke-interface {v0, p2}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$Reversible;->reverse(Z)V

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    if-ne v0, v1, :cond_31

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-ne v0, v1, :cond_31

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_31
    if-nez p0, :cond_34

    return-void

    :cond_34
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private updateOrder()V
    .registers 7

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    move v0, v1

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsAlternativeOrder:Z

    xor-int/2addr v1, v0

    iget-boolean v2, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eq v2, v1, :cond_3c

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->getChildCount()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v2, :cond_27

    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_27
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->removeAllViews()V

    add-int/lit8 v4, v2, -0x1

    :goto_2c
    if-ltz v4, :cond_3a

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-super {p0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2c

    :cond_3a
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    :cond_3c
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    invoke-static {v0, p1, v1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_15

    :cond_12
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_15
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    invoke-static {p2, p1, v0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_11
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->updateOrder()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->updateOrder()V

    return-void
.end method

.method public setAlternativeOrder(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsAlternativeOrder:Z

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->updateOrder()V

    return-void
.end method
