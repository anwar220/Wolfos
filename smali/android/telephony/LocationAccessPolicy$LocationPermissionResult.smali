# classes3.dex

.class public final enum Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/LocationAccessPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationPermissionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

.field public static final enum ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

.field public static final enum DENIED_HARD:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

.field public static final enum DENIED_SOFT:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    const-string v1, "ALLOWED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    new-instance v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    const-string v3, "DENIED_SOFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_SOFT:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    new-instance v3, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    const-string v5, "DENIED_HARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->DENIED_HARD:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->$VALUES:[Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

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

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    .registers 2

    const-class v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0
.end method

.method public static values()[Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;
    .registers 1

    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->$VALUES:[Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    invoke-virtual {v0}, [Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    return-object v0
.end method
