# classes4.dex

.class Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/WuQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateBoxesResult"
.end annotation


# instance fields
.field final mRequestedCount:I

.field final mResultCount:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;->mRequestedCount:I

    iput p2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;->mResultCount:I

    return-void
.end method
