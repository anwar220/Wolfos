# classes3.dex

.class public final enum Landroid/os/SystemService$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/SystemService$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/SystemService$State;

.field public static final enum RESTARTING:Landroid/os/SystemService$State;

.field public static final enum RUNNING:Landroid/os/SystemService$State;

.field public static final enum STOPPED:Landroid/os/SystemService$State;

.field public static final enum STOPPING:Landroid/os/SystemService$State;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Landroid/os/SystemService$State;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    const-string/jumbo v3, "running"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    new-instance v1, Landroid/os/SystemService$State;

    const-string v3, "STOPPING"

    const/4 v4, 0x1

    const-string/jumbo v5, "stopping"

    invoke-direct {v1, v3, v4, v5}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroid/os/SystemService$State;->STOPPING:Landroid/os/SystemService$State;

    new-instance v3, Landroid/os/SystemService$State;

    const-string v5, "STOPPED"

    const/4 v6, 0x2

    const-string/jumbo v7, "stopped"

    invoke-direct {v3, v5, v6, v7}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    new-instance v5, Landroid/os/SystemService$State;

    const-string v7, "RESTARTING"

    const/4 v8, 0x3

    const-string/jumbo v9, "restarting"

    invoke-direct {v5, v7, v8, v9}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Landroid/os/SystemService$State;->RESTARTING:Landroid/os/SystemService$State;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/os/SystemService$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/os/SystemService$State;->$VALUES:[Landroid/os/SystemService$State;

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

    invoke-static {}, Landroid/os/SystemService;->-$$Nest$sfgetsStates()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/SystemService$State;
    .registers 2

    const-class v0, Landroid/os/SystemService$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/SystemService$State;

    return-object v0
.end method

.method public static values()[Landroid/os/SystemService$State;
    .registers 1

    sget-object v0, Landroid/os/SystemService$State;->$VALUES:[Landroid/os/SystemService$State;

    invoke-virtual {v0}, [Landroid/os/SystemService$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/SystemService$State;

    return-object v0
.end method
