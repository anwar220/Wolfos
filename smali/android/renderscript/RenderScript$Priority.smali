# classes3.dex

.class public final enum Landroid/renderscript/RenderScript$Priority;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/RenderScript$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/RenderScript$Priority;

.field public static final enum LOW:Landroid/renderscript/RenderScript$Priority;

.field public static final enum NORMAL:Landroid/renderscript/RenderScript$Priority;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Landroid/renderscript/RenderScript$Priority;

    const-string v1, "LOW"

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    new-instance v1, Landroid/renderscript/RenderScript$Priority;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    const/4 v5, -0x8

    invoke-direct {v1, v3, v4, v5}, Landroid/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/renderscript/RenderScript$Priority;->NORMAL:Landroid/renderscript/RenderScript$Priority;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/renderscript/RenderScript$Priority;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroid/renderscript/RenderScript$Priority;->$VALUES:[Landroid/renderscript/RenderScript$Priority;

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

    iput p3, p0, Landroid/renderscript/RenderScript$Priority;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/RenderScript$Priority;
    .registers 2

    const-class v0, Landroid/renderscript/RenderScript$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/RenderScript$Priority;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/RenderScript$Priority;
    .registers 1

    sget-object v0, Landroid/renderscript/RenderScript$Priority;->$VALUES:[Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v0}, [Landroid/renderscript/RenderScript$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/RenderScript$Priority;

    return-object v0
.end method
