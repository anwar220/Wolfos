# classes2.dex

.class public Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
.super Landroid/view/animation/LayoutAnimationController$AnimationParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/GridLayoutAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationParameters"
.end annotation


# instance fields
.field public column:I

.field public columnsCount:I

.field public row:I

.field public rowsCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    return-void
.end method
