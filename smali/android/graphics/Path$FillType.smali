# classes.dex

.class public final enum Landroid/graphics/Path$FillType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Path$FillType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Path$FillType;

.field public static final enum EVEN_ODD:Landroid/graphics/Path$FillType;

.field public static final enum INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

.field public static final enum INVERSE_WINDING:Landroid/graphics/Path$FillType;

.field public static final enum WINDING:Landroid/graphics/Path$FillType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Landroid/graphics/Path$FillType;

    const-string v1, "WINDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    new-instance v1, Landroid/graphics/Path$FillType;

    const-string v3, "EVEN_ODD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    new-instance v3, Landroid/graphics/Path$FillType;

    const-string v5, "INVERSE_WINDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    new-instance v5, Landroid/graphics/Path$FillType;

    const-string v7, "INVERSE_EVEN_ODD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/graphics/Path$FillType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/graphics/Path$FillType;->$VALUES:[Landroid/graphics/Path$FillType;

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

    iput p3, p0, Landroid/graphics/Path$FillType;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Path$FillType;
    .registers 2

    const-class v0, Landroid/graphics/Path$FillType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public static values()[Landroid/graphics/Path$FillType;
    .registers 1

    sget-object v0, Landroid/graphics/Path$FillType;->$VALUES:[Landroid/graphics/Path$FillType;

    invoke-virtual {v0}, [Landroid/graphics/Path$FillType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Path$FillType;

    return-object v0
.end method
