# classes3.dex

.class public final enum Landroid/renderscript/ProgramStore$DepthFunc;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DepthFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/ProgramStore$DepthFunc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum GREATER:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum GREATER_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum LESS:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum LESS_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum NOT_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    new-instance v1, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v3, "LESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    new-instance v3, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v5, "LESS_OR_EQUAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/renderscript/ProgramStore$DepthFunc;->LESS_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    new-instance v5, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v7, "GREATER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/renderscript/ProgramStore$DepthFunc;->GREATER:Landroid/renderscript/ProgramStore$DepthFunc;

    new-instance v7, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v9, "GREATER_OR_EQUAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/renderscript/ProgramStore$DepthFunc;->GREATER_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    new-instance v9, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v11, "EQUAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/renderscript/ProgramStore$DepthFunc;->EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    new-instance v11, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v13, "NOT_EQUAL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/renderscript/ProgramStore$DepthFunc;->NOT_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    const/4 v13, 0x7

    new-array v13, v13, [Landroid/renderscript/ProgramStore$DepthFunc;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Landroid/renderscript/ProgramStore$DepthFunc;->$VALUES:[Landroid/renderscript/ProgramStore$DepthFunc;

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

    iput p3, p0, Landroid/renderscript/ProgramStore$DepthFunc;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramStore$DepthFunc;
    .registers 2

    const-class v0, Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ProgramStore$DepthFunc;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/ProgramStore$DepthFunc;
    .registers 1

    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->$VALUES:[Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramStore$DepthFunc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramStore$DepthFunc;

    return-object v0
.end method
