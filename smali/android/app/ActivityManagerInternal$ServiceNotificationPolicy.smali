# classes.dex

.class public final enum Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceNotificationPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

.field public static final enum NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

.field public static final enum SHOW_IMMEDIATELY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

.field public static final enum UPDATE_ONLY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    const-string v1, "NOT_FOREGROUND_SERVICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    new-instance v1, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    const-string v3, "SHOW_IMMEDIATELY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->SHOW_IMMEDIATELY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    new-instance v3, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    const-string v5, "UPDATE_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->UPDATE_ONLY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->$VALUES:[Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

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

.method public static valueOf(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .registers 2

    const-class v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object v0
.end method

.method public static values()[Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .registers 1

    sget-object v0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->$VALUES:[Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    invoke-virtual {v0}, [Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object v0
.end method
