# classes4.dex

.class Lcom/android/internal/graphics/palette/WuQuantizer$Box;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/WuQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Box"
.end annotation


# instance fields
.field public b0:I

.field public b1:I

.field public g0:I

.field public g1:I

.field public r0:I

.field public r1:I

.field public vol:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iput v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iput v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iput v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iput v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    iput v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iput v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/graphics/palette/WuQuantizer$Box-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/graphics/palette/WuQuantizer$Box;-><init>()V

    return-void
.end method
