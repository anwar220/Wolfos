# classes.dex

.class public final enum Landroid/graphics/Paint$Style;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Paint$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Paint$Style;

.field public static final enum FILL:Landroid/graphics/Paint$Style;

.field public static final enum FILL_AND_STROKE:Landroid/graphics/Paint$Style;

.field public static final enum STROKE:Landroid/graphics/Paint$Style;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Landroid/graphics/Paint$Style;

    const-string v1, "FILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Paint$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    new-instance v1, Landroid/graphics/Paint$Style;

    const-string v3, "STROKE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/Paint$Style;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    new-instance v3, Landroid/graphics/Paint$Style;

    const-string v5, "FILL_AND_STROKE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/Paint$Style;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/Paint$Style;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/graphics/Paint$Style;->$VALUES:[Landroid/graphics/Paint$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/graphics/Paint$Style;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Paint$Style;
    .registers 2

    const-class v0, Landroid/graphics/Paint$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public static values()[Landroid/graphics/Paint$Style;
    .registers 1

    sget-object v0, Landroid/graphics/Paint$Style;->$VALUES:[Landroid/graphics/Paint$Style;

    invoke-virtual {v0}, [Landroid/graphics/Paint$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Paint$Style;

    return-object v0
.end method
