# classes.dex

.class public final enum Landroid/graphics/PorterDuff$Mode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/PorterDuff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/PorterDuff$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/PorterDuff$Mode;

.field public static final enum ADD:Landroid/graphics/PorterDuff$Mode;

.field public static final enum CLEAR:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DARKEN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_ATOP:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_IN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_OUT:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_OVER:Landroid/graphics/PorterDuff$Mode;

.field public static final enum LIGHTEN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum MULTIPLY:Landroid/graphics/PorterDuff$Mode;

.field public static final enum OVERLAY:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SCREEN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_IN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_OUT:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_OVER:Landroid/graphics/PorterDuff$Mode;

.field public static final enum XOR:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .registers 21

    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "CLEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    new-instance v1, Landroid/graphics/PorterDuff$Mode;

    const-string v3, "SRC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    new-instance v3, Landroid/graphics/PorterDuff$Mode;

    const-string v5, "DST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    new-instance v5, Landroid/graphics/PorterDuff$Mode;

    const-string v7, "SRC_OVER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    new-instance v7, Landroid/graphics/PorterDuff$Mode;

    const-string v9, "DST_OVER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    new-instance v9, Landroid/graphics/PorterDuff$Mode;

    const-string v11, "SRC_IN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    new-instance v11, Landroid/graphics/PorterDuff$Mode;

    const-string v13, "DST_IN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    new-instance v13, Landroid/graphics/PorterDuff$Mode;

    const-string v15, "SRC_OUT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    new-instance v15, Landroid/graphics/PorterDuff$Mode;

    const-string v14, "DST_OUT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    new-instance v14, Landroid/graphics/PorterDuff$Mode;

    const-string v12, "SRC_ATOP"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    new-instance v12, Landroid/graphics/PorterDuff$Mode;

    const-string v10, "DST_ATOP"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    new-instance v10, Landroid/graphics/PorterDuff$Mode;

    const-string v8, "XOR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    new-instance v8, Landroid/graphics/PorterDuff$Mode;

    const-string v6, "DARKEN"

    const/16 v4, 0xc

    const/16 v2, 0x10

    invoke-direct {v8, v6, v4, v2}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    new-instance v6, Landroid/graphics/PorterDuff$Mode;

    const-string v2, "LIGHTEN"

    const/16 v4, 0xd

    move-object/from16 v16, v8

    const/16 v8, 0x11

    invoke-direct {v6, v2, v4, v8}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    new-instance v2, Landroid/graphics/PorterDuff$Mode;

    const-string v8, "MULTIPLY"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v2, v8, v6, v4}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    new-instance v8, Landroid/graphics/PorterDuff$Mode;

    const-string v4, "SCREEN"

    move-object/from16 v18, v2

    const/16 v2, 0xf

    invoke-direct {v8, v4, v2, v6}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    new-instance v4, Landroid/graphics/PorterDuff$Mode;

    const-string v6, "ADD"

    move-object/from16 v19, v8

    const/16 v2, 0x10

    const/16 v8, 0xc

    invoke-direct {v4, v6, v2, v8}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    new-instance v2, Landroid/graphics/PorterDuff$Mode;

    const-string v6, "OVERLAY"

    move-object/from16 v20, v4

    const/16 v4, 0x11

    const/16 v8, 0xf

    invoke-direct {v2, v6, v4, v8}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    const/16 v4, 0x12

    new-array v4, v4, [Landroid/graphics/PorterDuff$Mode;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v2, v4, v0

    sput-object v4, Landroid/graphics/PorterDuff$Mode;->$VALUES:[Landroid/graphics/PorterDuff$Mode;

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

    iput p3, p0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    const-class v0, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public static values()[Landroid/graphics/PorterDuff$Mode;
    .registers 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->$VALUES:[Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, [Landroid/graphics/PorterDuff$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method
