# classes.dex

.class public final enum Landroid/audio/policy/configuration/V7_0/HalVersion;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/audio/policy/configuration/V7_0/HalVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/audio/policy/configuration/V7_0/HalVersion;

.field public static final enum _2_0:Landroid/audio/policy/configuration/V7_0/HalVersion;

.field public static final enum _3_0:Landroid/audio/policy/configuration/V7_0/HalVersion;


# instance fields
.field private final rawName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Landroid/audio/policy/configuration/V7_0/HalVersion;

    const-string v1, "_2_0"

    const/4 v2, 0x0

    const-string v3, "2.0"

    invoke-direct {v0, v1, v2, v3}, Landroid/audio/policy/configuration/V7_0/HalVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/HalVersion;->_2_0:Landroid/audio/policy/configuration/V7_0/HalVersion;

    new-instance v1, Landroid/audio/policy/configuration/V7_0/HalVersion;

    const-string v3, "_3_0"

    const/4 v4, 0x1

    const-string v5, "3.0"

    invoke-direct {v1, v3, v4, v5}, Landroid/audio/policy/configuration/V7_0/HalVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroid/audio/policy/configuration/V7_0/HalVersion;->_3_0:Landroid/audio/policy/configuration/V7_0/HalVersion;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/audio/policy/configuration/V7_0/HalVersion;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroid/audio/policy/configuration/V7_0/HalVersion;->$VALUES:[Landroid/audio/policy/configuration/V7_0/HalVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/audio/policy/configuration/V7_0/HalVersion;->rawName:Ljava/lang/String;

    return-void
.end method

.method static fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/HalVersion;
    .registers 6

    invoke-static {}, Landroid/audio/policy/configuration/V7_0/HalVersion;->values()[Landroid/audio/policy/configuration/V7_0/HalVersion;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/audio/policy/configuration/V7_0/HalVersion;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/HalVersion;
    .registers 2

    const-class v0, Landroid/audio/policy/configuration/V7_0/HalVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/audio/policy/configuration/V7_0/HalVersion;

    return-object v0
.end method

.method public static values()[Landroid/audio/policy/configuration/V7_0/HalVersion;
    .registers 1

    sget-object v0, Landroid/audio/policy/configuration/V7_0/HalVersion;->$VALUES:[Landroid/audio/policy/configuration/V7_0/HalVersion;

    invoke-virtual {v0}, [Landroid/audio/policy/configuration/V7_0/HalVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/audio/policy/configuration/V7_0/HalVersion;

    return-object v0
.end method


# virtual methods
.method public getRawName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/HalVersion;->rawName:Ljava/lang/String;

    return-object v0
.end method
