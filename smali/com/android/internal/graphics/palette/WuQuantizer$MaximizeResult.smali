# classes4.dex

.class Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/WuQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaximizeResult"
.end annotation


# instance fields
.field final mCutLocation:I

.field final mMaximum:D


# direct methods
.method constructor <init>(ID)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    iput-wide p2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mMaximum:D

    return-void
.end method
