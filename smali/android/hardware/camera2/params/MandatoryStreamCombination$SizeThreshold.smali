# classes.dex

.class final enum Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SizeThreshold"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public static final enum s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v1, "VGA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v3, "PREVIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v3, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v5, "RECORD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v7, "MAXIMUM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v7, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string/jumbo v9, "s720p"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string/jumbo v11, "s1440p"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-string v13, "FULL_RES"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/4 v13, 0x7

    new-array v13, v13, [Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->$VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;
    .registers 2

    const-class v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    return-object v0
.end method

.method public static values()[Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->$VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-virtual {v0}, [Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    return-object v0
.end method
