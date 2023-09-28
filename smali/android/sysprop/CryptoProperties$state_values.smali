# classes3.dex

.class public final enum Landroid/sysprop/CryptoProperties$state_values;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sysprop/CryptoProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "state_values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/sysprop/CryptoProperties$state_values;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/sysprop/CryptoProperties$state_values;

.field public static final enum ENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

.field public static final enum UNENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

.field public static final enum UNSUPPORTED:Landroid/sysprop/CryptoProperties$state_values;


# instance fields
.field private final propValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Landroid/sysprop/CryptoProperties$state_values;

    const-string v1, "ENCRYPTED"

    const/4 v2, 0x0

    const-string v3, "encrypted"

    invoke-direct {v0, v1, v2, v3}, Landroid/sysprop/CryptoProperties$state_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/CryptoProperties$state_values;->ENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

    new-instance v1, Landroid/sysprop/CryptoProperties$state_values;

    const-string v3, "UNENCRYPTED"

    const/4 v4, 0x1

    const-string/jumbo v5, "unencrypted"

    invoke-direct {v1, v3, v4, v5}, Landroid/sysprop/CryptoProperties$state_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroid/sysprop/CryptoProperties$state_values;->UNENCRYPTED:Landroid/sysprop/CryptoProperties$state_values;

    new-instance v3, Landroid/sysprop/CryptoProperties$state_values;

    const-string v5, "UNSUPPORTED"

    const/4 v6, 0x2

    const-string/jumbo v7, "unsupported"

    invoke-direct {v3, v5, v6, v7}, Landroid/sysprop/CryptoProperties$state_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Landroid/sysprop/CryptoProperties$state_values;->UNSUPPORTED:Landroid/sysprop/CryptoProperties$state_values;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/sysprop/CryptoProperties$state_values;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/sysprop/CryptoProperties$state_values;->$VALUES:[Landroid/sysprop/CryptoProperties$state_values;

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

    iput-object p3, p0, Landroid/sysprop/CryptoProperties$state_values;->propValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/sysprop/CryptoProperties$state_values;
    .registers 2

    const-class v0, Landroid/sysprop/CryptoProperties$state_values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/sysprop/CryptoProperties$state_values;

    return-object v0
.end method

.method public static values()[Landroid/sysprop/CryptoProperties$state_values;
    .registers 1

    sget-object v0, Landroid/sysprop/CryptoProperties$state_values;->$VALUES:[Landroid/sysprop/CryptoProperties$state_values;

    invoke-virtual {v0}, [Landroid/sysprop/CryptoProperties$state_values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/sysprop/CryptoProperties$state_values;

    return-object v0
.end method


# virtual methods
.method public getPropValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/sysprop/CryptoProperties$state_values;->propValue:Ljava/lang/String;

    return-object v0
.end method
