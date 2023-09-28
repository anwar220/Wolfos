# classes4.dex

.class public Lcom/android/internal/graphics/palette/CelebiQuantizer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# instance fields
.field private mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuantizedColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/graphics/palette/CelebiQuantizer;->mSwatches:Ljava/util/List;

    return-object v0
.end method

.method public quantize([II)V
    .registers 8

    new-instance v0, Lcom/android/internal/graphics/palette/WuQuantizer;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/WuQuantizer;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->quantize([II)V

    new-instance v1, Lcom/android/internal/graphics/palette/WSMeansQuantizer;

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getColors()[I

    move-result-object v2

    new-instance v3, Lcom/android/internal/graphics/palette/LABPointProvider;

    invoke-direct {v3}, Lcom/android/internal/graphics/palette/LABPointProvider;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->inputPixelToCount()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/graphics/palette/WSMeansQuantizer;-><init>([ILcom/android/internal/graphics/palette/PointProvider;Ljava/util/Map;)V

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->quantize([II)V

    invoke-virtual {v1}, Lcom/android/internal/graphics/palette/WSMeansQuantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/graphics/palette/CelebiQuantizer;->mSwatches:Ljava/util/List;

    return-void
.end method
