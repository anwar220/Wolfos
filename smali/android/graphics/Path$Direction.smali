# classes.dex

.class public final enum Landroid/graphics/Path$Direction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Path$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Path$Direction;

.field public static final enum CCW:Landroid/graphics/Path$Direction;

.field public static final enum CW:Landroid/graphics/Path$Direction;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/graphics/Path$Direction;

    const-string v1, "CW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Path$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    new-instance v1, Landroid/graphics/Path$Direction;

    const-string v3, "CCW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/Path$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/Path$Direction;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroid/graphics/Path$Direction;->$VALUES:[Landroid/graphics/Path$Direction;

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

    iput p3, p0, Landroid/graphics/Path$Direction;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Path$Direction;
    .registers 2

    const-class v0, Landroid/graphics/Path$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path$Direction;

    return-object v0
.end method

.method public static values()[Landroid/graphics/Path$Direction;
    .registers 1

    sget-object v0, Landroid/graphics/Path$Direction;->$VALUES:[Landroid/graphics/Path$Direction;

    invoke-virtual {v0}, [Landroid/graphics/Path$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Path$Direction;

    return-object v0
.end method
