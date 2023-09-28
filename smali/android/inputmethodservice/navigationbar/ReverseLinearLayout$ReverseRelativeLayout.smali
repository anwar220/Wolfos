# classes2.dex

.class public Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$Reversible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReverseRelativeLayout"
.end annotation


# instance fields
.field private mDefaultGravity:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    return-void
.end method


# virtual methods
.method public reverse(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->updateGravity(Z)V

    invoke-static {p0, p1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->-$$Nest$smreverseGroup(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public setDefaultGravity(I)V
    .registers 2

    iput p1, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    return-void
.end method

.method public updateGravity(Z)V
    .registers 6

    iget v0, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    const/16 v1, 0x50

    const/16 v2, 0x30

    if-eq v0, v2, :cond_b

    if-eq v0, v1, :cond_b

    return-void

    :cond_b
    iget v3, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    if-eqz p1, :cond_14

    if-ne v0, v2, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    move v3, v1

    :cond_14
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->getGravity()I

    move-result v0

    if-eq v0, v3, :cond_1d

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;->setGravity(I)V

    :cond_1d
    return-void
.end method
