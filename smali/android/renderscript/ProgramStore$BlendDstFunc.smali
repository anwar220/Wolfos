# classes3.dex

.class public final enum Landroid/renderscript/ProgramStore$BlendDstFunc;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendDstFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/ProgramStore$BlendDstFunc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum ONE_MINUS_SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    new-instance v1, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v3, "ONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    new-instance v3, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v5, "SRC_COLOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/renderscript/ProgramStore$BlendDstFunc;->SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

    new-instance v5, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v7, "ONE_MINUS_SRC_COLOR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

    new-instance v7, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v9, "SRC_ALPHA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/renderscript/ProgramStore$BlendDstFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    new-instance v9, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v11, "ONE_MINUS_SRC_ALPHA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    new-instance v11, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v13, "DST_ALPHA"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/renderscript/ProgramStore$BlendDstFunc;->DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    new-instance v13, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v15, "ONE_MINUS_DST_ALPHA"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    const/16 v15, 0x8

    new-array v15, v15, [Landroid/renderscript/ProgramStore$BlendDstFunc;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Landroid/renderscript/ProgramStore$BlendDstFunc;->$VALUES:[Landroid/renderscript/ProgramStore$BlendDstFunc;

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

    iput p3, p0, Landroid/renderscript/ProgramStore$BlendDstFunc;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramStore$BlendDstFunc;
    .registers 2

    const-class v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/ProgramStore$BlendDstFunc;
    .registers 1

    sget-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->$VALUES:[Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramStore$BlendDstFunc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramStore$BlendDstFunc;

    return-object v0
.end method
